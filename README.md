# Next.js Starter Template

## 🚀 Overview

This is a Next.js starter template that comes preconfigured with essential tools to streamline development. It includes:

- **Docker Compose** for quickly spinning up a local MongoDB database and Next.js app.
- **ShadCN and TailwindCSS** for modern UI components and styling.
- **Prisma ORM** for database queries, preconfigured for MongoDB (but easily swappable to other databases).

## 📦 Features

- ✅ **Next.js** with App Router and API routes support
- ✅ **Docker Compose** to quickly start a local MongoDB instance
- ✅ **TailwindCSS** for styling and utility classes
- ✅ **ShadCN** UI components for rapid UI development
- ✅ **Prisma ORM** preconfigured with MongoDB (easily switchable to PostgreSQL, MySQL, etc.)
- ✅ **ESLint & Prettier** for code quality and formatting

## 🛠️ Installation & Setup

### 1. Clone the Repository

```sh
git clone https://github.com/softservesoftware/nextjs-starter
cd nextjs-starter
```

### 2. Install Dependencies

#### Node Version Manager (nvm) & Node.js

This is a great tool for managing different versions of Node.js on a single machine. It enables us to `nvm use 22`, `nvm install 20`, etc. so we can easily install or switch between node versions.

```sh
nvm --version
```

If that command returns an error, you'll need to install nvm. This is a great guide for installing nvm: [Node Version Manager Install Instructions](https://sukiphan.medium.com/how-to-install-nvm-node-version-manager-on-macos-d9fe432cc7db)

Once installed ensure you have the latest stable version of node installed (currently 22).
```sh
nvm install 22
```

#### Docker
Docker is a tool for running containers. It's what we use for running our mongo database locally. We recommend having the latest version of docker installed.

```sh
brew install docker
```

You can also follow the docker getting started guide here: [Docker Getting Started](https://www.docker.com/get-started/)

#### Install project dependencies

```sh
npm install
```


### 3. Start the Application
```sh
npm run dev
```
This will:
- Start a MongoDB instance in a Docker container
- Run the Next.js app locally

*Note* Ensure docker is installed and running on your machine.

### 4. Start building!
Thats all there is to it! You can now start building your app.


## 🗄️ Database Configuration (Prisma + MongoDB)
This starter template comes preconfigured with **Prisma ORM** for database queries. The default setup is for MongoDB, but you can easily switch to another database.

### Migrate Schema
Schema changes are automatically applied when you run `npm run dev`. Just note that if you make changes to the schema, you will need to run `npm run dev` again to apply the changes.

### GUI for DB Management
Mongodb Compass is a great tool for managing your database. You can download it [here](https://www.mongodb.com/try/download/compass).

## 🎨 UI with TailwindCSS + ShadCN
This template integrates **ShadCN UI** with **TailwindCSS** for a seamless styling experience. You can use prebuilt components and customize them easily.

To add new UI components, run:
```sh
npx shadcn-ui@latest add component-name
```
View the [ShadCN UI documentation](https://ui.shadcn.com/docs/components/accordion) for lists of components.

## 🔧 Configuration
- **Environment Variables** are stored in a `.env` file (see `.env.local` for reference)
- **ESLint & Prettier** are preconfigured to enforce code quality
- **Docker Compose** manages the database and Next.js container for easy setup

## 🏗️ Folder Structure
```
nextjs-starter/
│-- prisma/
│   ├── schema/
│       ├── example.prisma # Prisma schema and migrations
│       ├── config.prisma # Prisma config
│-- src/
│   ├── app/              # Next.js App Router pages
│   ├── components/       
│       ├── ui/           # ShadCN UI components
│   ├── lib/              # Utility functions
│-- docker-compose.yml    # Docker setup for MongoDB & app
│-- .env.local            # Example environment variables
│-- package.json          # Dependencies and scripts
│-- README.md             # Documentation
```

## 📜 Common Commands
| Command                  | Description |
|--------------------------|-------------|
| `npm run dev`            | Start development server |
| `npx shadcn-ui@latest add component-name` | Add ShadCN component |

## 📌 TODOs
- [ ] Add authentication (e.g., NextAuth.js)
- [ ] Expand example API routes & database models

## 📄 License
This project is licensed under the MIT License.

