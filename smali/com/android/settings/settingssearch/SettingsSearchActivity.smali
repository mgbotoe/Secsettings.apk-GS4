.class public Lcom/android/settings/settingssearch/SettingsSearchActivity;
.super Landroid/preference/PreferenceActivity;
.source "SettingsSearchActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchResultAdapter;,
        Lcom/android/settings/settingssearch/SettingsSearchActivity$ViewHolder;,
        Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchResultComparator;
    }
.end annotation


# instance fields
.field private mFullMenuList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SearchList;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchResultAdapter:Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchResultAdapter;

.field private mSearchResultComparator:Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchResultComparator;

.field private mSearchUtils:Lcom/android/settings/settingssearch/SettingsSearchUtils;

.field mkeywordInputTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 277
    new-instance v0, Lcom/android/settings/settingssearch/SettingsSearchActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/settingssearch/SettingsSearchActivity$1;-><init>(Lcom/android/settings/settingssearch/SettingsSearchActivity;)V

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mkeywordInputTextWatcher:Landroid/text/TextWatcher;

    .line 334
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/settingssearch/SettingsSearchActivity;)Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchResultAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchResultAdapter:Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchResultAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/settingssearch/SettingsSearchActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->search(Ljava/lang/String;)V

    return-void
.end method

.method private makeSearchList()V
    .locals 13

    .prologue
    .line 62
    const-string v10, "SettingsSearchActivity"

    const-string v11, "=== makeSearchList start ==="

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mFullMenuList:Ljava/util/ArrayList;

    .line 64
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v4, headerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/PreferenceActivity$Header;>;"
    const v10, 0x7f070024

    invoke-virtual {p0, v10, v4}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->loadHeadersFromResource(ILjava/util/List;)V

    .line 67
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 68
    .local v1, connection_index:I
    const v10, 0x7f07002b

    invoke-virtual {p0, v10, v4}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->loadHeadersFromResource(ILjava/util/List;)V

    .line 69
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 70
    .local v2, device_index:I
    const v10, 0x7f070008

    invoke-virtual {p0, v10, v4}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->loadHeadersFromResource(ILjava/util/List;)V

    .line 71
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 72
    .local v0, accounts_index:I
    const v10, 0x7f070056

    invoke-virtual {p0, v10, v4}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->loadHeadersFromResource(ILjava/util/List;)V

    .line 73
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 75
    .local v7, management_index:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_8

    .line 76
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceActivity$Header;

    .line 77
    .local v3, header:Landroid/preference/PreferenceActivity$Header;
    iget-object v10, v3, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-nez v10, :cond_0

    iget-object v10, v3, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-eqz v10, :cond_1

    :cond_0
    iget v10, v3, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    if-nez v10, :cond_2

    .line 75
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 80
    :cond_2
    iget-object v10, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchUtils:Lcom/android/settings/settingssearch/SettingsSearchUtils;

    invoke-virtual {v10, v3}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->isAvailableHeader(Landroid/preference/PreferenceActivity$Header;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 85
    const/4 v9, 0x0

    .line 86
    .local v9, tap_index:I
    if-ge v5, v1, :cond_5

    .line 87
    const/4 v9, 0x0

    .line 95
    :cond_3
    :goto_2
    iget-object v10, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchUtils:Lcom/android/settings/settingssearch/SettingsSearchUtils;

    iget-wide v11, v3, Landroid/preference/PreferenceActivity$Header;->id:J

    invoke-virtual {v10, v11, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->getPreferenceListRes(J)I

    move-result v8

    .line 97
    .local v8, preference_resID:I
    new-instance v6, Lcom/android/settings/settingssearch/SearchList;

    invoke-direct {v6, v9, v3}, Lcom/android/settings/settingssearch/SearchList;-><init>(ILandroid/preference/PreferenceActivity$Header;)V

    .line 98
    .local v6, list:Lcom/android/settings/settingssearch/SearchList;
    const/4 v10, -0x1

    if-eq v8, v10, :cond_4

    .line 99
    invoke-virtual {v6, p0, v8}, Lcom/android/settings/settingssearch/SearchList;->parsingPreferenceMenutree(Landroid/content/Context;I)Z

    .line 100
    iget-object v10, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchUtils:Lcom/android/settings/settingssearch/SettingsSearchUtils;

    invoke-virtual {v10, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->addOrRemoveSearchableOptions(Lcom/android/settings/settingssearch/SearchList;)V

    .line 102
    :cond_4
    iget-object v10, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mFullMenuList:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 88
    .end local v6           #list:Lcom/android/settings/settingssearch/SearchList;
    .end local v8           #preference_resID:I
    :cond_5
    if-ge v5, v2, :cond_6

    .line 89
    const/4 v9, 0x1

    goto :goto_2

    .line 90
    :cond_6
    if-ge v5, v0, :cond_7

    .line 91
    const/4 v9, 0x2

    goto :goto_2

    .line 92
    :cond_7
    if-ge v5, v7, :cond_3

    .line 93
    const/4 v9, 0x3

    goto :goto_2

    .line 106
    .end local v3           #header:Landroid/preference/PreferenceActivity$Header;
    .end local v9           #tap_index:I
    :cond_8
    const-string v10, "SettingsSearchActivity"

    const-string v11, "=== makeSearchList finish ==="

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void
.end method

.method private search(Ljava/lang/String;)V
    .locals 12
    .parameter "str"

    .prologue
    .line 110
    const-string v9, "SettingsSearchActivity"

    const-string v10, "=== search start ==="

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, keyword:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchResultAdapter:Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchResultAdapter;

    invoke-virtual {v9}, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchResultAdapter;->clear()V

    .line 113
    iget-object v9, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchResultAdapter:Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchResultAdapter;

    invoke-virtual {v9, v3}, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchResultAdapter;->setKeyword(Ljava/lang/String;)V

    .line 115
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v9, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mFullMenuList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v1, v9, :cond_7

    .line 117
    iget-object v9, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mFullMenuList:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/settingssearch/SearchList;

    .line 119
    .local v4, list:Lcom/android/settings/settingssearch/SearchList;
    const/4 v0, 0x0

    .line 120
    .local v0, headerMatchFlag:Z
    iget-object v9, v4, Lcom/android/settings/settingssearch/SearchList;->header:Landroid/preference/PreferenceActivity$Header;

    iget v9, v9, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    if-eqz v9, :cond_0

    .line 121
    iget-object v9, v4, Lcom/android/settings/settingssearch/SearchList;->header:Landroid/preference/PreferenceActivity$Header;

    iget v9, v9, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    invoke-virtual {p0, v9}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 122
    .local v8, title:Ljava/lang/String;
    invoke-virtual {v8, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 123
    const/4 v0, 0x1

    .line 126
    .end local v8           #title:Ljava/lang/String;
    :cond_0
    iget-object v9, v4, Lcom/android/settings/settingssearch/SearchList;->header:Landroid/preference/PreferenceActivity$Header;

    iget v9, v9, Landroid/preference/PreferenceActivity$Header;->summaryRes:I

    if-eqz v9, :cond_1

    .line 127
    iget-object v9, v4, Lcom/android/settings/settingssearch/SearchList;->header:Landroid/preference/PreferenceActivity$Header;

    iget v9, v9, Landroid/preference/PreferenceActivity$Header;->summaryRes:I

    invoke-virtual {p0, v9}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 128
    .local v7, summary:Ljava/lang/String;
    invoke-virtual {v7, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 129
    const/4 v0, 0x1

    .line 132
    .end local v7           #summary:Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_2

    .line 133
    iget-object v9, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchResultAdapter:Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchResultAdapter;

    new-instance v10, Lcom/android/settings/settingssearch/SearchItem;

    iget-object v11, v4, Lcom/android/settings/settingssearch/SearchList;->header:Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v10, v11}, Lcom/android/settings/settingssearch/SearchItem;-><init>(Landroid/preference/PreferenceActivity$Header;)V

    invoke-virtual {v9, v10}, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchResultAdapter;->add(Ljava/lang/Object;)V

    .line 138
    :cond_2
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    iget-object v9, v4, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_6

    .line 139
    iget-object v9, v4, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/settingssearch/SearchItem;

    iget-object v5, v9, Lcom/android/settings/settingssearch/SearchItem;->preference:Landroid/preference/Preference;

    .line 140
    .local v5, pref:Landroid/preference/Preference;
    const/4 v6, 0x0

    .line 141
    .local v6, prefMatchFlag:Z
    invoke-virtual {v5}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 142
    invoke-virtual {v5}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 143
    .restart local v8       #title:Ljava/lang/String;
    invoke-virtual {v8, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 144
    const/4 v6, 0x1

    .line 147
    .end local v8           #title:Ljava/lang/String;
    :cond_3
    invoke-virtual {v5}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 148
    invoke-virtual {v5}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 149
    .restart local v7       #summary:Ljava/lang/String;
    invoke-virtual {v7, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 150
    const/4 v6, 0x1

    .line 153
    .end local v7           #summary:Ljava/lang/String;
    :cond_4
    if-eqz v6, :cond_5

    .line 154
    iget-object v9, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchResultAdapter:Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchResultAdapter;

    iget-object v10, v4, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchResultAdapter;->add(Ljava/lang/Object;)V

    .line 138
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 115
    .end local v5           #pref:Landroid/preference/Preference;
    .end local v6           #prefMatchFlag:Z
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 160
    .end local v0           #headerMatchFlag:Z
    .end local v2           #j:I
    .end local v4           #list:Lcom/android/settings/settingssearch/SearchList;
    :cond_7
    iget-object v9, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchResultAdapter:Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchResultAdapter;

    iget-object v10, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchResultComparator:Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchResultComparator;

    invoke-virtual {v9, v10}, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchResultAdapter;->sort(Ljava/util/Comparator;)V

    .line 161
    const-string v9, "SettingsSearchActivity"

    const-string v10, "=== search finish ==="

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    .line 42
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    new-instance v3, Lcom/android/settings/settingssearch/SettingsSearchUtils;

    invoke-direct {v3, p0}, Lcom/android/settings/settingssearch/SettingsSearchUtils;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchUtils:Lcom/android/settings/settingssearch/SettingsSearchUtils;

    .line 45
    new-instance v3, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchResultAdapter;

    invoke-direct {v3, p0, p0, v6}, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchResultAdapter;-><init>(Lcom/android/settings/settingssearch/SettingsSearchActivity;Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchResultAdapter:Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchResultAdapter;

    .line 46
    new-instance v3, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchResultComparator;

    invoke-direct {v3, p0}, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchResultComparator;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchResultComparator:Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchResultComparator;

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 49
    .local v2, listview:Landroid/widget/ListView;
    iget-object v3, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchResultAdapter:Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchResultAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 50
    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 52
    const v3, 0x1020441

    invoke-virtual {p0, v3}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 53
    .local v1, listHeader:Landroid/widget/LinearLayout;
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 54
    .local v0, keywordInput:Landroid/widget/EditText;
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    iget-object v3, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mkeywordInputTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 56
    invoke-virtual {v1, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 57
    invoke-direct {p0}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->makeSearchList()V

    .line 59
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 12
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 166
    iget-object v7, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchResultAdapter:Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchResultAdapter;

    invoke-virtual {v7, p3}, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchResultAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/settingssearch/SearchItem;

    .line 168
    .local v3, item:Lcom/android/settings/settingssearch/SearchItem;
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 169
    .local v2, intent:Landroid/content/Intent;
    const-string v7, "com.android.settings"

    const-string v8, "com.android.settings.SettingsTabActivity"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const v7, 0x10008000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 172
    iget v7, v3, Lcom/android/settings/settingssearch/SearchItem;->parentType:I

    if-nez v7, :cond_3

    .line 174
    const/4 v6, 0x0

    .line 175
    .local v6, tab_index:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v7, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mFullMenuList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_1

    .line 176
    iget-object v7, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mFullMenuList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/settingssearch/SearchList;

    iget-object v7, v7, Lcom/android/settings/settingssearch/SearchList;->header:Landroid/preference/PreferenceActivity$Header;

    iget-wide v7, v7, Landroid/preference/PreferenceActivity$Header;->id:J

    iget-object v9, v3, Lcom/android/settings/settingssearch/SearchItem;->header:Landroid/preference/PreferenceActivity$Header;

    iget-wide v9, v9, Landroid/preference/PreferenceActivity$Header;->id:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_0

    .line 177
    iget-object v7, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mFullMenuList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/settingssearch/SearchList;

    iget v6, v7, Lcom/android/settings/settingssearch/SearchList;->parentTap:I

    .line 175
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 181
    :cond_1
    iget-object v7, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchUtils:Lcom/android/settings/settingssearch/SettingsSearchUtils;

    const-string v7, "extra_from_search"

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 182
    iget-object v7, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchUtils:Lcom/android/settings/settingssearch/SettingsSearchUtils;

    const-string v7, "extra_parent_type"

    iget v8, v3, Lcom/android/settings/settingssearch/SearchItem;->parentType:I

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 183
    iget-object v7, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchUtils:Lcom/android/settings/settingssearch/SettingsSearchUtils;

    const-string v7, "extra_tab_id"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 184
    iget-object v7, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchUtils:Lcom/android/settings/settingssearch/SettingsSearchUtils;

    const-string v7, "extra_header_id"

    iget-object v8, v3, Lcom/android/settings/settingssearch/SearchItem;->header:Landroid/preference/PreferenceActivity$Header;

    iget-wide v8, v8, Landroid/preference/PreferenceActivity$Header;->id:J

    invoke-virtual {v2, v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 186
    invoke-virtual {p0, v2}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->startActivity(Landroid/content/Intent;)V

    .line 275
    .end local v1           #i:I
    .end local v6           #tab_index:I
    :cond_2
    :goto_1
    return-void

    .line 205
    :cond_3
    iget v7, v3, Lcom/android/settings/settingssearch/SearchItem;->parentType:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_6

    .line 207
    const/4 v4, 0x0

    .line 208
    .local v4, parentHeader:Landroid/preference/PreferenceActivity$Header;
    const/4 v6, 0x0

    .line 209
    .restart local v6       #tab_index:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    iget-object v7, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mFullMenuList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_4

    .line 210
    iget-wide v8, v3, Lcom/android/settings/settingssearch/SearchItem;->parentHeaderID:J

    iget-object v7, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mFullMenuList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/settingssearch/SearchList;

    iget-object v7, v7, Lcom/android/settings/settingssearch/SearchList;->header:Landroid/preference/PreferenceActivity$Header;

    iget-wide v10, v7, Landroid/preference/PreferenceActivity$Header;->id:J

    cmp-long v7, v8, v10

    if-nez v7, :cond_5

    .line 211
    iget-object v7, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mFullMenuList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/settingssearch/SearchList;

    iget-object v4, v7, Lcom/android/settings/settingssearch/SearchList;->header:Landroid/preference/PreferenceActivity$Header;

    .line 212
    iget-object v7, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mFullMenuList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/settingssearch/SearchList;

    iget v6, v7, Lcom/android/settings/settingssearch/SearchList;->parentTap:I

    .line 216
    :cond_4
    iget-object v7, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchUtils:Lcom/android/settings/settingssearch/SettingsSearchUtils;

    const-string v7, "extra_from_search"

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 217
    iget-object v7, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchUtils:Lcom/android/settings/settingssearch/SettingsSearchUtils;

    const-string v7, "extra_parent_type"

    iget v8, v3, Lcom/android/settings/settingssearch/SearchItem;->parentType:I

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 218
    iget-object v7, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchUtils:Lcom/android/settings/settingssearch/SettingsSearchUtils;

    const-string v7, "extra_tab_id"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 219
    iget-object v7, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchUtils:Lcom/android/settings/settingssearch/SettingsSearchUtils;

    const-string v7, "extra_header_id"

    iget-wide v8, v4, Landroid/preference/PreferenceActivity$Header;->id:J

    invoke-virtual {v2, v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 221
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 223
    .local v0, fragment_bundle:Landroid/os/Bundle;
    iget-object v7, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchUtils:Lcom/android/settings/settingssearch/SettingsSearchUtils;

    const-string v7, "extra_parent_preference_key"

    iget-object v8, v3, Lcom/android/settings/settingssearch/SearchItem;->preference:Landroid/preference/Preference;

    invoke-virtual {v8}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v7, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchUtils:Lcom/android/settings/settingssearch/SettingsSearchUtils;

    const-string v7, "extra_fragment_bundle_key"

    invoke-virtual {v2, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 226
    invoke-virtual {p0, v2}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 209
    .end local v0           #fragment_bundle:Landroid/os/Bundle;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 245
    .end local v1           #i:I
    .end local v4           #parentHeader:Landroid/preference/PreferenceActivity$Header;
    .end local v6           #tab_index:I
    :cond_6
    iget v7, v3, Lcom/android/settings/settingssearch/SearchItem;->parentType:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 247
    const/4 v4, 0x0

    .line 248
    .restart local v4       #parentHeader:Landroid/preference/PreferenceActivity$Header;
    const/4 v6, 0x0

    .line 249
    .restart local v6       #tab_index:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    iget-object v7, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mFullMenuList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_7

    .line 250
    iget-wide v8, v3, Lcom/android/settings/settingssearch/SearchItem;->parentHeaderID:J

    iget-object v7, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mFullMenuList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/settingssearch/SearchList;

    iget-object v7, v7, Lcom/android/settings/settingssearch/SearchList;->header:Landroid/preference/PreferenceActivity$Header;

    iget-wide v10, v7, Landroid/preference/PreferenceActivity$Header;->id:J

    cmp-long v7, v8, v10

    if-nez v7, :cond_8

    .line 251
    iget-object v7, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mFullMenuList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/settingssearch/SearchList;

    iget-object v4, v7, Lcom/android/settings/settingssearch/SearchList;->header:Landroid/preference/PreferenceActivity$Header;

    .line 252
    iget-object v7, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mFullMenuList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/settingssearch/SearchList;

    iget v6, v7, Lcom/android/settings/settingssearch/SearchList;->parentTap:I

    .line 256
    :cond_7
    iget-object v7, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchUtils:Lcom/android/settings/settingssearch/SettingsSearchUtils;

    const-string v7, "extra_from_search"

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 257
    iget-object v7, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchUtils:Lcom/android/settings/settingssearch/SettingsSearchUtils;

    const-string v7, "extra_parent_type"

    iget v8, v3, Lcom/android/settings/settingssearch/SearchItem;->parentType:I

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 258
    iget-object v7, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchUtils:Lcom/android/settings/settingssearch/SettingsSearchUtils;

    const-string v7, "extra_tab_id"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 259
    iget-object v7, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchUtils:Lcom/android/settings/settingssearch/SettingsSearchUtils;

    const-string v7, "extra_header_id"

    iget-wide v8, v4, Landroid/preference/PreferenceActivity$Header;->id:J

    invoke-virtual {v2, v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 261
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 262
    .local v5, parent_fragment_bundle:Landroid/os/Bundle;
    iget-object v7, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchUtils:Lcom/android/settings/settingssearch/SettingsSearchUtils;

    const-string v7, "extra_parent_preference_key"

    iget-object v8, v3, Lcom/android/settings/settingssearch/SearchItem;->parentKey:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v7, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchUtils:Lcom/android/settings/settingssearch/SettingsSearchUtils;

    const-string v7, "extra_fragment_bundle_key"

    invoke-virtual {v2, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 265
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 266
    .restart local v0       #fragment_bundle:Landroid/os/Bundle;
    iget-object v7, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchUtils:Lcom/android/settings/settingssearch/SettingsSearchUtils;

    const-string v7, "extra_parent_preference_key"

    iget-object v8, v3, Lcom/android/settings/settingssearch/SearchItem;->preference:Landroid/preference/Preference;

    invoke-virtual {v8}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v7, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchUtils:Lcom/android/settings/settingssearch/SettingsSearchUtils;

    const-string v7, "extra_second_fragment_bundle_key"

    invoke-virtual {v2, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 269
    invoke-virtual {p0, v2}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->startActivity(Landroid/content/Intent;)V

    .line 271
    const-string v7, "SettingsSearchActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PARENT_TYPE_PREFERENCE, parent key : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Lcom/android/settings/settingssearch/SearchItem;->parentKey:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , key : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Lcom/android/settings/settingssearch/SearchItem;->preference:Landroid/preference/Preference;

    invoke-virtual {v9}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 249
    .end local v0           #fragment_bundle:Landroid/os/Bundle;
    .end local v5           #parent_fragment_bundle:Landroid/os/Bundle;
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3
.end method
