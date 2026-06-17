# 個人作品集網站專案規劃文件

## 一、projects.json 範例資料結構

```json
[
  {
    "id": 1,
    "slug": "ecommerce-dashboard",
    "title": "電商後台管理系統",
    "subtitle": "Vue 3 + Node.js 全端專案",
    "coverImage": "/images/projects/ecommerce-dashboard.webp",
    "category": "Full Stack",
    "tags": ["Vue 3", "Node.js", "MongoDB", "TailwindCSS"],
    "year": "2025",
    "featured": true,
    "summary": "提供商品管理、訂單追蹤與會員分析功能。",
    "seo": {
      "title": "電商後台管理系統｜全端開發作品集",
      "description": "使用 Vue 3、Node.js 與 MongoDB 建置的電商後台管理系統。",
      "keywords": ["Vue", "Node.js", "Dashboard", "Portfolio"]
    },
    "star": {
      "situation": "客戶需要集中管理商品與訂單資料。",
      "task": "打造高效能且易於維護的管理平台。",
      "action": "採用 Vue 3、Node.js、REST API 與 JWT 驗證機制。",
      "result": "後台操作效率提升 40%，頁面載入時間縮短至 1 秒內。"
    },
    "links": {
      "demo": "https://demo.example.com",
      "github": "https://github.com/username/project"
    }
  }
]
```

---

## 二、SEO 優化 Vue 作品卡片元件

```vue
<template>
  <article
    class="group relative rounded-2xl border border-stone-200 bg-white p-4 transition-all duration-300 hover:-translate-y-1 hover:shadow-xl"
    itemscope
    itemtype="https://schema.org/CreativeWork"
  >
    <NuxtLink
      :to="`/projects/${project.slug}`"
      :aria-label="project.title"
    >
      <img
        :src="project.coverImage"
        :alt="project.title"
        class="aspect-video w-full rounded-xl object-cover"
        loading="lazy"
        itemprop="image"
      />

      <div class="mt-4">
        <p class="text-sm text-stone-500">
          {{ project.category }}
        </p>

        <h3
          class="mt-2 text-xl font-semibold text-stone-800"
          itemprop="headline"
        >
          {{ project.title }}
        </h3>

        <p
          class="mt-2 text-stone-600 line-clamp-3"
          itemprop="description"
        >
          {{ project.summary }}
        </p>

        <div class="mt-4 flex flex-wrap gap-2">
          <span
            v-for="tag in project.tags"
            :key="tag"
            class="rounded-full bg-stone-100 px-3 py-1 text-xs"
          >
            {{ tag }}
          </span>
        </div>
      </div>
    </NuxtLink>
  </article>
</template>

<script setup lang="ts">
defineProps({
  project: {
    type: Object,
    required: true
  }
})
</script>
```

### SEO 加分項目

- 使用語意化 article 標籤
- Lazy Loading 圖片
- 結構化資料 Schema.org
- Alt 圖片描述
- SEO Friendly URL (`/projects/[slug]`)
- Open Graph Meta Tags
- Sitemap 自動生成

---

## 三、Nuxt.js 部署至 Vercel 詳細步驟

### Step 1：建立 Nuxt 專案

```bash
npx nuxi@latest init my-portfolio
cd my-portfolio
npm install
```

### Step 2：安裝 Tailwind CSS

```bash
npm install -D @nuxtjs/tailwindcss
```

nuxt.config.ts

```ts
export default defineNuxtConfig({
  modules: ['@nuxtjs/tailwindcss']
})
```

### Step 3：建立 Git Repository

```bash
git init
git add .
git commit -m "Initial Portfolio MVP"
```

### Step 4：推送至 GitHub

```bash
git remote add origin https://github.com/yourname/my-portfolio.git
git branch -M main
git push -u origin main
```

### Step 5：登入 Vercel

1. 前往 https://vercel.com
2. 使用 GitHub 帳號登入
3. 點擊 New Project
4. 匯入 GitHub Repository

### Step 6：部署設定

Framework Preset:

```text
Nuxt.js
```

Build Command:

```text
npm run build
```

Output Directory:

```text
.nuxt
```

### Step 7：設定網域

1. Dashboard → Settings
2. Domains
3. 綁定自訂網域

### Step 8：SEO 驗證

- Google Search Console
- Sitemap 提交
- robots.txt
- Open Graph 測試
- Lighthouse 效能檢測

### Step 9：效能最佳化

- 圖片轉 WebP
- SVG 壓縮
- Route Level Code Splitting
- Nuxt Image Module
- ISR / Edge Cache

---

## 四、網站核心文案

### Hero Section

> 用藝術的筆觸，構築嚴謹的程式邏輯。  
> 我是一名全端開發者，致力於將複雜需求轉化為直覺且具美感的體驗。

### About Me

熱衷於將設計思維帶入工程實作。雖然擁有 0.5 年開發經驗，但我深信技術的價值來自於對使用者體驗的細膩觀察。

### STAR 作品案例模板

#### Situation

描述專案背景與使用者痛點。

#### Task

定義專案目標與需求。

#### Action

說明技術棧、架構設計與解決方案。

#### Result

量化成果與實際效益。

---

## 五、建議 MVP 優先順序

1. 首頁 Hero + About
2. Projects 列表頁
3. Project 詳細頁
4. Contact 頁面
5. SEO 設定
6. Vercel 部署
7. Google Search Console
8. 效能優化
