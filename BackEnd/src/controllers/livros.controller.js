import { db } from "../config/db.js";

export async function criarLivro(req, res) {
  try {
    const { nome, genero, autor, editora, idioma, sinopse } = req.body;
    if (!nome || !genero || !autor || !editora || !idioma || !sinopse)
      return res.status(400).json({ erro: "Campos obrigatórios" });

    await db.execute(
      "INSERT INTO livros (nome, genero, autor, editora, idioma, sinopse) VALUES (?, ?, ?, ?, ?, ?)",
      [nome, genero, autor, editora, idioma, sinopse]
    );

    res.json({ mensagem: "Livro adicionado ao banco!" });
  } catch (err) {
    res.status(500).json({ erro: err.message });
  }
};


export async function listarLivro(req, res) {
  try {
    const [rows] = await db.execute("SELECT * FROM livros");
    res.json(rows);
  } catch (err) {
    res.status(500).json({ erro: err.message });
  }
};


export async function buscarLivro(req, res) {
  try {
    const [rows] = await db.execute("SELECT * FROM livros WHERE id = ?", [
      req.params.id,
    ]);
    if (rows.length === 0)
      return res.status(404).json({ erro: "Livro não encontrado" });
    res.json(rows[0]);
  } catch (err) {
    res.status(500).json({ erro: err.message });
  }
};

export async function atualizarLivro(req, res) {
  try {
    const { nome, genero} = req.body;
    await db.execute(
      "UPDATE livros SET nome = ?, genero = ? WHERE id = ?",
      [nome, genero, req.params.id]
    );
    res.json({ mensagem: "Dados do livro atualizados!" });
  } catch (err) {
    res.status(500).json({ erro: err.message });
  }
};


export async function excluirLivro(req, res) {
  try {
    await db.execute("DELETE FROM livros WHERE id = ?", [req.params.id]);
    res.json({ mensagem: "Livro deletado com sucesso!" });
  } catch (err) {
    res.status(500).json({ erro: err.message });
  }
};
