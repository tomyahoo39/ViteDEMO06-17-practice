# 個人作品集網站專案規劃

## 1. 品牌定位與視覺設計
- **風格定位**：手繪藝術風 (Hand-drawn Artistic Style)
- **色調策略**：
  - 背景色：奶油白 (`#FFFDF5`)
  - 輔助色：莫蘭迪綠、陶土紅（低飽和度）
  - 文字色：深灰色 (`#333333`)
- **排版建議**：
  - 使用不規則 SVG 手繪邊框
  - 字體：標題採用手寫感襯線體 (如 `Lora`)，正文使用無襯線體 (如 `Inter`)

## 2. SEO 架構與關鍵字策略
- **網站結構 (Sitemap)**：
  - `/`：首頁（價值主張與亮點）
  - `/projects`：作品列表
  - `/projects/[slug]`：作品詳情頁
  - `/about`：關於我
  - `/contact`：聯絡頁
- **核心策略**：使用結構化資料 (Schema.org)、描述性 URL、Meta Tags 優化。

## 3. 頁面規劃 (STAR 架構)
- **作品詳情頁重點**：
  - **S (Situation)**：面臨的技術/商業挑戰。
  - **T (Task)**：目標與需求。
  - **A (Action)**：解決方案與技術細節。
  - **R (Result)**：量化成效。

## 4. 目錄結構管理
my-portfolio/
├── assets/             # 存放 SVG 手繪圖示、樣式
├── components/         # 可重用 UI 元件 (Button, Card)
├── data/               # 存放 projects.json
├── pages/              # 路由頁面 (index, projects, about, contact)
├── public/             # 靜態資源 (简历 PDF)
├── tailwind.config.js  # 樣式設定
├── nuxt.config.ts      # Nuxt 設定
└── package.json        # 依賴管理

## 5. 技術與效能建議
- **框架**：Nuxt.js (Vue) + Tailwind CSS
- **效能**：圖片 WebP 優化、SVG 壓縮、靜態部署 (Vercel/Netlify)。

## 6. 微互動 (Micro-interactions)
- 手繪邊框 Hover 抖動。
- 捲軸觸發鉛筆繪圖式動畫 (GSAP)。
- 按鈕筆觸點擊回饋。