.class public Lcom/android/settings/DreamSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DreamSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DreamSettings$PackageReceiver;,
        Lcom/android/settings/DreamSettings$DreamInfoAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/android/settings/DreamSettings$DreamInfoAdapter;

.field mAlertDialog:Landroid/app/AlertDialog;

.field private mBackend:Lcom/android/settings/DreamBackend;

.field private mContext:Landroid/content/Context;

.field private mMenuItemsWhenEnabled:[Landroid/view/MenuItem;

.field private final mPackageReceiver:Lcom/android/settings/DreamSettings$PackageReceiver;

.field private mRefreshing:Z

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-class v0, Lcom/android/settings/DreamSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/DreamSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 73
    new-instance v0, Lcom/android/settings/DreamSettings$PackageReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DreamSettings$PackageReceiver;-><init>(Lcom/android/settings/DreamSettings;Lcom/android/settings/DreamSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/DreamSettings;->mPackageReceiver:Lcom/android/settings/DreamSettings$PackageReceiver;

    .line 81
    iput-object v1, p0, Lcom/android/settings/DreamSettings;->mAlertDialog:Landroid/app/AlertDialog;

    .line 512
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/DreamSettings;)Lcom/android/settings/DreamBackend;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/DreamSettings;->mBackend:Lcom/android/settings/DreamBackend;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/DreamSettings;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/DreamSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/DreamSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/settings/DreamSettings;->mRefreshing:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/DreamSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/DreamSettings;->refreshFromBackend()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/DreamSettings;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/DreamSettings;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/DreamSettings;)Lcom/android/settings/DreamSettings$DreamInfoAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/DreamSettings;->mAdapter:Lcom/android/settings/DreamSettings$DreamInfoAdapter;

    return-object v0
.end method

.method static synthetic access$800(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-static {p0, p1}, Lcom/android/settings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private createMenuItem(Landroid/view/Menu;IIZLjava/lang/Runnable;)Landroid/view/MenuItem;
    .locals 2
    .parameter "menu"
    .parameter "titleRes"
    .parameter "actionEnum"
    .parameter "isEnabled"
    .parameter "onClick"

    .prologue
    .line 283
    invoke-interface {p1, p2}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 284
    .local v0, item:Landroid/view/MenuItem;
    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 285
    invoke-interface {v0, p4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 286
    new-instance v1, Lcom/android/settings/DreamSettings$5;

    invoke-direct {v1, p0, p5}, Lcom/android/settings/DreamSettings$5;-><init>(Lcom/android/settings/DreamSettings;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 293
    return-object v0
.end method

.method private createWhenToDreamDialog()Landroid/app/Dialog;
    .locals 8

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 305
    const/4 v6, 0x3

    new-array v3, v6, [Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/android/settings/DreamSettings;->mContext:Landroid/content/Context;

    const v7, 0x7f090579

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    iget-object v6, p0, Lcom/android/settings/DreamSettings;->mContext:Landroid/content/Context;

    const v7, 0x7f090578

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    iget-object v6, p0, Lcom/android/settings/DreamSettings;->mContext:Landroid/content/Context;

    const v7, 0x7f090577

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v2

    .line 311
    .local v3, items:[Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/settings/DreamSettings;->mBackend:Lcom/android/settings/DreamBackend;

    invoke-virtual {v6}, Lcom/android/settings/DreamBackend;->isActivatedOnDock()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/DreamSettings;->mBackend:Lcom/android/settings/DreamBackend;

    invoke-virtual {v6}, Lcom/android/settings/DreamBackend;->isActivatedOnSleep()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 316
    .local v2, initialSelection:I
    :goto_0
    const/4 v0, 0x0

    .line 317
    .local v0, alertDialog:Landroid/app/AlertDialog;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/settings/DreamSettings;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f09057e

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v6, Lcom/android/settings/DreamSettings$6;

    invoke-direct {v6, p0}, Lcom/android/settings/DreamSettings$6;-><init>(Lcom/android/settings/DreamSettings;)V

    invoke-virtual {v4, v3, v2, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 327
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 328
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 330
    return-object v0

    .line 311
    .end local v0           #alertDialog:Landroid/app/AlertDialog;
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    .end local v2           #initialSelection:I
    :cond_0
    iget-object v6, p0, Lcom/android/settings/DreamSettings;->mBackend:Lcom/android/settings/DreamBackend;

    invoke-virtual {v6}, Lcom/android/settings/DreamBackend;->isActivatedOnDock()Z

    move-result v6

    if-eqz v6, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/settings/DreamSettings;->mBackend:Lcom/android/settings/DreamBackend;

    invoke-virtual {v4}, Lcom/android/settings/DreamBackend;->isActivatedOnSleep()Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v5

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static getSummaryTextWithDreamName(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "context"

    .prologue
    .line 372
    new-instance v0, Lcom/android/settings/DreamBackend;

    invoke-direct {v0, p0}, Lcom/android/settings/DreamBackend;-><init>(Landroid/content/Context;)V

    .line 373
    .local v0, backend:Lcom/android/settings/DreamBackend;
    invoke-virtual {v0}, Lcom/android/settings/DreamBackend;->isEnabled()Z

    move-result v1

    .line 374
    .local v1, isEnabled:Z
    if-nez v1, :cond_0

    .line 375
    const v2, 0x7f09057b

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 377
    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/DreamBackend;->getActiveDreamName()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0
.end method

.method private static varargs logd(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .parameter "msg"
    .parameter "args"

    .prologue
    .line 413
    return-void
.end method

.method private refreshFromBackend()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 382
    const-string v6, "refreshFromBackend()"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/android/settings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 383
    iput-boolean v8, p0, Lcom/android/settings/DreamSettings;->mRefreshing:Z

    .line 384
    iget-object v6, p0, Lcom/android/settings/DreamSettings;->mBackend:Lcom/android/settings/DreamBackend;

    invoke-virtual {v6}, Lcom/android/settings/DreamBackend;->isEnabled()Z

    move-result v2

    .line 386
    .local v2, dreamsEnabled:Z
    iget-object v6, p0, Lcom/android/settings/DreamSettings;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/settings/DreamSettings;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 387
    iget-object v6, p0, Lcom/android/settings/DreamSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v8}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 393
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/settings/DreamSettings;->mAdapter:Lcom/android/settings/DreamSettings$DreamInfoAdapter;

    invoke-virtual {v6}, Lcom/android/settings/DreamSettings$DreamInfoAdapter;->clear()V

    .line 394
    if-eqz v2, :cond_1

    .line 395
    iget-object v6, p0, Lcom/android/settings/DreamSettings;->mBackend:Lcom/android/settings/DreamBackend;

    invoke-virtual {v6}, Lcom/android/settings/DreamBackend;->getDreamInfos()Ljava/util/List;

    move-result-object v1

    .line 396
    .local v1, dreamInfos:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/DreamBackend$DreamInfo;>;"
    iget-object v6, p0, Lcom/android/settings/DreamSettings;->mAdapter:Lcom/android/settings/DreamSettings$DreamInfoAdapter;

    invoke-virtual {v6, v1}, Lcom/android/settings/DreamSettings$DreamInfoAdapter;->addAll(Ljava/util/Collection;)V

    .line 398
    .end local v1           #dreamInfos:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/DreamBackend$DreamInfo;>;"
    :cond_1
    iget-object v6, p0, Lcom/android/settings/DreamSettings;->mMenuItemsWhenEnabled:[Landroid/view/MenuItem;

    if-eqz v6, :cond_4

    .line 399
    iget-object v0, p0, Lcom/android/settings/DreamSettings;->mMenuItemsWhenEnabled:[Landroid/view/MenuItem;

    .local v0, arr$:[Landroid/view/MenuItem;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v5, v0, v3

    .line 400
    .local v5, menuItem:Landroid/view/MenuItem;
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 399
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 389
    .end local v0           #arr$:[Landroid/view/MenuItem;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #menuItem:Landroid/view/MenuItem;
    :cond_2
    iget-object v6, p0, Lcom/android/settings/DreamSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v6}, Landroid/widget/Switch;->isChecked()Z

    move-result v6

    if-eq v6, v2, :cond_0

    .line 390
    iget-object v6, p0, Lcom/android/settings/DreamSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v2}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 402
    .restart local v0       #arr$:[Landroid/view/MenuItem;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :cond_3
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 403
    iget-object v6, p0, Lcom/android/settings/DreamSettings;->mMenuItemsWhenEnabled:[Landroid/view/MenuItem;

    aget-object v7, v6, v8

    if-eqz v2, :cond_5

    const v6, 0x7f020194

    :goto_2
    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 407
    .end local v0           #arr$:[Landroid/view/MenuItem;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_4
    iput-boolean v9, p0, Lcom/android/settings/DreamSettings;->mRefreshing:Z

    .line 408
    return-void

    .line 403
    .restart local v0       #arr$:[Landroid/view/MenuItem;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :cond_5
    const v6, 0x7f020195

    goto :goto_2
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .prologue
    .line 84
    const v0, 0x7f090b1d

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    .line 182
    const-string v2, "onActivityCreated(%s)"

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lcom/android/settings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 185
    invoke-virtual {p0}, Lcom/android/settings/DreamSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 187
    .local v1, listView:Landroid/widget/ListView;
    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 189
    invoke-virtual {p0}, Lcom/android/settings/DreamSettings;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x1020004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 192
    .local v0, emptyView:Landroid/widget/TextView;
    const v2, 0x7f09057c

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 197
    invoke-virtual {p0}, Lcom/android/settings/DreamSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x1030044

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 199
    const/16 v2, 0x30

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 201
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 203
    new-instance v2, Lcom/android/settings/DreamSettings$DreamInfoAdapter;

    iget-object v3, p0, Lcom/android/settings/DreamSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/android/settings/DreamSettings$DreamInfoAdapter;-><init>(Lcom/android/settings/DreamSettings;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/DreamSettings;->mAdapter:Lcom/android/settings/DreamSettings$DreamInfoAdapter;

    .line 204
    iget-object v2, p0, Lcom/android/settings/DreamSettings;->mAdapter:Lcom/android/settings/DreamSettings$DreamInfoAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 206
    new-instance v2, Lcom/android/settings/DreamSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/DreamSettings$2;-><init>(Lcom/android/settings/DreamSettings;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 227
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    .line 89
    const-string v0, "onAttach(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/settings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 91
    iput-object p1, p0, Lcom/android/settings/DreamSettings;->mContext:Landroid/content/Context;

    .line 92
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/16 v5, 0x10

    const/4 v7, 0x1

    const/4 v6, -0x2

    const/4 v4, 0x0

    .line 96
    const-string v2, "onCreate(%s)"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lcom/android/settings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/DreamSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 100
    .local v0, activity:Landroid/app/Activity;
    new-instance v2, Lcom/android/settings/DreamBackend;

    invoke-direct {v2, v0}, Lcom/android/settings/DreamBackend;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/DreamSettings;->mBackend:Lcom/android/settings/DreamBackend;

    .line 101
    new-instance v2, Landroid/widget/Switch;

    invoke-direct {v2, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/DreamSettings;->mSwitch:Landroid/widget/Switch;

    .line 102
    iget-object v2, p0, Lcom/android/settings/DreamSettings;->mSwitch:Landroid/widget/Switch;

    new-instance v3, Lcom/android/settings/DreamSettings$1;

    invoke-direct {v3, p0}, Lcom/android/settings/DreamSettings$1;-><init>(Lcom/android/settings/DreamSettings;)V

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 161
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 163
    .local v1, padding:I
    iget-object v2, p0, Lcom/android/settings/DreamSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4, v4, v1, v4}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    .line 164
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 166
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/DreamSettings;->mSwitch:Landroid/widget/Switch;

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const v5, 0x800015

    invoke-direct {v4, v6, v6, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 171
    invoke-virtual {p0, v7}, Lcom/android/settings/DreamSettings;->setHasOptionsMenu(Z)V

    .line 172
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "dialogId"

    .prologue
    const/4 v4, 0x1

    .line 298
    const-string v0, "onCreateDialog(%s)"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/settings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    if-ne p1, v4, :cond_0

    .line 300
    invoke-direct {p0}, Lcom/android/settings/DreamSettings;->createWhenToDreamDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 301
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 8
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 231
    const-string v0, "onCreateOptionsMenu()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/settings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    iget-object v0, p0, Lcom/android/settings/DreamSettings;->mBackend:Lcom/android/settings/DreamBackend;

    invoke-virtual {v0}, Lcom/android/settings/DreamBackend;->isEnabled()Z

    move-result v4

    .line 236
    .local v4, isEnabled:Z
    const v2, 0x7f09057f

    const/4 v3, 0x2

    new-instance v5, Lcom/android/settings/DreamSettings$3;

    invoke-direct {v5, p0}, Lcom/android/settings/DreamSettings$3;-><init>(Lcom/android/settings/DreamSettings;)V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/DreamSettings;->createMenuItem(Landroid/view/Menu;IIZLjava/lang/Runnable;)Landroid/view/MenuItem;

    move-result-object v6

    .line 251
    .local v6, start:Landroid/view/MenuItem;
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 261
    const v2, 0x7f09057e

    const/4 v3, 0x1

    new-instance v5, Lcom/android/settings/DreamSettings$4;

    invoke-direct {v5, p0}, Lcom/android/settings/DreamSettings$4;-><init>(Lcom/android/settings/DreamSettings;)V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/DreamSettings;->createMenuItem(Landroid/view/Menu;IIZLjava/lang/Runnable;)Landroid/view/MenuItem;

    move-result-object v7

    .line 271
    .local v7, whenToDream:Landroid/view/MenuItem;
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 273
    if-eqz v4, :cond_1

    const v0, 0x7f020194

    :goto_0
    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 277
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/MenuItem;

    const/4 v1, 0x0

    aput-object v6, v0, v1

    const/4 v1, 0x1

    aput-object v7, v0, v1

    iput-object v0, p0, Lcom/android/settings/DreamSettings;->mMenuItemsWhenEnabled:[Landroid/view/MenuItem;

    .line 279
    return-void

    .line 273
    :cond_1
    const v0, 0x7f020195

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/android/settings/DreamSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 177
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 178
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 336
    const-string v0, "onPause()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/settings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 338
    iget-object v0, p0, Lcom/android/settings/DreamSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/DreamSettings;->mPackageReceiver:Lcom/android/settings/DreamSettings$PackageReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 339
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 343
    const-string v1, "onResume()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/settings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 344
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 345
    invoke-direct {p0}, Lcom/android/settings/DreamSettings;->refreshFromBackend()V

    .line 348
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 349
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 350
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 351
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 352
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 353
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 354
    iget-object v1, p0, Lcom/android/settings/DreamSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/DreamSettings;->mPackageReceiver:Lcom/android/settings/DreamSettings$PackageReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 355
    invoke-virtual {p0}, Lcom/android/settings/DreamSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 356
    return-void
.end method
