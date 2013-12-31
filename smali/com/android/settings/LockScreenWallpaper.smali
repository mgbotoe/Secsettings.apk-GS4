.class public Lcom/android/settings/LockScreenWallpaper;
.super Lcom/android/internal/app/AlertActivity;
.source "LockScreenWallpaper.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/LockScreenWallpaper$AlphaComparator;,
        Lcom/android/settings/LockScreenWallpaper$ItemLongClickListener;,
        Lcom/android/settings/LockScreenWallpaper$ViewHolder;,
        Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;
    }
.end annotation


# instance fields
.field private ItemName:[Ljava/lang/String;

.field private isTypeBoth:Z

.field private mAdapter:Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;

.field private mDirectWallpaper:Z

.field private mGrid:Landroid/widget/GridView;

.field private mIconSize:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPm:Landroid/content/pm/PackageManager;

.field private rList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private rListLock:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 66
    iput-boolean v0, p0, Lcom/android/settings/LockScreenWallpaper;->isTypeBoth:Z

    .line 72
    iput-boolean v0, p0, Lcom/android/settings/LockScreenWallpaper;->mDirectWallpaper:Z

    .line 347
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/LockScreenWallpaper;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/LockScreenWallpaper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/settings/LockScreenWallpaper;->isTypeBoth:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/LockScreenWallpaper;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/LockScreenWallpaper;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/LockScreenWallpaper;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/android/settings/LockScreenWallpaper;->mIconSize:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/LockScreenWallpaper;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/LockScreenWallpaper;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/LockScreenWallpaper;->ItemName:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 77
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/android/settings/LockScreenWallpaper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, p0, Lcom/android/settings/LockScreenWallpaper;->mInflater:Landroid/view/LayoutInflater;

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/LockScreenWallpaper;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "direct_wallpaper"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/LockScreenWallpaper;->mDirectWallpaper:Z

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/LockScreenWallpaper;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/LockScreenWallpaper;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "both"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v6, :cond_0

    iget-boolean v3, p0, Lcom/android/settings/LockScreenWallpaper;->mDirectWallpaper:Z

    if-eqz v3, :cond_1

    .line 87
    :cond_0
    iput-boolean v6, p0, Lcom/android/settings/LockScreenWallpaper;->isTypeBoth:Z

    .line 89
    :cond_1
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Lcom/android/settings/LockScreenWallpaper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 90
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v3

    iput v3, p0, Lcom/android/settings/LockScreenWallpaper;->mIconSize:I

    .line 92
    iget-object v1, p0, Lcom/android/settings/LockScreenWallpaper;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 94
    .local v1, ap:Lcom/android/internal/app/AlertController$AlertParams;
    invoke-virtual {p0}, Lcom/android/settings/LockScreenWallpaper;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "fromEasySettings"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 96
    .local v2, bFromEasySettings:Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-ne v3, v6, :cond_2

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/LockScreenWallpaper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090aba

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 103
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/LockScreenWallpaper;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x1090141

    invoke-virtual {v3, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 104
    iget-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v4, 0x1020452

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/GridView;

    iput-object v3, p0, Lcom/android/settings/LockScreenWallpaper;->mGrid:Landroid/widget/GridView;

    .line 105
    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v3, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 106
    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper;->mGrid:Landroid/widget/GridView;

    new-instance v4, Lcom/android/settings/LockScreenWallpaper$ItemLongClickListener;

    invoke-direct {v4, p0}, Lcom/android/settings/LockScreenWallpaper$ItemLongClickListener;-><init>(Lcom/android/settings/LockScreenWallpaper;)V

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/LockScreenWallpaper;->setupAlert()V

    .line 108
    return-void

    .line 100
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/LockScreenWallpaper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090ab9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v7, 0x1

    .line 159
    const-string v5, "com.sec.android.gallery3d"

    iget-object v6, p0, Lcom/android/settings/LockScreenWallpaper;->ItemName:[Ljava/lang/String;

    aget-object v6, v6, p3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 160
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 161
    .local v0, intent:Landroid/content/Intent;
    iget-boolean v5, p0, Lcom/android/settings/LockScreenWallpaper;->isTypeBoth:Z

    if-eqz v5, :cond_0

    .line 162
    const-string v5, "com.sec.android.gallery3d"

    const-string v6, "com.sec.android.gallery3d.app.BothScreen"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/LockScreenWallpaper;->startActivity(Landroid/content/Intent;)V

    .line 197
    .end local v0           #intent:Landroid/content/Intent;
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/LockScreenWallpaper;->finish()V

    .line 198
    return-void

    .line 164
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_0
    const-string v5, "com.sec.android.gallery3d"

    const-string v6, "com.sec.android.gallery3d.app.LockScreen"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 166
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    const-string v5, "com.android.wallpaper.livepicker"

    iget-object v6, p0, Lcom/android/settings/LockScreenWallpaper;->ItemName:[Ljava/lang/String;

    aget-object v6, v6, p3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 167
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 168
    .local v3, intentLiveWallpaperChooser:Landroid/content/Intent;
    const-string v5, "SET_LOCKSCREEN_WALLPAPER"

    invoke-virtual {v3, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 169
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.android.wallpaper.livepicker"

    const-string v7, "com.android.wallpaper.livepicker.LiveWallpaperActivity"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 171
    invoke-virtual {p0, v3}, Lcom/android/settings/LockScreenWallpaper;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 173
    .end local v3           #intentLiveWallpaperChooser:Landroid/content/Intent;
    :cond_2
    const-string v5, "com.samsung.android.service.travel"

    iget-object v6, p0, Lcom/android/settings/LockScreenWallpaper;->ItemName:[Ljava/lang/String;

    aget-object v6, v6, p3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 175
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 176
    .local v4, intentTravelWallpaper:Landroid/content/Intent;
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.samsung.android.service.travel"

    const-string v7, "com.samsung.android.travel.TravelWallActivity"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 179
    invoke-virtual {p0, v4}, Lcom/android/settings/LockScreenWallpaper;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 181
    .end local v4           #intentTravelWallpaper:Landroid/content/Intent;
    :cond_3
    const-string v5, "com.samsung.android.service.coverlock"

    iget-object v6, p0, Lcom/android/settings/LockScreenWallpaper;->ItemName:[Ljava/lang/String;

    aget-object v6, v6, p3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 182
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 183
    .local v2, intentCoverLockWallpaper:Landroid/content/Intent;
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.samsung.android.service.coverlock"

    const-string v7, "com.samsung.android.coverlock.CoverLockWallActivity"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 186
    invoke-virtual {p0, v2}, Lcom/android/settings/LockScreenWallpaper;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 188
    .end local v2           #intentCoverLockWallpaper:Landroid/content/Intent;
    :cond_4
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 189
    .local v1, intentCallWallpaperChooser:Landroid/content/Intent;
    iget-boolean v5, p0, Lcom/android/settings/LockScreenWallpaper;->isTypeBoth:Z

    if-eqz v5, :cond_5

    .line 190
    const-string v5, "SET_WALLPAPER_MODE"

    const/4 v6, 0x2

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 193
    :goto_2
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.sec.android.app.wallpaperchooser"

    const-string v7, "com.sec.android.app.wallpaperchooser.WallpaperChooser"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 195
    invoke-virtual {p0, v1}, Lcom/android/settings/LockScreenWallpaper;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 192
    :cond_5
    const-string v5, "SET_WALLPAPER_MODE"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2
.end method

.method protected onResume()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v7, 0x1

    .line 112
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/LockScreenWallpaper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;

    .line 116
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 118
    .local v3, pickWallpaper:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/settings/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v3, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;

    .line 121
    iget-boolean v4, p0, Lcom/android/settings/LockScreenWallpaper;->isTypeBoth:Z

    if-nez v4, :cond_2

    .line 122
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.samsung.android.service.travel"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    .local v1, LockpickWallpaper:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/settings/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v1, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/LockScreenWallpaper;->rListLock:Ljava/util/List;

    .line 124
    iget-object v4, p0, Lcom/android/settings/LockScreenWallpaper;->rListLock:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v9, :cond_0

    .line 125
    iget-object v4, p0, Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;

    iget-object v5, p0, Lcom/android/settings/LockScreenWallpaper;->rListLock:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_0
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rListLock"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/LockScreenWallpaper;->rListLock:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 129
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.samsung.android.service.coverlock"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 130
    .local v0, CoverLockWallpaper:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/settings/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v0, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/LockScreenWallpaper;->rListLock:Ljava/util/List;

    .line 131
    iget-object v4, p0, Lcom/android/settings/LockScreenWallpaper;->rListLock:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v9, :cond_1

    .line 132
    iget-object v4, p0, Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;

    iget-object v5, p0, Lcom/android/settings/LockScreenWallpaper;->rListLock:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_1
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rListLock"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/LockScreenWallpaper;->rListLock:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 139
    .end local v0           #CoverLockWallpaper:Landroid/content/Intent;
    .end local v1           #LockpickWallpaper:Landroid/content/Intent;
    :cond_2
    iget-object v4, p0, Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 140
    iget-object v4, p0, Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/android/settings/LockScreenWallpaper;->ItemName:[Ljava/lang/String;

    .line 145
    :goto_0
    new-instance v2, Lcom/android/settings/LockScreenWallpaper$AlphaComparator;

    invoke-direct {v2, p0}, Lcom/android/settings/LockScreenWallpaper$AlphaComparator;-><init>(Lcom/android/settings/LockScreenWallpaper;)V

    .line 147
    .local v2, mAlphaComparator:Lcom/android/settings/LockScreenWallpaper$AlphaComparator;
    iget-object v4, p0, Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;

    invoke-static {v4, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 149
    new-instance v4, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;

    invoke-direct {v4, p0, p0}, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;-><init>(Lcom/android/settings/LockScreenWallpaper;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/LockScreenWallpaper;->mAdapter:Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;

    .line 151
    iget-object v4, p0, Lcom/android/settings/LockScreenWallpaper;->mGrid:Landroid/widget/GridView;

    iget-object v5, p0, Lcom/android/settings/LockScreenWallpaper;->mAdapter:Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/LockScreenWallpaper;->resizeGrid()V

    .line 155
    return-void

    .line 142
    .end local v2           #mAlphaComparator:Lcom/android/settings/LockScreenWallpaper$AlphaComparator;
    :cond_3
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/android/settings/LockScreenWallpaper;->ItemName:[Ljava/lang/String;

    goto :goto_0
.end method

.method resizeGrid()V
    .locals 4

    .prologue
    .line 320
    iget-object v2, p0, Lcom/android/settings/LockScreenWallpaper;->mAdapter:Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;

    invoke-virtual {v2}, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->getCount()I

    move-result v0

    .line 321
    .local v0, itemCount:I
    invoke-virtual {p0}, Lcom/android/settings/LockScreenWallpaper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0042

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 322
    .local v1, maxColumns:I
    iget-object v2, p0, Lcom/android/settings/LockScreenWallpaper;->mGrid:Landroid/widget/GridView;

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 323
    return-void
.end method
