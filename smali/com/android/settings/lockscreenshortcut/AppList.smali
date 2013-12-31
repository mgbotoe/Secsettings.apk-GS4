.class public Lcom/android/settings/lockscreenshortcut/AppList;
.super Landroid/app/ListActivity;
.source "AppList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/lockscreenshortcut/AppList$AlphaComparator;,
        Lcom/android/settings/lockscreenshortcut/AppList$AppListAdapter;,
        Lcom/android/settings/lockscreenshortcut/AppList$ViewHolder;
    }
.end annotation


# static fields
.field static MAX_SHORTCUT_ICON:I


# instance fields
.field private NappList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAppListAdapter:Lcom/android/settings/lockscreenshortcut/AppList$AppListAdapter;

.field private mClickedViewIndex:I

.field private mIconCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mNumOfSavedShortcut:I

.field private mPm:Landroid/content/pm/PackageManager;

.field private mSecretModeReceiver:Landroid/content/BroadcastReceiver;

.field private mSetedShortcut_activity:[Ljava/lang/String;

.field private mSetedShortcut_package:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x4

    sput v0, Lcom/android/settings/lockscreenshortcut/AppList;->MAX_SHORTCUT_ICON:I

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 54
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 60
    iput v3, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mNumOfSavedShortcut:I

    .line 61
    iput v3, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mClickedViewIndex:I

    .line 62
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    aput-object v2, v0, v3

    aput-object v2, v0, v4

    aput-object v2, v0, v5

    aput-object v2, v0, v6

    const/4 v1, 0x4

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mSetedShortcut_package:[Ljava/lang/String;

    .line 63
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    aput-object v2, v0, v3

    aput-object v2, v0, v4

    aput-object v2, v0, v5

    aput-object v2, v0, v6

    const/4 v1, 0x4

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mSetedShortcut_activity:[Ljava/lang/String;

    .line 65
    iput-object v2, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mIconCache:Ljava/util/HashMap;

    .line 303
    new-instance v0, Lcom/android/settings/lockscreenshortcut/AppList$1;

    invoke-direct {v0, p0}, Lcom/android/settings/lockscreenshortcut/AppList$1;-><init>(Lcom/android/settings/lockscreenshortcut/AppList;)V

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mSecretModeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/lockscreenshortcut/AppList;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/lockscreenshortcut/AppList;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mIconCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/lockscreenshortcut/AppList;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/AppList;->NappList:Ljava/util/List;

    return-object v0
.end method

.method private registerSecretModeReceiver()V
    .locals 2

    .prologue
    .line 291
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 292
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.samsung.android.intent.action.SECRET_MODE_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 293
    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mSecretModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/lockscreenshortcut/AppList;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 294
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #filter:Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 295
    .restart local v0       #filter:Landroid/content/IntentFilter;
    const-string v1, "com.samsung.android.intent.action.SECRET_MODE_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 296
    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mSecretModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/lockscreenshortcut/AppList;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 297
    return-void
.end method

.method private unregisterSecretModeReceiver()V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mSecretModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/lockscreenshortcut/AppList;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 301
    return-void
.end method


# virtual methods
.method public NmakeList(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, applist:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v0, NormalActivityList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ActivityInfo;>;"
    const/4 v3, 0x0

    .line 130
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 131
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 134
    :cond_0
    iget-object v4, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4}, Landroid/content/pm/PackageManager;->getSecretPackageList()Ljava/util/List;

    move-result-object v3

    .line 135
    const-string v4, "AppList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NmakeList NormalActivityList[size] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/4 v1, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 138
    const/4 v2, 0x0

    .local v2, j:I
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 139
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 140
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 138
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 137
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 144
    .end local v2           #j:I
    :cond_3
    return-object v0
.end method

.method public SmakeList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    .local p1, applist:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v0, SecretActivityList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ActivityInfo;>;"
    const-string v2, "AppList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SmakeList applist[size] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 154
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 157
    :cond_0
    return-object v0
.end method

.method public createList(Ljava/util/List;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ActivityInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 161
    .local p1, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ActivityInfo;>;"
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mAppListAdapter:Lcom/android/settings/lockscreenshortcut/AppList$AppListAdapter;

    if-eqz v0, :cond_0

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mAppListAdapter:Lcom/android/settings/lockscreenshortcut/AppList$AppListAdapter;

    .line 165
    :cond_0
    new-instance v6, Lcom/android/settings/lockscreenshortcut/AppList$AlphaComparator;

    invoke-direct {v6, p0}, Lcom/android/settings/lockscreenshortcut/AppList$AlphaComparator;-><init>(Lcom/android/settings/lockscreenshortcut/AppList;)V

    .line 166
    .local v6, alphaComparator:Lcom/android/settings/lockscreenshortcut/AppList$AlphaComparator;
    invoke-static {p1, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 168
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    iget v0, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mNumOfSavedShortcut:I

    if-ge v7, v0, :cond_3

    .line 169
    const/4 v8, 0x0

    .local v8, j:I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_2

    .line 170
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mSetedShortcut_package:[Ljava/lang/String;

    aget-object v1, v0, v7

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mSetedShortcut_activity:[Ljava/lang/String;

    aget-object v1, v0, v7

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    invoke-interface {p1, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 169
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 168
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 176
    .end local v8           #j:I
    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mIconCache:Ljava/util/HashMap;

    .line 177
    const/4 v7, 0x0

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_4

    .line 178
    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mIconCache:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v3}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 181
    :cond_4
    new-instance v0, Lcom/android/settings/lockscreenshortcut/AppList$AppListAdapter;

    const v3, 0x7f0400cd

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/lockscreenshortcut/AppList$AppListAdapter;-><init>(Lcom/android/settings/lockscreenshortcut/AppList;Landroid/content/Context;IILjava/util/List;)V

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mAppListAdapter:Lcom/android/settings/lockscreenshortcut/AppList$AppListAdapter;

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/AppList;->getListView()Landroid/widget/ListView;

    move-result-object v9

    .line 184
    .local v9, list_view:Landroid/widget/ListView;
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mAppListAdapter:Lcom/android/settings/lockscreenshortcut/AppList$AppListAdapter;

    invoke-virtual {v9, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 185
    invoke-virtual {v9, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 186
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const/4 v12, 0x0

    .line 76
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0, v12}, Lcom/android/settings/lockscreenshortcut/AppList;->setResult(I)V

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/AppList;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 81
    .local v4, intent:Landroid/content/Intent;
    const-string v10, "shortcut_app_list"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 82
    .local v9, shortcut_app_list:Ljava/lang/String;
    const-string v10, "num_of_shortcut"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mNumOfSavedShortcut:I

    .line 83
    const-string v10, "clicked_view_index"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mClickedViewIndex:I

    .line 84
    const-string v10, "max_num_of_shortcut"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    sput v10, Lcom/android/settings/lockscreenshortcut/AppList;->MAX_SHORTCUT_ICON:I

    .line 86
    iget v10, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mNumOfSavedShortcut:I

    sget v11, Lcom/android/settings/lockscreenshortcut/AppList;->MAX_SHORTCUT_ICON:I

    if-le v10, v11, :cond_0

    .line 87
    sget v10, Lcom/android/settings/lockscreenshortcut/AppList;->MAX_SHORTCUT_ICON:I

    iput v10, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mNumOfSavedShortcut:I

    .line 90
    :cond_0
    const-string v5, ""

    .line 91
    .local v5, intent_content:Ljava/lang/String;
    const/4 v3, 0x0

    .line 92
    .local v3, index:I
    const/4 v6, 0x0

    .line 93
    .local v6, old_index:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget v10, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mNumOfSavedShortcut:I

    if-ge v2, v10, :cond_1

    .line 94
    move v6, v3

    .line 95
    const/16 v10, 0x3b

    invoke-virtual {v9, v10, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 96
    invoke-virtual {v9, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 97
    const/16 v10, 0x2f

    invoke-virtual {v5, v10, v12}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 98
    .local v7, package_index:I
    invoke-virtual {v5, v12, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 99
    .local v8, package_name:Ljava/lang/String;
    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, activity_name:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mSetedShortcut_package:[Ljava/lang/String;

    aput-object v8, v10, v2

    .line 101
    iget-object v10, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mSetedShortcut_activity:[Ljava/lang/String;

    aput-object v1, v10, v2

    .line 102
    add-int/lit8 v3, v3, 0x1

    .line 93
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    .end local v1           #activity_name:Ljava/lang/String;
    .end local v7           #package_index:I
    .end local v8           #package_name:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/AppList;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mPm:Landroid/content/pm/PackageManager;

    .line 105
    new-instance v0, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v0, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 106
    .local v0, LauncherIntent:Landroid/content/Intent;
    const-string v10, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    iget-object v10, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mPm:Landroid/content/pm/PackageManager;

    const/16 v11, 0x20

    invoke-virtual {v10, v0, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/lockscreenshortcut/AppList;->NappList:Ljava/util/List;

    .line 112
    const-string v10, "AppList"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onCreate NappList[size] : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/lockscreenshortcut/AppList;->NappList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v10, p0, Lcom/android/settings/lockscreenshortcut/AppList;->NappList:Ljava/util/List;

    invoke-virtual {p0, v10}, Lcom/android/settings/lockscreenshortcut/AppList;->SmakeList(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/settings/lockscreenshortcut/AppList;->createList(Ljava/util/List;)V

    .line 124
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 189
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 190
    .local v0, result_intent:Landroid/content/Intent;
    const-string v2, "AppList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " shortcut selected : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mAppListAdapter:Lcom/android/settings/lockscreenshortcut/AppList$AppListAdapter;

    invoke-virtual {v1, p3}, Lcom/android/settings/lockscreenshortcut/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mAppListAdapter:Lcom/android/settings/lockscreenshortcut/AppList$AppListAdapter;

    invoke-virtual {v1, p3}, Lcom/android/settings/lockscreenshortcut/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const-string v2, "selected_package"

    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mAppListAdapter:Lcom/android/settings/lockscreenshortcut/AppList$AppListAdapter;

    invoke-virtual {v1, p3}, Lcom/android/settings/lockscreenshortcut/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    const-string v2, "selected_activity"

    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mAppListAdapter:Lcom/android/settings/lockscreenshortcut/AppList$AppListAdapter;

    invoke-virtual {v1, p3}, Lcom/android/settings/lockscreenshortcut/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    const-string v1, "clicked_view_index"

    iget v2, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mClickedViewIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 194
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/lockscreenshortcut/AppList;->setResult(ILandroid/content/Intent;)V

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/AppList;->finish()V

    .line 196
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 280
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 281
    invoke-direct {p0}, Lcom/android/settings/lockscreenshortcut/AppList;->unregisterSecretModeReceiver()V

    .line 282
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 286
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 287
    invoke-direct {p0}, Lcom/android/settings/lockscreenshortcut/AppList;->registerSecretModeReceiver()V

    .line 288
    return-void
.end method
