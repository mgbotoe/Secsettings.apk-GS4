.class public Lcom/android/settings/ReadingModeSettings;
.super Landroid/app/ListFragment;
.source "ReadingModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ReadingModeSettings$AlphaComparator;,
        Lcom/android/settings/ReadingModeSettings$AppListAdapter;
    }
.end annotation


# static fields
.field static MAX_READINGMODE:I

.field private static list_view:Landroid/widget/ListView;


# instance fields
.field private SavedApplist:Ljava/lang/String;

.field private mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAppListAdapter:Lcom/android/settings/ReadingModeSettings$AppListAdapter;

.field private mExtraAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mExtraList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field mMenuCancel:Landroid/view/MenuItem;

.field mMenuDone:Landroid/view/MenuItem;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mSavedApplist:[Ljava/lang/String;

.field private mSavedApplist_Activity:[Ljava/lang/String;

.field private mSavedApplist_Package:[Ljava/lang/String;

.field private mSavedReadingModeNums:I

.field private mTempApplist:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTempCheckedApplist:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mapp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const/16 v0, 0x14

    sput v0, Lcom/android/settings/ReadingModeSettings;->MAX_READINGMODE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/ReadingModeSettings;->mSavedReadingModeNums:I

    .line 78
    iput-object v1, p0, Lcom/android/settings/ReadingModeSettings;->SavedApplist:Ljava/lang/String;

    .line 79
    iput-object v1, p0, Lcom/android/settings/ReadingModeSettings;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    .line 80
    iput-object v1, p0, Lcom/android/settings/ReadingModeSettings;->mAppList:Ljava/util/List;

    .line 81
    iput-object v1, p0, Lcom/android/settings/ReadingModeSettings;->mExtraList:Ljava/util/List;

    .line 82
    iput-object v1, p0, Lcom/android/settings/ReadingModeSettings;->mExtraAppList:Ljava/util/List;

    .line 83
    iput-object v1, p0, Lcom/android/settings/ReadingModeSettings;->mTempApplist:Ljava/util/LinkedHashMap;

    .line 84
    iput-object v1, p0, Lcom/android/settings/ReadingModeSettings;->mapp:Ljava/util/List;

    .line 85
    iput-object v1, p0, Lcom/android/settings/ReadingModeSettings;->mSavedApplist:[Ljava/lang/String;

    .line 86
    iput-object v1, p0, Lcom/android/settings/ReadingModeSettings;->mSavedApplist_Package:[Ljava/lang/String;

    .line 87
    iput-object v1, p0, Lcom/android/settings/ReadingModeSettings;->mSavedApplist_Activity:[Ljava/lang/String;

    .line 365
    return-void
.end method

.method private SavedReadingModeApplist()V
    .locals 6

    .prologue
    .line 380
    const-string v2, ""

    .line 381
    .local v2, mTempAppinfo:Ljava/lang/String;
    const-string v1, ""

    .line 382
    .local v1, mTempAppList:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/ReadingModeSettings;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 384
    .local v0, CheckedApplistData:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 385
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #mTempAppinfo:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 386
    .restart local v2       #mTempAppinfo:Ljava/lang/String;
    const-string v3, "ReadingModeSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mTempCheckedApplist.get("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/ReadingModeSettings;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v3, p0, Lcom/android/settings/ReadingModeSettings;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/ReadingModeSettings;->mTempApplist:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 388
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 391
    :cond_1
    iget-object v3, p0, Lcom/android/settings/ReadingModeSettings;->mTempApplist:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 393
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 394
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #mTempAppinfo:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 395
    .restart local v2       #mTempAppinfo:Ljava/lang/String;
    const-string v3, "ReadingModeSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mTempCheckedApplist.get("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/ReadingModeSettings;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v3, p0, Lcom/android/settings/ReadingModeSettings;->mTempApplist:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 397
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 400
    :cond_3
    const-string v3, "ReadingModeSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SavedReadingModeApplist mTempAppList :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-virtual {p0}, Lcom/android/settings/ReadingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "reading_mode_app_list"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 402
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ReadingModeSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/ReadingModeSettings;->getCheckedReadingModeAppNum()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/ReadingModeSettings;)Lcom/android/settings/ReadingModeSettings$AppListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/ReadingModeSettings;->mAppListAdapter:Lcom/android/settings/ReadingModeSettings$AppListAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/ReadingModeSettings;)Ljava/util/LinkedHashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/ReadingModeSettings;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/ReadingModeSettings;)Ljava/util/LinkedHashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/ReadingModeSettings;->mTempApplist:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/ReadingModeSettings;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/ReadingModeSettings;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private getCheckedReadingModeAppNum()I
    .locals 6

    .prologue
    .line 405
    const/4 v1, 0x0

    .line 406
    .local v1, mCheckedAppNum:I
    const-string v2, ""

    .line 407
    .local v2, mCheckedAppinfo:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/ReadingModeSettings;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 409
    .local v0, CheckedData:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 410
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #mCheckedAppinfo:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 411
    .restart local v2       #mCheckedAppinfo:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/ReadingModeSettings;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 412
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 415
    :cond_1
    const-string v3, "ReadingModeSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCheckedReadingModeAppNum mCheckedAppNum :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    return v1
.end method

.method private updateOptionsMenuIcon(Z)V
    .locals 5
    .parameter "showIcon"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x5

    const/4 v2, 0x1

    .line 269
    iget-object v0, p0, Lcom/android/settings/ReadingModeSettings;->mMenuCancel:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 270
    if-eqz p1, :cond_2

    .line 271
    iget-object v0, p0, Lcom/android/settings/ReadingModeSettings;->mMenuCancel:Landroid/view/MenuItem;

    const v1, 0x7f0200dd

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 272
    iget-object v0, p0, Lcom/android/settings/ReadingModeSettings;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 278
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/ReadingModeSettings;->mMenuDone:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 279
    if-eqz p1, :cond_3

    .line 280
    iget-object v0, p0, Lcom/android/settings/ReadingModeSettings;->mMenuDone:Landroid/view/MenuItem;

    const v1, 0x7f0200e1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 281
    iget-object v0, p0, Lcom/android/settings/ReadingModeSettings;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 287
    :cond_1
    :goto_1
    return-void

    .line 274
    :cond_2
    iget-object v0, p0, Lcom/android/settings/ReadingModeSettings;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 275
    iget-object v0, p0, Lcom/android/settings/ReadingModeSettings;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    .line 283
    :cond_3
    iget-object v0, p0, Lcom/android/settings/ReadingModeSettings;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 284
    iget-object v0, p0, Lcom/android/settings/ReadingModeSettings;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 17
    .parameter "savedInstanceState"

    .prologue
    .line 136
    invoke-super/range {p0 .. p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ReadingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/ReadingModeSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 139
    new-instance v7, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    .local v7, LauncherIntent:Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ReadingModeSettings;->mPm:Landroid/content/pm/PackageManager;

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/ReadingModeSettings;->mExtraList:Ljava/util/List;

    .line 142
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ReadingModeSettings;->mPm:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v7, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/ReadingModeSettings;->mAppList:Ljava/util/List;

    .line 144
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/ReadingModeSettings;->mTempApplist:Ljava/util/LinkedHashMap;

    .line 145
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/ReadingModeSettings;->mExtraAppList:Ljava/util/List;

    .line 147
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ReadingModeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v13, v1, :cond_2

    .line 149
    const-string v1, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    const-string v2, "com.nttdocomo.android.docomo_market"

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ReadingModeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v2, "com.felicanetworks.mfm"

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ReadingModeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    :cond_0
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 154
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ReadingModeSettings;->mExtraAppList:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ReadingModeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ReadingModeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ReadingModeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 156
    .local v15, mAppinfo:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ReadingModeSettings;->mTempApplist:Ljava/util/LinkedHashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v15, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 158
    .end local v15           #mAppinfo:Ljava/lang/String;
    :cond_2
    const/4 v13, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ReadingModeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v13, v1, :cond_5

    .line 159
    const/4 v14, 0x0

    .local v14, j:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ReadingModeSettings;->mExtraList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v14, v1, :cond_3

    .line 160
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ReadingModeSettings;->mExtraList:Ljava/util/List;

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ReadingModeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 161
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ReadingModeSettings;->mExtraList:Ljava/util/List;

    invoke-interface {v1, v14}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 158
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 159
    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 167
    .end local v14           #j:I
    :cond_5
    const/4 v13, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ReadingModeSettings;->mExtraList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v13, v1, :cond_a

    .line 169
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ReadingModeSettings;->mExtraList:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 170
    .local v16, pkgName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ReadingModeSettings;->mPm:Landroid/content/pm/PackageManager;

    const/16 v2, 0x80

    move-object/from16 v0, v16

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    .line 171
    .local v10, app:Landroid/content/pm/ApplicationInfo;
    iget-object v1, v10, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_7

    .line 167
    .end local v10           #app:Landroid/content/pm/ApplicationInfo;
    .end local v16           #pkgName:Ljava/lang/String;
    :cond_6
    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 173
    .restart local v10       #app:Landroid/content/pm/ApplicationInfo;
    .restart local v16       #pkgName:Ljava/lang/String;
    :cond_7
    iget-object v1, v10, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "samsung.settings.reading_default_on"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 174
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ReadingModeSettings;->mPm:Landroid/content/pm/PackageManager;

    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 175
    .local v8, Papp:Landroid/content/pm/PackageInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v8, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 176
    .restart local v15       #mAppinfo:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ReadingModeSettings;->mTempApplist:Ljava/util/LinkedHashMap;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v15, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 188
    .end local v8           #Papp:Landroid/content/pm/PackageInfo;
    .end local v10           #app:Landroid/content/pm/ApplicationInfo;
    .end local v15           #mAppinfo:Ljava/lang/String;
    .end local v16           #pkgName:Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 189
    .local v12, e:Ljava/lang/Exception;
    const-string v1, "ReadingModeSettings"

    const-string v2, "Can not find activity name"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 177
    .end local v12           #e:Ljava/lang/Exception;
    .restart local v10       #app:Landroid/content/pm/ApplicationInfo;
    .restart local v16       #pkgName:Ljava/lang/String;
    :cond_8
    :try_start_1
    iget-object v1, v10, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "samsung.settings.reading_default_addtolist"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 178
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ReadingModeSettings;->mPm:Landroid/content/pm/PackageManager;

    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 179
    .restart local v8       #Papp:Landroid/content/pm/PackageInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v8, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 180
    .restart local v15       #mAppinfo:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ReadingModeSettings;->mTempApplist:Ljava/util/LinkedHashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v15, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ReadingModeSettings;->mExtraAppList:Ljava/util/List;

    iget-object v2, v8, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 182
    .end local v8           #Papp:Landroid/content/pm/PackageInfo;
    .end local v15           #mAppinfo:Ljava/lang/String;
    :cond_9
    iget-object v1, v10, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "samsung.settings.reading_default_on_addtolist"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 183
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ReadingModeSettings;->mPm:Landroid/content/pm/PackageManager;

    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 184
    .restart local v8       #Papp:Landroid/content/pm/PackageInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v8, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 185
    .restart local v15       #mAppinfo:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ReadingModeSettings;->mExtraAppList:Ljava/util/List;

    iget-object v2, v8, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ReadingModeSettings;->mTempApplist:Ljava/util/LinkedHashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v15, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5

    .line 192
    .end local v8           #Papp:Landroid/content/pm/PackageInfo;
    .end local v10           #app:Landroid/content/pm/ApplicationInfo;
    .end local v15           #mAppinfo:Ljava/lang/String;
    .end local v16           #pkgName:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ReadingModeSettings;->mExtraList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 194
    new-instance v9, Lcom/android/settings/ReadingModeSettings$AlphaComparator;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/android/settings/ReadingModeSettings$AlphaComparator;-><init>(Lcom/android/settings/ReadingModeSettings;)V

    .line 195
    .local v9, alphaComparator:Lcom/android/settings/ReadingModeSettings$AlphaComparator;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ReadingModeSettings;->mExtraAppList:Ljava/util/List;

    invoke-static {v1, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 197
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/ReadingModeSettings;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    .line 199
    const/4 v13, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ReadingModeSettings;->mExtraAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v13, v1, :cond_f

    .line 200
    const/4 v11, 0x0

    .line 201
    .local v11, checkedpackage:Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ReadingModeSettings;->mExtraAppList:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ReadingModeSettings;->mExtraAppList:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 202
    .restart local v15       #mAppinfo:Ljava/lang/String;
    const/4 v14, 0x0

    .restart local v14       #j:I
    :goto_7
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/ReadingModeSettings;->mSavedReadingModeNums:I

    if-ge v14, v1, :cond_d

    .line 203
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ReadingModeSettings;->mSavedApplist_Package:[Ljava/lang/String;

    aget-object v2, v1, v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ReadingModeSettings;->mExtraAppList:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ReadingModeSettings;->mSavedApplist_Activity:[Ljava/lang/String;

    aget-object v2, v1, v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ReadingModeSettings;->mExtraAppList:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 204
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ReadingModeSettings;->mTempApplist:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v15}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ReadingModeSettings;->mTempApplist:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v15}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    .line 205
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ReadingModeSettings;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v15, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ReadingModeSettings;->mTempApplist:Ljava/util/LinkedHashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v15, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const/4 v11, 0x1

    .line 202
    :cond_c
    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    .line 211
    :cond_d
    if-nez v11, :cond_e

    .line 212
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ReadingModeSettings;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v15, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    :cond_e
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_6

    .line 215
    .end local v11           #checkedpackage:Z
    .end local v14           #j:I
    .end local v15           #mAppinfo:Ljava/lang/String;
    :cond_f
    new-instance v1, Lcom/android/settings/ReadingModeSettings$AppListAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ReadingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f04014a

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/ReadingModeSettings;->mExtraAppList:Ljava/util/List;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/ReadingModeSettings$AppListAdapter;-><init>(Lcom/android/settings/ReadingModeSettings;Landroid/content/Context;IILjava/util/List;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/ReadingModeSettings;->mAppListAdapter:Lcom/android/settings/ReadingModeSettings$AppListAdapter;

    .line 217
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ReadingModeSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    sput-object v1, Lcom/android/settings/ReadingModeSettings;->list_view:Landroid/widget/ListView;

    .line 218
    sget-object v1, Lcom/android/settings/ReadingModeSettings;->list_view:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ReadingModeSettings;->mAppListAdapter:Lcom/android/settings/ReadingModeSettings$AppListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 219
    sget-object v1, Lcom/android/settings/ReadingModeSettings;->list_view:Landroid/widget/ListView;

    new-instance v2, Lcom/android/settings/ReadingModeSettings$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/settings/ReadingModeSettings$1;-><init>(Lcom/android/settings/ReadingModeSettings;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 246
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/ReadingModeSettings;->setHasOptionsMenu(Z)V

    .line 247
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    .line 104
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/ReadingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "reading_mode_app_list"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/ReadingModeSettings;->SavedApplist:Ljava/lang/String;

    .line 106
    const-string v4, "ReadingModeSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SavedApplist :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/ReadingModeSettings;->SavedApplist:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v4, p0, Lcom/android/settings/ReadingModeSettings;->SavedApplist:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 108
    iget-object v4, p0, Lcom/android/settings/ReadingModeSettings;->SavedApplist:Ljava/lang/String;

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/ReadingModeSettings;->mSavedApplist:[Ljava/lang/String;

    .line 109
    iget-object v4, p0, Lcom/android/settings/ReadingModeSettings;->mSavedApplist:[Ljava/lang/String;

    array-length v4, v4

    iput v4, p0, Lcom/android/settings/ReadingModeSettings;->mSavedReadingModeNums:I

    .line 112
    :cond_0
    iget v4, p0, Lcom/android/settings/ReadingModeSettings;->mSavedReadingModeNums:I

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/android/settings/ReadingModeSettings;->mSavedApplist_Package:[Ljava/lang/String;

    .line 113
    iget v4, p0, Lcom/android/settings/ReadingModeSettings;->mSavedReadingModeNums:I

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/android/settings/ReadingModeSettings;->mSavedApplist_Activity:[Ljava/lang/String;

    .line 114
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v4, p0, Lcom/android/settings/ReadingModeSettings;->mSavedReadingModeNums:I

    if-ge v1, v4, :cond_1

    .line 115
    const/4 v2, 0x0

    .line 116
    .local v2, package_index:I
    iget-object v4, p0, Lcom/android/settings/ReadingModeSettings;->mSavedApplist:[Ljava/lang/String;

    aget-object v4, v4, v1

    const/16 v5, 0x2f

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 117
    iget-object v4, p0, Lcom/android/settings/ReadingModeSettings;->mSavedApplist:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v4, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, package_name:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/ReadingModeSettings;->mSavedApplist:[Ljava/lang/String;

    aget-object v4, v4, v1

    add-int/lit8 v5, v2, 0x1

    iget-object v6, p0, Lcom/android/settings/ReadingModeSettings;->mSavedApplist:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, activity_name:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/ReadingModeSettings;->mSavedApplist_Package:[Ljava/lang/String;

    aput-object v3, v4, v1

    .line 120
    iget-object v4, p0, Lcom/android/settings/ReadingModeSettings;->mSavedApplist_Activity:[Ljava/lang/String;

    aput-object v0, v4, v1

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 122
    .end local v0           #activity_name:Ljava/lang/String;
    .end local v2           #package_index:I
    .end local v3           #package_name:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ReadingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 123
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 252
    invoke-virtual {p0}, Lcom/android/settings/ReadingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    .line 254
    .local v0, isTablet:Z
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 256
    const/4 v1, 0x2

    const v2, 0x7f090173

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ReadingModeSettings;->mMenuCancel:Landroid/view/MenuItem;

    .line 257
    iget-object v1, p0, Lcom/android/settings/ReadingModeSettings;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 259
    const v1, 0x7f09132a

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ReadingModeSettings;->mMenuDone:Landroid/view/MenuItem;

    .line 260
    iget-object v1, p0, Lcom/android/settings/ReadingModeSettings;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 262
    if-eqz v0, :cond_0

    .line 263
    invoke-direct {p0, v4}, Lcom/android/settings/ReadingModeSettings;->updateOptionsMenuIcon(Z)V

    .line 266
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 127
    const v1, 0x7f040149

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 129
    .local v0, mView:Landroid/view/View;
    const v1, 0x7f0b03a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 291
    const-string v1, "ReadingModeSettings"

    const-string v2, "onOptionsItemSelected"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 295
    invoke-virtual {p0}, Lcom/android/settings/ReadingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/android/settings/ReadingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 297
    invoke-virtual {p0}, Lcom/android/settings/ReadingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    .line 313
    :goto_0
    return v0

    .line 299
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ReadingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 301
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v0, :cond_3

    .line 303
    invoke-direct {p0}, Lcom/android/settings/ReadingModeSettings;->SavedReadingModeApplist()V

    .line 304
    invoke-virtual {p0}, Lcom/android/settings/ReadingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 305
    invoke-virtual {p0}, Lcom/android/settings/ReadingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 306
    invoke-virtual {p0}, Lcom/android/settings/ReadingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 308
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/ReadingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 313
    :cond_3
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 323
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 324
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 318
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 319
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 328
    invoke-super {p0}, Landroid/app/ListFragment;->onStop()V

    .line 330
    return-void
.end method
