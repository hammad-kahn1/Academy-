# Quaid Academy Management Web Application

A comprehensive academy management platform built with Flutter, featuring:

- **Student Portal**: QR code-based authentication, fee tracking, attendance monitoring
- **Teacher Portal**: Subject management, class scheduling, fee tracking
- **Admin Dashboard**: Student/teacher management, finance, notifications, analytics
- **Hybrid Backend**: Firebase Auth/Firestore + Supabase PostgreSQL integration
- **Push Notifications**: FCM-based real-time alerts for fee reminders, announcements, attendance

## Technology Stack

- **Framework**: Flutter 3.x
- **Database**: Firebase Firestore (NoSQL) + Supabase PostgreSQL (Relational)
- **Auth**: Firebase Authentication + Supabase Auth
- **State Management**: Provider
- **Local Storage**: Hive DB
- **Build**: Flutter Web → Vercel deployment

## Deployment

This project is configured for Vercel deployment with:
- `vercel.json` - Vercel configuration with Flutter web build
- Firestore security rules with role-based access control
- Supabase environment variables required (`SUPABASE_ANON_KEY`)

## Prerequisites

- `SUPABASE_ANON_KEY` environment variable must be set in Vercel dashboard
- Firebase project configuration (embedded in `firebase_options.dart`)

## Features

- Student login with QR code + Student ID two-factor authentication
- Teacher role verification and class management
- Admin dashboard with finance, students, teachers, settings
- Fee payment tracking and reminders
- Attendance tracking with percentage calculations
- Timetable and schedule management
- Push notification system for announcements and reminders
- Student device binding and one-device policy
- Bulk student registration and authentication
- Teacher payout and salary ledger
- Audit logging for all operations