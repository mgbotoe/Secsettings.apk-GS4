.class public Lcom/android/settings/homesync/FileOperationProgress;
.super Landroid/app/Fragment;
.source "FileOperationProgress.java"


# static fields
.field public static cancelButton:Landroid/widget/Button;

.field public static filenameView:Landroid/widget/TextView;

.field private static fop:Lcom/android/settings/homesync/FileOperationPaste;

.field private static mAccountName:Ljava/lang/String;

.field private static mRequestType:Lcom/android/settings/homesync/FileOperationPaste$RequestType;

.field public static messageView:Landroid/widget/TextView;

.field public static perFilePercentageView:Landroid/widget/TextView;

.field private static rootView:Landroid/view/View;

.field public static titleView:Landroid/widget/TextView;

.field public static totalNumberView:Landroid/widget/TextView;

.field public static totalPercentageView:Landroid/widget/TextView;

.field public static totalProgressBarView:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 54
    sput-object v0, Lcom/android/settings/homesync/FileOperationProgress;->rootView:Landroid/view/View;

    .line 67
    sput-object v0, Lcom/android/settings/homesync/FileOperationProgress;->fop:Lcom/android/settings/homesync/FileOperationPaste;

    .line 68
    sget-object v0, Lcom/android/settings/homesync/FileOperationPaste$RequestType;->None:Lcom/android/settings/homesync/FileOperationPaste$RequestType;

    sput-object v0, Lcom/android/settings/homesync/FileOperationProgress;->mRequestType:Lcom/android/settings/homesync/FileOperationPaste$RequestType;

    .line 69
    const-string v0, ""

    sput-object v0, Lcom/android/settings/homesync/FileOperationProgress;->mAccountName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/android/settings/homesync/FileOperationPaste;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/settings/homesync/FileOperationProgress;->fop:Lcom/android/settings/homesync/FileOperationPaste;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/homesync/FileOperationProgress;Landroid/content/Context;IIJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 51
    invoke-direct/range {p0 .. p5}, Lcom/android/settings/homesync/FileOperationProgress;->makeNotification(Landroid/content/Context;IIJ)V

    return-void
.end method

.method private getTodayName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 251
    const-string v0, "yyyy-MM-dd"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private makeNotification(Landroid/content/Context;IIJ)V
    .locals 6
    .parameter "context"
    .parameter "resId"
    .parameter "iconResId"
    .parameter "totalSize"

    .prologue
    .line 369
    const-string v2, ""

    .line 370
    .local v2, notiTitle:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 372
    new-instance v3, Landroid/app/Notification$Builder;

    invoke-direct {v3, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1, p4, p5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 378
    .local v0, notiBuilder:Landroid/app/Notification$Builder;
    const-string v3, "notification"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 380
    .local v1, notiManager:Landroid/app/NotificationManager;
    const/16 v3, 0x458

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 381
    return-void
.end method


# virtual methods
.method createDialog(I)Landroid/app/AlertDialog;
    .locals 4
    .parameter "resId"

    .prologue
    .line 354
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/homesync/FileOperationProgress;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 355
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090ada

    new-instance v3, Lcom/android/settings/homesync/FileOperationProgress$4;

    invoke-direct {v3, p0}, Lcom/android/settings/homesync/FileOperationProgress$4;-><init>(Lcom/android/settings/homesync/FileOperationProgress;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 362
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 73
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/homesync/FileOperationProgress;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 80
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 81
    const-string v2, "request_type"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 82
    .local v1, req:I
    if-nez v1, :cond_2

    .line 83
    sget-object v2, Lcom/android/settings/homesync/FileOperationPaste$RequestType;->Backup:Lcom/android/settings/homesync/FileOperationPaste$RequestType;

    sput-object v2, Lcom/android/settings/homesync/FileOperationProgress;->mRequestType:Lcom/android/settings/homesync/FileOperationPaste$RequestType;

    .line 87
    :cond_0
    :goto_0
    const-string v2, "account_name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/settings/homesync/FileOperationProgress;->mAccountName:Ljava/lang/String;

    .line 89
    .end local v1           #req:I
    :cond_1
    return-void

    .line 84
    .restart local v1       #req:I
    :cond_2
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 85
    sget-object v2, Lcom/android/settings/homesync/FileOperationPaste$RequestType;->Restore:Lcom/android/settings/homesync/FileOperationPaste$RequestType;

    sput-object v2, Lcom/android/settings/homesync/FileOperationProgress;->mRequestType:Lcom/android/settings/homesync/FileOperationPaste$RequestType;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 114
    const v2, 0x7f04008e

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    sput-object v2, Lcom/android/settings/homesync/FileOperationProgress;->rootView:Landroid/view/View;

    .line 116
    new-instance v1, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/homesync/FileOperationProgress;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 117
    .local v1, preference:Landroid/preference/Preference;
    invoke-virtual {v1}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 119
    .local v0, i:Landroid/content/Intent;
    sget-object v2, Lcom/android/settings/homesync/FileOperationProgress;->rootView:Landroid/view/View;

    const v3, 0x7f0b01a5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sput-object v2, Lcom/android/settings/homesync/FileOperationProgress;->titleView:Landroid/widget/TextView;

    .line 120
    sget-object v2, Lcom/android/settings/homesync/FileOperationProgress;->rootView:Landroid/view/View;

    const v3, 0x7f0b01a6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sput-object v2, Lcom/android/settings/homesync/FileOperationProgress;->messageView:Landroid/widget/TextView;

    .line 121
    sget-object v2, Lcom/android/settings/homesync/FileOperationProgress;->rootView:Landroid/view/View;

    const v3, 0x7f0b01a7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sput-object v2, Lcom/android/settings/homesync/FileOperationProgress;->filenameView:Landroid/widget/TextView;

    .line 124
    sget-object v2, Lcom/android/settings/homesync/FileOperationProgress;->rootView:Landroid/view/View;

    const v3, 0x7f0b01a8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sput-object v2, Lcom/android/settings/homesync/FileOperationProgress;->perFilePercentageView:Landroid/widget/TextView;

    .line 125
    sget-object v2, Lcom/android/settings/homesync/FileOperationProgress;->rootView:Landroid/view/View;

    const v3, 0x7f0b01a9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    sput-object v2, Lcom/android/settings/homesync/FileOperationProgress;->totalProgressBarView:Landroid/widget/ProgressBar;

    .line 126
    sget-object v2, Lcom/android/settings/homesync/FileOperationProgress;->rootView:Landroid/view/View;

    const v3, 0x7f0b01aa

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sput-object v2, Lcom/android/settings/homesync/FileOperationProgress;->totalNumberView:Landroid/widget/TextView;

    .line 127
    sget-object v2, Lcom/android/settings/homesync/FileOperationProgress;->rootView:Landroid/view/View;

    const v3, 0x7f0b01ab

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sput-object v2, Lcom/android/settings/homesync/FileOperationProgress;->totalPercentageView:Landroid/widget/TextView;

    .line 129
    sget-object v2, Lcom/android/settings/homesync/FileOperationProgress;->rootView:Landroid/view/View;

    const v3, 0x7f0b01ac

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    sput-object v2, Lcom/android/settings/homesync/FileOperationProgress;->cancelButton:Landroid/widget/Button;

    .line 130
    sget-object v2, Lcom/android/settings/homesync/FileOperationProgress;->cancelButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/settings/homesync/FileOperationProgress$1;

    invoke-direct {v3, p0}, Lcom/android/settings/homesync/FileOperationProgress$1;-><init>(Lcom/android/settings/homesync/FileOperationProgress;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    sget-object v2, Lcom/android/settings/homesync/FileOperationProgress;->rootView:Landroid/view/View;

    return-object v2
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 93
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 95
    invoke-static {}, Lcom/android/settings/homesync/FileOperation;->getOpStatus()Lcom/android/settings/homesync/FileOperation$OpStatus;

    move-result-object v0

    sget-object v1, Lcom/android/settings/homesync/FileOperation$OpStatus;->RUNNING:Lcom/android/settings/homesync/FileOperation$OpStatus;

    if-ne v0, v1, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    invoke-static {}, Lcom/android/settings/homesync/FileOperation;->getOpStatus()Lcom/android/settings/homesync/FileOperation$OpStatus;

    move-result-object v0

    sget-object v1, Lcom/android/settings/homesync/FileOperation$OpStatus;->FINISHED:Lcom/android/settings/homesync/FileOperation$OpStatus;

    if-ne v0, v1, :cond_3

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/homesync/FileOperationProgress;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/homesync/FileOperationProgress;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 102
    :cond_2
    sget-object v0, Lcom/android/settings/homesync/FileOperation$OpStatus;->NONE:Lcom/android/settings/homesync/FileOperation$OpStatus;

    invoke-static {v0}, Lcom/android/settings/homesync/FileOperation;->setOpStatus(Lcom/android/settings/homesync/FileOperation$OpStatus;)V

    goto :goto_0

    .line 106
    :cond_3
    sget-object v0, Lcom/android/settings/homesync/FileOperationProgress;->mRequestType:Lcom/android/settings/homesync/FileOperationPaste$RequestType;

    sget-object v1, Lcom/android/settings/homesync/FileOperationPaste$RequestType;->Backup:Lcom/android/settings/homesync/FileOperationPaste$RequestType;

    if-ne v0, v1, :cond_4

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/homesync/FileOperationProgress;->startBackup()V

    goto :goto_0

    .line 108
    :cond_4
    sget-object v0, Lcom/android/settings/homesync/FileOperationProgress;->mRequestType:Lcom/android/settings/homesync/FileOperationPaste$RequestType;

    sget-object v1, Lcom/android/settings/homesync/FileOperationPaste$RequestType;->Restore:Lcom/android/settings/homesync/FileOperationPaste$RequestType;

    if-ne v0, v1, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/homesync/FileOperationProgress;->startRestore()V

    goto :goto_0
.end method

.method public startBackup()V
    .locals 20

    .prologue
    .line 142
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/homesync/FileOperationProgress;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    .line 143
    .local v8, args:Landroid/os/Bundle;
    const-string v1, "is_shared_checked"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 144
    .local v13, isSharedChecked:Ljava/lang/Boolean;
    const-string v1, "is_personal_checked"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 145
    .local v11, isPersonalChecked:Ljava/lang/Boolean;
    const-string v1, "is_private_checked"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    .line 147
    .local v12, isPrivateChecked:Ljava/lang/Boolean;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/homesync/FileOperationProgress;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/homesync/StorageUtil;->getBackupVolume(Landroid/content/Context;)Landroid/os/storage/StorageVolume;

    move-result-object v18

    .line 148
    .local v18, mStorageVolume:Landroid/os/storage/StorageVolume;
    if-nez v18, :cond_0

    .line 150
    sget-object v1, Lcom/android/settings/homesync/FileOperationProgress;->titleView:Landroid/widget/TextView;

    const v2, 0x7f0914c2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 248
    :goto_0
    return-void

    .line 153
    :cond_0
    const-string v14, "HomeSync_Backup"

    .line 155
    .local v14, mDestDirectoryName:Ljava/lang/String;
    const-string v17, "/sdcard/HomeSync/"

    .line 156
    .local v17, mSharedSourcePrefix:Ljava/lang/String;
    const-string v15, ""

    .line 157
    .local v15, mPersonalSourcePrefix:Ljava/lang/String;
    const-string v16, ""

    .line 160
    .local v16, mPrivateSourcePrefix:Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .local v5, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;>;"
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v18 .. v18}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/homesync/FileOperationProgress;->mAccountName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/homesync/FileOperationProgress;->getTodayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Shared/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 167
    .local v9, destPath:Ljava/lang/String;
    new-instance v1, Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Music"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Music"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;->Flat:Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;)V

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    new-instance v1, Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Video"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Video"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;->Flat:Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;)V

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    new-instance v1, Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Photo"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Photo"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;->Flat:Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;)V

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    new-instance v1, Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Documents"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Documents"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;->Flat:Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;)V

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    new-instance v1, Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Files"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Files"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;->Flat:Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;)V

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    .end local v9           #destPath:Ljava/lang/String;
    :cond_1
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/secdata/Userdir/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/homesync/FileOperationProgress;->mAccountName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Personal/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v18 .. v18}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/homesync/FileOperationProgress;->mAccountName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/homesync/FileOperationProgress;->getTodayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Personal/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 185
    .restart local v9       #destPath:Ljava/lang/String;
    new-instance v1, Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;

    sget-object v2, Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;->FlatAndPrivate:Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;

    invoke-direct {v1, v15, v9, v2}, Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;)V

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    .end local v9           #destPath:Ljava/lang/String;
    :cond_2
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/secdata/Userdir/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/homesync/FileOperationProgress;->mAccountName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Private/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v18 .. v18}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/homesync/FileOperationProgress;->mAccountName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/homesync/FileOperationProgress;->getTodayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Private/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 197
    .restart local v9       #destPath:Ljava/lang/String;
    new-instance v1, Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;

    sget-object v2, Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;->NeedToDecrypt:Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;

    move-object/from16 v0, v16

    invoke-direct {v1, v0, v9, v2}, Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;)V

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    .end local v9           #destPath:Ljava/lang/String;
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;

    .line 203
    .local v19, oneInfo:Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;
    const-string v1, "FileOperationProgress"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;->type:Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;->sourcePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;->destPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 207
    .end local v19           #oneInfo:Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;
    :cond_4
    new-instance v1, Lcom/android/settings/homesync/FileOperationProgress$2;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/homesync/FileOperationProgress;->getActivity()Landroid/app/Activity;

    move-result-object v3

    sget-object v6, Lcom/android/settings/homesync/FileOperationPaste$PasteType;->OverwriteAll:Lcom/android/settings/homesync/FileOperationPaste$PasteType;

    sget-object v7, Lcom/android/settings/homesync/FileOperationPaste$RequestType;->Backup:Lcom/android/settings/homesync/FileOperationPaste$RequestType;

    move-object/from16 v2, p0

    move-object/from16 v4, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/homesync/FileOperationProgress$2;-><init>(Lcom/android/settings/homesync/FileOperationProgress;Landroid/app/Activity;Lcom/android/settings/homesync/FileOperationProgress;Ljava/util/ArrayList;Lcom/android/settings/homesync/FileOperationPaste$PasteType;Lcom/android/settings/homesync/FileOperationPaste$RequestType;)V

    sput-object v1, Lcom/android/settings/homesync/FileOperationProgress;->fop:Lcom/android/settings/homesync/FileOperationPaste;

    .line 245
    sget-object v1, Lcom/android/settings/homesync/FileOperationProgress;->fop:Lcom/android/settings/homesync/FileOperationPaste;

    sget-object v2, Lcom/android/settings/homesync/FileOperationProgress;->mAccountName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/settings/homesync/FileOperationPaste;->setAccountName(Ljava/lang/String;)V

    .line 246
    sget-object v1, Lcom/android/settings/homesync/FileOperationProgress;->fop:Lcom/android/settings/homesync/FileOperationPaste;

    invoke-virtual {v1}, Lcom/android/settings/homesync/FileOperationPaste;->execute()V

    goto/16 :goto_0
.end method

.method public startRestore()V
    .locals 21

    .prologue
    .line 256
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/homesync/FileOperationProgress;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/homesync/StorageUtil;->getBackupVolume(Landroid/content/Context;)Landroid/os/storage/StorageVolume;

    move-result-object v16

    .line 257
    .local v16, mStorageVolume:Landroid/os/storage/StorageVolume;
    if-nez v16, :cond_0

    .line 259
    sget-object v2, Lcom/android/settings/homesync/FileOperationProgress;->titleView:Landroid/widget/TextView;

    const v3, 0x7f0914c2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 351
    :goto_0
    return-void

    .line 263
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/homesync/FileOperationProgress;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    .line 265
    .local v9, args:Landroid/os/Bundle;
    const-string v14, "/sdcard/HomeSync/"

    .line 266
    .local v14, mSharedDestPrefix:Ljava/lang/String;
    const-string v12, ""

    .line 267
    .local v12, mPersonalDestPrefix:Ljava/lang/String;
    const-string v13, ""

    .line 268
    .local v13, mPrivateDestPrefix:Ljava/lang/String;
    const-string v15, "HomeSync_Backup"

    .line 269
    .local v15, mSourceDirectoryName:Ljava/lang/String;
    const-string v2, "date_folder_name"

    invoke-virtual {v9, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 270
    .local v11, mDestDateName:Ljava/lang/String;
    sget-object v7, Lcom/android/settings/homesync/FileOperationPaste$PasteType;->OverwriteAll:Lcom/android/settings/homesync/FileOperationPaste$PasteType;

    .line 271
    .local v7, mPasteType:Lcom/android/settings/homesync/FileOperationPaste$PasteType;
    const-string v2, "paste_type"

    invoke-virtual {v9, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v18

    .line 272
    .local v18, pasteType:I
    if-nez v18, :cond_5

    .line 273
    sget-object v7, Lcom/android/settings/homesync/FileOperationPaste$PasteType;->OverwriteAll:Lcom/android/settings/homesync/FileOperationPaste$PasteType;

    .line 279
    :cond_1
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/settings/homesync/FileOperationProgress;->mAccountName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 281
    .local v19, sourceDirPath:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/secdata/Userdir/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/settings/homesync/FileOperationProgress;->mAccountName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/Personal/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 282
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/secdata/Userdir/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/settings/homesync/FileOperationProgress;->mAccountName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/Private/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 284
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 286
    .local v6, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;>;"
    new-instance v20, Ljava/io/File;

    const-string v2, "Shared"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    .local v20, sourceFile:Ljava/io/File;
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 288
    new-instance v2, Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;->Flat:Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;

    invoke-direct {v2, v3, v14, v4}, Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;)V

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    :cond_2
    new-instance v20, Ljava/io/File;

    .end local v20           #sourceFile:Ljava/io/File;
    const-string v2, "Personal"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    .restart local v20       #sourceFile:Ljava/io/File;
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 294
    new-instance v2, Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;->FlatAndPrivate:Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;

    invoke-direct {v2, v3, v12, v4}, Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;)V

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    :cond_3
    new-instance v20, Ljava/io/File;

    .end local v20           #sourceFile:Ljava/io/File;
    const-string v2, "Private"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    .restart local v20       #sourceFile:Ljava/io/File;
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 300
    new-instance v2, Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;->NeedToEncrypt:Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;

    invoke-direct {v2, v3, v13, v4}, Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;)V

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    :cond_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;

    .line 305
    .local v17, oneInfo:Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;
    const-string v2, "FileOperationProgress"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;->type:Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;->sourcePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;->destPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 274
    .end local v6           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;>;"
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v17           #oneInfo:Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;
    .end local v19           #sourceDirPath:Ljava/lang/String;
    .end local v20           #sourceFile:Ljava/io/File;
    :cond_5
    const/4 v2, 0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_6

    .line 275
    sget-object v7, Lcom/android/settings/homesync/FileOperationPaste$PasteType;->SkipAll:Lcom/android/settings/homesync/FileOperationPaste$PasteType;

    goto/16 :goto_1

    .line 276
    :cond_6
    const/4 v2, 0x2

    move/from16 v0, v18

    if-ne v0, v2, :cond_1

    .line 277
    sget-object v7, Lcom/android/settings/homesync/FileOperationPaste$PasteType;->SelectNewer:Lcom/android/settings/homesync/FileOperationPaste$PasteType;

    goto/16 :goto_1

    .line 308
    .restart local v6       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;>;"
    .restart local v10       #i$:Ljava/util/Iterator;
    .restart local v19       #sourceDirPath:Ljava/lang/String;
    .restart local v20       #sourceFile:Ljava/io/File;
    :cond_7
    new-instance v2, Lcom/android/settings/homesync/FileOperationProgress$3;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/homesync/FileOperationProgress;->getActivity()Landroid/app/Activity;

    move-result-object v4

    sget-object v8, Lcom/android/settings/homesync/FileOperationPaste$RequestType;->Restore:Lcom/android/settings/homesync/FileOperationPaste$RequestType;

    move-object/from16 v3, p0

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/settings/homesync/FileOperationProgress$3;-><init>(Lcom/android/settings/homesync/FileOperationProgress;Landroid/app/Activity;Lcom/android/settings/homesync/FileOperationProgress;Ljava/util/ArrayList;Lcom/android/settings/homesync/FileOperationPaste$PasteType;Lcom/android/settings/homesync/FileOperationPaste$RequestType;)V

    sput-object v2, Lcom/android/settings/homesync/FileOperationProgress;->fop:Lcom/android/settings/homesync/FileOperationPaste;

    .line 348
    sget-object v2, Lcom/android/settings/homesync/FileOperationProgress;->fop:Lcom/android/settings/homesync/FileOperationPaste;

    sget-object v3, Lcom/android/settings/homesync/FileOperationProgress;->mAccountName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/settings/homesync/FileOperationPaste;->setAccountName(Ljava/lang/String;)V

    .line 349
    sget-object v2, Lcom/android/settings/homesync/FileOperationProgress;->fop:Lcom/android/settings/homesync/FileOperationPaste;

    invoke-virtual {v2}, Lcom/android/settings/homesync/FileOperationPaste;->execute()V

    goto/16 :goto_0
.end method
