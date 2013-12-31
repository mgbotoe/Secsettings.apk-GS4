.class public Lcom/android/settings/search/SearchMain;
.super Landroid/preference/PreferenceActivity;
.source "SearchMain.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/search/SearchMain$UpdateListThread;
    }
.end annotation


# static fields
.field private static RESTORE_DB:Z

.field private static mArrayResultList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/search/SearchItem;",
            ">;"
        }
    .end annotation
.end field

.field private static mContext:Landroid/content/Context;

.field private static mFilterMenu:Lcom/android/settings/search/SearchFilterMenu;

.field private static mKeyWord:Ljava/lang/String;

.field private static mSearchListAdapter:Lcom/android/settings/search/SearchListAdapter;

.field private static mSearchManger:Lcom/android/settings/search/SettingSearchManager;


# instance fields
.field mOnKeyListener:Landroid/view/View$OnKeyListener;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSearchListView:Landroid/widget/ListView;

.field private mSearchView:Landroid/widget/SearchView;

.field mSearchViewOnKeyListener:Landroid/view/View$OnKeyListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    sput-object v1, Lcom/android/settings/search/SearchMain;->mSearchListAdapter:Lcom/android/settings/search/SearchListAdapter;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/search/SearchMain;->mArrayResultList:Ljava/util/ArrayList;

    .line 49
    sput-object v1, Lcom/android/settings/search/SearchMain;->mKeyWord:Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/search/SearchMain;->RESTORE_DB:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/android/settings/search/SearchMain;->mSearchListView:Landroid/widget/ListView;

    .line 39
    iput-object v0, p0, Lcom/android/settings/search/SearchMain;->mSearchView:Landroid/widget/SearchView;

    .line 78
    new-instance v0, Lcom/android/settings/search/SearchMain$1;

    invoke-direct {v0, p0}, Lcom/android/settings/search/SearchMain$1;-><init>(Lcom/android/settings/search/SearchMain;)V

    iput-object v0, p0, Lcom/android/settings/search/SearchMain;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 180
    new-instance v0, Lcom/android/settings/search/SearchMain$2;

    invoke-direct {v0, p0}, Lcom/android/settings/search/SearchMain$2;-><init>(Lcom/android/settings/search/SearchMain;)V

    iput-object v0, p0, Lcom/android/settings/search/SearchMain;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    .line 200
    new-instance v0, Lcom/android/settings/search/SearchMain$3;

    invoke-direct {v0, p0}, Lcom/android/settings/search/SearchMain$3;-><init>(Lcom/android/settings/search/SearchMain;)V

    iput-object v0, p0, Lcom/android/settings/search/SearchMain;->mSearchViewOnKeyListener:Landroid/view/View$OnKeyListener;

    return-void
.end method

.method private SearchDB()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 322
    sget-object v0, Lcom/android/settings/search/SearchMain;->mSearchManger:Lcom/android/settings/search/SettingSearchManager;

    invoke-virtual {v0}, Lcom/android/settings/search/SettingSearchManager;->getCount_searchinfo()I

    move-result v0

    if-lt v0, v3, :cond_0

    sget-object v0, Lcom/android/settings/search/SearchMain;->mSearchManger:Lcom/android/settings/search/SettingSearchManager;

    invoke-virtual {v0}, Lcom/android/settings/search/SettingSearchManager;->getCount_titleinfo()I

    move-result v0

    if-lt v0, v3, :cond_0

    sget-object v0, Lcom/android/settings/search/SearchMain;->mSearchManger:Lcom/android/settings/search/SettingSearchManager;

    invoke-virtual {v0}, Lcom/android/settings/search/SettingSearchManager;->getCount_searchinfo()I

    move-result v0

    sget-object v1, Lcom/android/settings/search/SearchMain;->mSearchManger:Lcom/android/settings/search/SettingSearchManager;

    invoke-virtual {v1}, Lcom/android/settings/search/SettingSearchManager;->getCount_titleinfo()I

    move-result v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/settings/search/SearchMain;->mSearchManger:Lcom/android/settings/search/SettingSearchManager;

    invoke-virtual {v0}, Lcom/android/settings/search/SettingSearchManager;->changed_language()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    :cond_0
    const-string v0, "SearchMain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " searchinfo count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/search/SearchMain;->mSearchManger:Lcom/android/settings/search/SettingSearchManager;

    invoke-virtual {v2}, Lcom/android/settings/search/SettingSearchManager;->getCount_searchinfo()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " title count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/search/SearchMain;->mSearchManger:Lcom/android/settings/search/SettingSearchManager;

    invoke-virtual {v2}, Lcom/android/settings/search/SettingSearchManager;->getCount_titleinfo()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    sget-object v0, Lcom/android/settings/search/SearchMain;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.RESTORE_SEARCH_DB"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 326
    sput-boolean v3, Lcom/android/settings/search/SearchMain;->RESTORE_DB:Z

    .line 330
    :goto_0
    return-void

    .line 328
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/search/SearchMain;->RESTORE_DB:Z

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/android/settings/search/SearchMain;->mArrayResultList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$002(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    sput-object p0, Lcom/android/settings/search/SearchMain;->mArrayResultList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100()Lcom/android/settings/search/SettingSearchManager;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/android/settings/search/SearchMain;->mSearchManger:Lcom/android/settings/search/SettingSearchManager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/search/SettingSearchManager;)Lcom/android/settings/search/SettingSearchManager;
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    sput-object p0, Lcom/android/settings/search/SearchMain;->mSearchManger:Lcom/android/settings/search/SettingSearchManager;

    return-object p0
.end method

.method static synthetic access$200()Landroid/content/Context;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/android/settings/search/SearchMain;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/android/settings/search/SearchMain;->mKeyWord:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    sput-object p0, Lcom/android/settings/search/SearchMain;->mKeyWord:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings/search/SearchMain;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/settings/search/SearchMain;->updateList(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$502(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    sput-boolean p0, Lcom/android/settings/search/SearchMain;->RESTORE_DB:Z

    return p0
.end method

.method static synthetic access$600(Lcom/android/settings/search/SearchMain;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/settings/search/SearchMain;->displayProgressDialog()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/search/SearchMain;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/settings/search/SearchMain;->mSearchListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$800()Lcom/android/settings/search/SearchListAdapter;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/android/settings/search/SearchMain;->mSearchListAdapter:Lcom/android/settings/search/SearchListAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/search/SearchMain;)Landroid/widget/SearchView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/settings/search/SearchMain;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method private dismisProgressDialog()V
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/settings/search/SearchMain;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/android/settings/search/SearchMain;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 309
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/search/SearchMain;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 311
    :cond_0
    return-void
.end method

.method private displayProgressDialog()V
    .locals 1

    .prologue
    .line 314
    sget-boolean v0, Lcom/android/settings/search/SearchMain;->RESTORE_DB:Z

    if-eqz v0, :cond_0

    .line 315
    invoke-direct {p0}, Lcom/android/settings/search/SearchMain;->showProgressDialog()V

    .line 319
    :goto_0
    return-void

    .line 317
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/search/SearchMain;->dismisProgressDialog()V

    goto :goto_0
.end method

.method private showProgressDialog()V
    .locals 3

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/settings/search/SearchMain;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 300
    const-string v0, ""

    const v1, 0x7f0914bd

    invoke-virtual {p0, v1}, Lcom/android/settings/search/SearchMain;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/SearchMain;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 301
    iget-object v0, p0, Lcom/android/settings/search/SearchMain;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 302
    iget-object v0, p0, Lcom/android/settings/search/SearchMain;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 304
    :cond_0
    return-void
.end method

.method private updateList(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter "keyWord"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/search/SearchItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 254
    .local p1, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/search/SearchItem;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v3, v4, [Lcom/android/settings/search/SearchItem;

    .line 255
    .local v3, searchResultItem:[Lcom/android/settings/search/SearchItem;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 256
    iget-object v4, p0, Lcom/android/settings/search/SearchMain;->mSearchListView:Landroid/widget/ListView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 272
    :goto_0
    return-void

    .line 258
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 259
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/search/SearchItem;

    aput-object v4, v3, v0

    .line 258
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 261
    :cond_1
    new-instance v4, Lcom/android/settings/search/SearchListAdapter;

    sget-object v5, Lcom/android/settings/search/SearchMain;->mContext:Landroid/content/Context;

    const v6, 0x7f040164

    invoke-direct {v4, v5, v6, v3, p2}, Lcom/android/settings/search/SearchListAdapter;-><init>(Landroid/content/Context;I[Lcom/android/settings/search/SearchItem;Ljava/lang/String;)V

    sput-object v4, Lcom/android/settings/search/SearchMain;->mSearchListAdapter:Lcom/android/settings/search/SearchListAdapter;

    .line 263
    sget-object v4, Lcom/android/settings/search/SearchMain;->mSearchListAdapter:Lcom/android/settings/search/SearchListAdapter;

    invoke-virtual {v4}, Lcom/android/settings/search/SearchListAdapter;->getCount()I

    move-result v4

    if-nez v4, :cond_2

    .line 264
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 265
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/settings/search/SearchMain;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09086f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    new-instance v2, Landroid/widget/ArrayAdapter;

    sget-object v4, Lcom/android/settings/search/SearchMain;->mContext:Landroid/content/Context;

    const v5, 0x1090003

    invoke-direct {v2, v4, v5, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 267
    .local v2, mNoResult:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/settings/search/SearchMain;->mSearchListView:Landroid/widget/ListView;

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 269
    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #mNoResult:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_2
    iget-object v4, p0, Lcom/android/settings/search/SearchMain;->mSearchListView:Landroid/widget/ListView;

    sget-object v5, Lcom/android/settings/search/SearchMain;->mSearchListAdapter:Lcom/android/settings/search/SearchListAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x4

    const/4 v8, 0x0

    .line 95
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    sput-object p0, Lcom/android/settings/search/SearchMain;->mContext:Landroid/content/Context;

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/search/SearchMain;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 99
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 101
    new-instance v6, Landroid/widget/SearchView;

    sget-object v7, Lcom/android/settings/search/SearchMain;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/SearchView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/settings/search/SearchMain;->mSearchView:Landroid/widget/SearchView;

    .line 102
    iget-object v6, p0, Lcom/android/settings/search/SearchMain;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v6, v8}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 103
    iget-object v6, p0, Lcom/android/settings/search/SearchMain;->mSearchView:Landroid/widget/SearchView;

    const v7, 0x7f090569

    invoke-virtual {p0, v7}, Lcom/android/settings/search/SearchMain;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v6, p0, Lcom/android/settings/search/SearchMain;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v6, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 105
    iget-object v6, p0, Lcom/android/settings/search/SearchMain;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v6}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 107
    const-string v6, "layout_inflater"

    invoke-virtual {p0, v6}, Lcom/android/settings/search/SearchMain;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 108
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f040163

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 109
    .local v3, row:Landroid/view/View;
    const v6, 0x7f0b03c8

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 110
    .local v4, searchLayout:Landroid/widget/LinearLayout;
    const v6, 0x7f0b03c9

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 111
    .local v5, searchViewLayout:Landroid/widget/LinearLayout;
    iget-object v6, p0, Lcom/android/settings/search/SearchMain;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 112
    iget-object v6, p0, Lcom/android/settings/search/SearchMain;->mSearchViewOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 114
    const v6, 0x1020441

    invoke-virtual {p0, v6}, Lcom/android/settings/search/SearchMain;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 115
    .local v2, listHeader:Landroid/widget/LinearLayout;
    invoke-virtual {v2, v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/search/SearchMain;->getListView()Landroid/widget/ListView;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/search/SearchMain;->mSearchListView:Landroid/widget/ListView;

    .line 118
    iget-object v6, p0, Lcom/android/settings/search/SearchMain;->mSearchListView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/android/settings/search/SearchMain;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 121
    new-instance v6, Lcom/android/settings/search/SettingSearchManager;

    sget-object v7, Lcom/android/settings/search/SearchMain;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/android/settings/search/SettingSearchManager;-><init>(Landroid/content/Context;)V

    sput-object v6, Lcom/android/settings/search/SearchMain;->mSearchManger:Lcom/android/settings/search/SettingSearchManager;

    .line 122
    invoke-direct {p0}, Lcom/android/settings/search/SearchMain;->SearchDB()V

    .line 123
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 152
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 153
    const-string v0, "SearchMain"

    const-string v1, "onDestory() "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/search/SearchMain;->mKeyWord:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 238
    const-string v1, "SearchMain"

    const-string v2, "onKeyDown() return true"

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    const/16 v1, 0x14

    if-ne p1, v1, :cond_0

    .line 242
    iget-object v1, p0, Lcom/android/settings/search/SearchMain;->mSearchView:Landroid/widget/SearchView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/search/SearchMain;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->isFocused()Z

    move-result v1

    if-nez v1, :cond_0

    .line 243
    iget-object v1, p0, Lcom/android/settings/search/SearchMain;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, v3}, Landroid/widget/SearchView;->setFocusable(Z)V

    .line 244
    sget-object v1, Lcom/android/settings/search/SearchMain;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 245
    .local v0, inputManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/settings/search/SearchMain;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 250
    .end local v0           #inputManager:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return v3
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 212
    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    .line 213
    invoke-virtual {p0}, Lcom/android/settings/search/SearchMain;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "multi_window_enabled"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 214
    .local v0, multiWindowValue:I
    if-ne v0, v1, :cond_0

    .line 215
    const-string v2, "SearchMain"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onKeyLongPress() multiWindowValue = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    .end local v0           #multiWindowValue:I
    :goto_0
    return v1

    .line 218
    .restart local v0       #multiWindowValue:I
    :cond_0
    const-string v1, "SearchMain"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyLongPress() multiWindowValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    .end local v0           #multiWindowValue:I
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 226
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 227
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    const-string v0, "SearchMain"

    const-string v1, "onKeyUp() call onToBackMenu()"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-virtual {p0}, Lcom/android/settings/search/SearchMain;->onToBackMenu()V

    .line 230
    const/4 v0, 0x1

    .line 233
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 159
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 164
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 161
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/search/SearchMain;->onToBackMenu()V

    .line 162
    const/4 v0, 0x1

    goto :goto_0

    .line 159
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 142
    const-string v1, "SearchMain"

    const-string v2, "onPause() "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    sget-object v1, Lcom/android/settings/search/SearchMain;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 145
    .local v0, inputManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/settings/search/SearchMain;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 146
    sget-object v1, Lcom/android/settings/search/SearchMain;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/search/SearchMain;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 147
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 148
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 2
    .parameter "keyWord"

    .prologue
    .line 284
    sput-object p1, Lcom/android/settings/search/SearchMain;->mKeyWord:Ljava/lang/String;

    .line 285
    new-instance v0, Lcom/android/settings/search/SearchMain$UpdateListThread;

    invoke-direct {v0, p0}, Lcom/android/settings/search/SearchMain$UpdateListThread;-><init>(Lcom/android/settings/search/SearchMain;)V

    .line 286
    .local v0, mThread:Lcom/android/settings/search/SearchMain$UpdateListThread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/search/SearchMain$UpdateListThread;->setDaemon(Z)V

    .line 287
    invoke-virtual {v0}, Lcom/android/settings/search/SearchMain$UpdateListThread;->start()V

    .line 289
    const/4 v1, 0x0

    return v1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 295
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 127
    const-string v0, "SearchMain"

    const-string v1, "onResume() "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 129
    sget-object v0, Lcom/android/settings/search/SearchMain;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/search/SearchMain;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.settings.SETTING_SEARCH_DB_UPDATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 130
    new-instance v0, Lcom/android/settings/search/SearchFilterMenu;

    sget-object v1, Lcom/android/settings/search/SearchMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/search/SearchFilterMenu;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/search/SearchMain;->mFilterMenu:Lcom/android/settings/search/SearchFilterMenu;

    .line 131
    sget-object v0, Lcom/android/settings/search/SearchMain;->mFilterMenu:Lcom/android/settings/search/SearchFilterMenu;

    invoke-virtual {v0}, Lcom/android/settings/search/SearchFilterMenu;->initDynamicPreferenceRemovekey()V

    .line 132
    sget-object v0, Lcom/android/settings/search/SearchMain;->mKeyWord:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 133
    sget-object v0, Lcom/android/settings/search/SearchMain;->mArrayResultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 134
    sget-object v0, Lcom/android/settings/search/SearchMain;->mSearchManger:Lcom/android/settings/search/SettingSearchManager;

    sget-object v1, Lcom/android/settings/search/SearchMain;->mKeyWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/search/SettingSearchManager;->getTitleInfoDB(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/settings/search/SearchMain;->mArrayResultList:Ljava/util/ArrayList;

    .line 135
    sget-object v0, Lcom/android/settings/search/SearchMain;->mArrayResultList:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/settings/search/SearchMain;->mKeyWord:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/search/SearchMain;->updateList(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 137
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/search/SearchMain;->displayProgressDialog()V

    .line 138
    return-void
.end method

.method public onToBackMenu()V
    .locals 4

    .prologue
    .line 168
    sget-object v2, Lcom/android/settings/search/SearchMain;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0020

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 170
    .local v1, mSettingActivity:Z
    invoke-virtual {p0}, Lcom/android/settings/search/SearchMain;->finish()V

    .line 171
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 172
    .local v0, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 173
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchMain;->startActivity(Landroid/content/Intent;)V

    .line 178
    return-void

    .line 175
    :cond_0
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.SettingsTabActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
