---
marp: true
math: mathjax
header: "marp sample slide"
paginate: true
style: |
  section{
    font-size: 38px;
  }
  strong {
    color: #F79428;
  }
  em {
    font-style: normal;
    color: #0B3E8D;
    font-weight: bold;
  }
  h1 {
    font-size:48px;
    color: #0B3E8D;
  }
  h2 {
    font-size:48px;
    color: #0B3E8D;
    margin-bottom:-.2em;
  }
  h2 strong {
    font-size:48px;
    color: chocolate;
  }
  h3 {
    font-size:40px;
    color: #0B3E8D;
    margin-top:-.2em;
    margin-bottom:-.1em;
  }
  h3 strong {
    color: chocolate;
  }
  .columns {
    display: grid;
    grid-template-columns: repeat(2, minmax(0, 1fr));
    gap: 1rem;
  }
  .columns.var {
    display: grid;
    grid-template-columns: var(--ratio) 1fr;
    gap: 1rem;
  }
  .columns.spaced {
    display: grid;
    grid-template-columns: var(--ratio) 10% 1fr;
    gap: 1rem;
  }
  .gray {
    background: whitesmoke;
  }
  .theorem {
    background: whitesmoke;
    padding-top: 0.1em;
    padding-bottom: 0.1em;
    padding-left: 0.4em;
  }
  .statement {
    margin-top: -0.5em;
    padding-left: 0.7em;
  }
  .quote {
    background: whitesmoke;
    margin-left: 5%;
    margin-right: 5%;
    margin-bottom: 3%;
  }
  .quote.white {
    background: white;
  }
  .katex .delimcenter,
  .katex .op-symbol {
    display: inline-block;
  }
  .arrow {
    margin-top: auto;
    margin-bottom: auto;
    margin-left: auto;
    margin-right: auto;
    width: 0;
    height: 0;
  }
  .arrow.right {
    border-top: 40px solid transparent;
    border-bottom: 40px solid transparent;
    border-left: 40px solid gray;
  }
  .arrow.down {
    border-left: 40px solid transparent;
    border-right: 40px solid transparent;
    border-top: 40px solid gray;
  }
  .arrow.up {
    border-left: 40px solid transparent;
    border-right: 40px solid transparent;
    border-bottom: 40px solid gray;
  }
  .center {
    margin-right: auto;
    margin-left: auto;
    text-align: center;
        font-size: 28px;
  }
  .middle {
    margin-top: auto;
    margin-bottom: auto;
  }
  .large {
    font-size: 28pt;
  }
  .hline {
    margin-top:20px;
    margin-bottom:20px;
    margin-left: 0%;
    margin-right: 0%;
    width: 1fr;
    height: 0;
    border-top: 2px solid gray;
  }
  .vline {
    margin-top:0%;
    margin-bottom:0%;
    margin-left: 20px;
    margin-right: 20px;
    width: 0;
    height: 1fr;
    border-left: 2px solid gray;
  }
  .shade {
    width: 1fr;
    background: white;
    opacity: 0.7;
  }
  .white {
    width: 1fr;
    background: white;
  }
  .split{
    display: table;
  }
  .split-item {
    display: table-cell;
    padding: 0px;
  }
  .split-left {
    position: fixed;
  }
  .split-midRight {
    position: fixed;
    right: 12.5%;
  }
  .split-right {
    position: fixed;
    right: 0;
  }
---

# sample slide

#### camellian
