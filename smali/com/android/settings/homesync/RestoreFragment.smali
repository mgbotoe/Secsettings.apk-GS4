.class public Lcom/android/settings/homesync/RestoreFragment;
.super Landroid/app/Fragment;
.source "RestoreFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homesync/RestoreFragment$CalculateDirectorySizeTask;,
        Lcom/android/settings/homesync/RestoreFragment$ViewHolder;,
        Lcom/android/settings/homesync/RestoreFragment$ListItem;,
        Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;
    }
.end annotation


# static fields
.field private static rootView:Landroid/view/View;


# instance fields
.field private backupList:Landroid/widget/ListView;

.field private list_info:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/homesync/RestoreFragment$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAccountName:Ljava/lang/String;

.field private mDestAvailSize:J

.field private mDestDateName:Ljava/lang/String;

.field private mNextButtonListener:Landroid/view/View$OnClickListener;

.field private mPasteType:I

.field private mSourceDirectoryName:Ljava/lang/String;

.field private mSourceTotalSize:J

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageVolume:Landroid/os/storage/StorageVolume;

.field private m_adapter:Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;

.field private startRestoreButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/homesync/RestoreFragment;->rootView:Landroid/view/View;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/homesync/RestoreFragment;->mAccountName:Ljava/lang/String;

    .line 84
    iput-object v1, p0, Lcom/android/settings/homesync/RestoreFragment;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 85
    iput-object v1, p0, Lcom/android/settings/homesync/RestoreFragment;->mStorageVolume:Landroid/os/storage/StorageVolume;

    .line 86
    const-string v0, "HomeSync_Backup"

    iput-object v0, p0, Lcom/android/settings/homesync/RestoreFragment;->mSourceDirectoryName:Ljava/lang/String;

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/homesync/RestoreFragment;->mDestDateName:Ljava/lang/String;

    .line 90
    iput-wide v2, p0, Lcom/android/settings/homesync/RestoreFragment;->mSourceTotalSize:J

    .line 91
    iput-wide v2, p0, Lcom/android/settings/homesync/RestoreFragment;->mDestAvailSize:J

    .line 92
    iput-object v1, p0, Lcom/android/settings/homesync/RestoreFragment;->m_adapter:Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;

    .line 93
    iput-object v1, p0, Lcom/android/settings/homesync/RestoreFragment;->backupList:Landroid/widget/ListView;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/homesync/RestoreFragment;->list_info:Ljava/util/ArrayList;

    .line 97
    iput-object v1, p0, Lcom/android/settings/homesync/RestoreFragment;->startRestoreButton:Landroid/widget/Button;

    .line 210
    new-instance v0, Lcom/android/settings/homesync/RestoreFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/homesync/RestoreFragment$2;-><init>(Lcom/android/settings/homesync/RestoreFragment;)V

    iput-object v0, p0, Lcom/android/settings/homesync/RestoreFragment;->mNextButtonListener:Landroid/view/View$OnClickListener;

    .line 366
    return-void
.end method

.method private MakeItemList()V
    .locals 10

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/android/settings/homesync/RestoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/homesync/StorageUtil;->getBackupVolume(Landroid/content/Context;)Landroid/os/storage/StorageVolume;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/homesync/RestoreFragment;->mStorageVolume:Landroid/os/storage/StorageVolume;

    .line 236
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/settings/homesync/RestoreFragment;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/homesync/RestoreFragment;->mSourceDirectoryName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/homesync/RestoreFragment;->mAccountName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 237
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 238
    .local v1, files:[Ljava/io/File;
    if-nez v1, :cond_0

    .line 257
    :goto_0
    return-void

    .line 241
    :cond_0
    array-length v5, v1

    new-array v4, v5, [Ljava/lang/String;

    .line 243
    .local v4, titleList:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 245
    .local v3, size:I
    iget-object v5, p0, Lcom/android/settings/homesync/RestoreFragment;->list_info:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 246
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v5, v1

    if-ge v2, v5, :cond_1

    .line 248
    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    .line 249
    const-string v5, "RestoreFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "titleList["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    new-instance v5, Lcom/android/settings/homesync/RestoreFragment$CalculateDirectorySizeTask;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/settings/homesync/RestoreFragment$CalculateDirectorySizeTask;-><init>(Lcom/android/settings/homesync/RestoreFragment;Lcom/android/settings/homesync/RestoreFragment$1;)V

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/settings/homesync/RestoreFragment;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v9}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/homesync/RestoreFragment;->mSourceDirectoryName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/homesync/RestoreFragment;->mAccountName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v4, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v8, v4, v2

    aput-object v8, v6, v7

    invoke-virtual {v5, v6}, Lcom/android/settings/homesync/RestoreFragment$CalculateDirectorySizeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 246
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 254
    :cond_1
    new-instance v5, Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;

    invoke-virtual {p0}, Lcom/android/settings/homesync/RestoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f040153

    iget-object v8, p0, Lcom/android/settings/homesync/RestoreFragment;->list_info:Ljava/util/ArrayList;

    invoke-direct {v5, p0, v6, v7, v8}, Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;-><init>(Lcom/android/settings/homesync/RestoreFragment;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v5, p0, Lcom/android/settings/homesync/RestoreFragment;->m_adapter:Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/homesync/RestoreFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/android/settings/homesync/RestoreFragment;->mPasteType:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/homesync/RestoreFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput p1, p0, Lcom/android/settings/homesync/RestoreFragment;->mPasteType:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/homesync/RestoreFragment;)Landroid/os/storage/StorageVolume;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/homesync/RestoreFragment;->mStorageVolume:Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/homesync/RestoreFragment;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/homesync/RestoreFragment;->backupList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/homesync/RestoreFragment;Landroid/os/storage/StorageVolume;)Landroid/os/storage/StorageVolume;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/settings/homesync/RestoreFragment;->mStorageVolume:Landroid/os/storage/StorageVolume;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/homesync/RestoreFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/homesync/RestoreFragment;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/homesync/RestoreFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/homesync/RestoreFragment;->mDestDateName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/homesync/RestoreFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/settings/homesync/RestoreFragment;->mDestDateName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/settings/homesync/RestoreFragment;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/homesync/RestoreFragment;->startRestoreButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/homesync/RestoreFragment;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/android/settings/homesync/RestoreFragment;->mSourceTotalSize:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/android/settings/homesync/RestoreFragment;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-wide p1, p0, Lcom/android/settings/homesync/RestoreFragment;->mSourceTotalSize:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/android/settings/homesync/RestoreFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/homesync/RestoreFragment;->list_info:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method createAlertDialog(I)Landroid/app/AlertDialog;
    .locals 4
    .parameter "resId"

    .prologue
    .line 397
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/homesync/RestoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 398
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0914bb

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090ada

    new-instance v3, Lcom/android/settings/homesync/RestoreFragment$3;

    invoke-direct {v3, p0}, Lcom/android/settings/homesync/RestoreFragment$3;-><init>(Lcom/android/settings/homesync/RestoreFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 405
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 101
    const-string v0, "RestoreFragment"

    const-string v1, "  onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 108
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/homesync/RestoreFragment;->setHasOptionsMenu(Z)V

    .line 110
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 177
    const v1, 0x7f0914c9

    invoke-interface {p1, v2, v2, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 179
    .local v0, refreshMenu:Landroid/view/MenuItem;
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 180
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 181
    const v1, 0x7f020233

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 182
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 183
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/homesync/RestoreFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/homesync/RestoreFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "account_name"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/homesync/RestoreFragment;->mAccountName:Ljava/lang/String;

    .line 116
    :cond_0
    const v5, 0x7f040152

    invoke-virtual {p1, v5, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    sput-object v5, Lcom/android/settings/homesync/RestoreFragment;->rootView:Landroid/view/View;

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/homesync/RestoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/homesync/StorageUtil;->getBackupVolume(Landroid/content/Context;)Landroid/os/storage/StorageVolume;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/homesync/RestoreFragment;->mStorageVolume:Landroid/os/storage/StorageVolume;

    .line 119
    iget-object v5, p0, Lcom/android/settings/homesync/RestoreFragment;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v5, :cond_1

    .line 120
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/settings/homesync/RestoreFragment;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    .local v4, tmpFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/settings/homesync/RestoreFragment;->mDestAvailSize:J

    .line 123
    .end local v4           #tmpFile:Ljava/io/File;
    :cond_1
    sget-object v5, Lcom/android/settings/homesync/RestoreFragment;->rootView:Landroid/view/View;

    const v6, 0x7f0b03ab

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 124
    .local v3, sizeTextView:Landroid/widget/TextView;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/homesync/RestoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/settings/homesync/RestoreFragment;->mDestAvailSize:J

    invoke-static {v6, v7, v8}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    sget-object v5, Lcom/android/settings/homesync/RestoreFragment;->rootView:Landroid/view/View;

    const v6, 0x7f0b03b0

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/settings/homesync/RestoreFragment;->startRestoreButton:Landroid/widget/Button;

    .line 128
    iget-object v5, p0, Lcom/android/settings/homesync/RestoreFragment;->startRestoreButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/settings/homesync/RestoreFragment;->mNextButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v5, p0, Lcom/android/settings/homesync/RestoreFragment;->startRestoreButton:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 131
    sget-object v5, Lcom/android/settings/homesync/RestoreFragment;->rootView:Landroid/view/View;

    const v6, 0x7f0b03ad

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    iput-object v5, p0, Lcom/android/settings/homesync/RestoreFragment;->backupList:Landroid/widget/ListView;

    .line 133
    invoke-direct {p0}, Lcom/android/settings/homesync/RestoreFragment;->MakeItemList()V

    .line 134
    iget-object v5, p0, Lcom/android/settings/homesync/RestoreFragment;->backupList:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/android/settings/homesync/RestoreFragment;->m_adapter:Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 137
    sget-object v5, Lcom/android/settings/homesync/RestoreFragment;->rootView:Landroid/view/View;

    const v6, 0x7f0b03af

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 138
    .local v2, listView:Landroid/widget/ListView;
    const/4 v5, 0x3

    new-array v1, v5, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/homesync/RestoreFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0914b7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v9

    invoke-virtual {p0}, Lcom/android/settings/homesync/RestoreFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0914b8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v10

    const/4 v5, 0x2

    invoke-virtual {p0}, Lcom/android/settings/homesync/RestoreFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0914b9

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    .line 142
    .local v1, data:[Ljava/lang/String;
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/settings/homesync/RestoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x109000f

    invoke-direct {v0, v5, v6, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 144
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 145
    invoke-virtual {v2, v9, v10}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 146
    new-instance v5, Lcom/android/settings/homesync/RestoreFragment$1;

    invoke-direct {v5, p0}, Lcom/android/settings/homesync/RestoreFragment$1;-><init>(Lcom/android/settings/homesync/RestoreFragment;)V

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 154
    sget-object v5, Lcom/android/settings/homesync/RestoreFragment;->rootView:Landroid/view/View;

    return-object v5
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 187
    if-eqz p1, :cond_2

    .line 189
    invoke-static {}, Lcom/android/settings/homesync/FileOperation;->getOpStatus()Lcom/android/settings/homesync/FileOperation$OpStatus;

    move-result-object v0

    sget-object v2, Lcom/android/settings/homesync/FileOperation$OpStatus;->RUNNING:Lcom/android/settings/homesync/FileOperation$OpStatus;

    if-ne v0, v2, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/android/settings/homesync/RestoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f0914bd

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    .line 206
    :goto_0
    return v0

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/homesync/RestoreFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/homesync/RestoreFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 197
    :cond_1
    new-instance v2, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/homesync/RestoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 198
    const-class v0, Lcom/android/settings/homesync/RestoreFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 199
    const v0, 0x7f09149f

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 200
    invoke-virtual {v2}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "account_name"

    iget-object v4, p0, Lcom/android/settings/homesync/RestoreFragment;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/homesync/RestoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/preference/PreferenceActivity;->onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z

    move v0, v1

    .line 204
    goto :goto_0

    .line 206
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 159
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 161
    invoke-static {}, Lcom/android/settings/homesync/FileOperation;->getOpStatus()Lcom/android/settings/homesync/FileOperation$OpStatus;

    move-result-object v0

    sget-object v1, Lcom/android/settings/homesync/FileOperation$OpStatus;->RUNNING:Lcom/android/settings/homesync/FileOperation$OpStatus;

    if-ne v0, v1, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/homesync/RestoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0914bd

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/android/settings/homesync/RestoreFragment;->startRestoreButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/settings/homesync/FileOperation;->getOpStatus()Lcom/android/settings/homesync/FileOperation$OpStatus;

    move-result-object v0

    sget-object v1, Lcom/android/settings/homesync/FileOperation$OpStatus;->RUNNING:Lcom/android/settings/homesync/FileOperation$OpStatus;

    if-ne v0, v1, :cond_1

    .line 166
    iget-object v0, p0, Lcom/android/settings/homesync/RestoreFragment;->startRestoreButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 169
    :cond_1
    invoke-static {}, Lcom/android/settings/homesync/FileOperation;->getOpStatus()Lcom/android/settings/homesync/FileOperation$OpStatus;

    move-result-object v0

    sget-object v1, Lcom/android/settings/homesync/FileOperation$OpStatus;->RUNNING:Lcom/android/settings/homesync/FileOperation$OpStatus;

    if-eq v0, v1, :cond_2

    .line 170
    sget-object v0, Lcom/android/settings/homesync/FileOperation$OpStatus;->NONE:Lcom/android/settings/homesync/FileOperation$OpStatus;

    invoke-static {v0}, Lcom/android/settings/homesync/FileOperation;->setOpStatus(Lcom/android/settings/homesync/FileOperation$OpStatus;)V

    .line 172
    :cond_2
    return-void
.end method
