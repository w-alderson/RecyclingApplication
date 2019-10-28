# RecyclingApplication

This is an app based on information supplied by the Bath and North East Somerset (BaNES) council regarding recycling collections.

## SwiftUI Views

> HomeView.swift </br>MapView.swift </br>ItemsList.swift </br>ItemListSingular.swift </br>CentreListSingular.swift </br>CentreList.swift </br>ItemView.swift

## HomeView.swift 

HomeView houses the tabs along the bottom of the display and calls ItemsList.swift and CentreList.swift based on user input.

## MapView.swift

MapView uses MapKit to display a map of the given recycling centre along with a pin.

## ItemsList.swift

Lists the items and uses NavigationView to allow users to tap on an item for more info.

## ItemListSingular.swift

Contains the template for an item in the list

## CentreListSingular.swift

Contains the template for the centre details, including name, image, address and map (generated using MapView)

## CentreList.swift

Lists the centres by centre name

## ItemView.swift

Contains details of the items that are to be recycled.

Note that all information about the centres and items which are to be recycled are stored on Centres.json and Items.json respectively. These are read by Data.Swift which nitialises two arrays, centreData and itemData, which are used throughout the application for data retrieval. 

Centres.swift and Items.swift contain structs with the relevant variables.
