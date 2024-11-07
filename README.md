# RememberMe - Inspirational Quotes App

<img src="/RememberMe/Assets.xcassets/AppIcon.appiconset/logo.png" width="120" height="120">

RememberMe is a simple iOS app that allows users to collect, store, and view motivational quotes. It features an elegant and intuitive interface with support for light and dark modes. Users can easily add their own quotes and shuffle through the collection for fresh inspiration every time.

## Overview

RememberMe is designed to inspire you with a collection of hand-picked quotes, along with the ability to add your own. Whether you're looking for daily motivation or want to keep your favorite quotes saved for later, this app has got you covered. The app offers a smooth, scrollable experience, and your quotes are preserved locally on your device.

## Features

- **View Motivational Quotes**: Read a variety of inspirational quotes to stay motivated.
- **Add Custom Quotes**: Easily add your own quotes to the collection.
- **Dark Mode**: Switch between light and dark modes for a better viewing experience.
- **Smooth Scrolling Experience**: Quotes are displayed in a smooth, scrollable list, with paging support for a seamless user experience.
- **Quote Shuffling**: Quotes are shuffled each time you open the app, keeping the inspiration fresh.
- **Persistent Storage**: Quotes are saved locally using `UserDefaults`, so your collection is preserved between app launches.

## Getting Started

To run the RememberMe app, follow these steps:

1. Open the Xcode project file (`RememberMe.xcodeproj`) in Xcode.
2. Build and run the app on a simulator or physical device.

## Project Structure

The project is organized as follows:

- **RememberMeApp.swift**: The entry point of the app, where the initial setup and the main view are defined.
- **QuoteView.swift**: The main view that displays the quotes in a smooth, scrollable list with support for dark mode and paging.
- **QuoteViewModel.swift**: Manages the logic for storing, adding, and shuffling the quotes.
- **QuoteModel.swift**: Defines the `Quote` model, which represents a quote with a unique ID and text.
- **AddQuoteView.swift**: A view for adding new quotes, where users can input text and save it.
- **ColorTheme.swift**: Manages the color theme (light or dark mode) for the app.
