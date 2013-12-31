.class public Lcom/android/settings/search/SearchListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SearchListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/settings/search/SearchItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final MENU_TYPE_DIABLE_FLAG:I

.field private final MENU_TYPE_MASK_FLAG:I

.field mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mContext:Landroid/content/Context;

.field private mKeyWord:Ljava/lang/String;

.field mOnClickListener:Landroid/view/View$OnClickListener;

.field private final mResourceId:I

.field private mSearchList:[Lcom/android/settings/search/SearchItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;I[Lcom/android/settings/search/SearchItem;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter "objects"
    .parameter "keyWord"

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 27
    iput-object v0, p0, Lcom/android/settings/search/SearchListAdapter;->mContext:Landroid/content/Context;

    .line 28
    iput-object v0, p0, Lcom/android/settings/search/SearchListAdapter;->mSearchList:[Lcom/android/settings/search/SearchItem;

    .line 30
    iput-object v0, p0, Lcom/android/settings/search/SearchListAdapter;->mKeyWord:Ljava/lang/String;

    .line 32
    const/16 v0, 0x100

    iput v0, p0, Lcom/android/settings/search/SearchListAdapter;->MENU_TYPE_DIABLE_FLAG:I

    .line 33
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/search/SearchListAdapter;->MENU_TYPE_MASK_FLAG:I

    .line 267
    new-instance v0, Lcom/android/settings/search/SearchListAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/settings/search/SearchListAdapter$1;-><init>(Lcom/android/settings/search/SearchListAdapter;)V

    iput-object v0, p0, Lcom/android/settings/search/SearchListAdapter;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 283
    new-instance v0, Lcom/android/settings/search/SearchListAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/settings/search/SearchListAdapter$2;-><init>(Lcom/android/settings/search/SearchListAdapter;)V

    iput-object v0, p0, Lcom/android/settings/search/SearchListAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 38
    iput-object p1, p0, Lcom/android/settings/search/SearchListAdapter;->mContext:Landroid/content/Context;

    .line 39
    iput-object p3, p0, Lcom/android/settings/search/SearchListAdapter;->mSearchList:[Lcom/android/settings/search/SearchItem;

    .line 40
    iput p2, p0, Lcom/android/settings/search/SearchListAdapter;->mResourceId:I

    .line 41
    iput-object p4, p0, Lcom/android/settings/search/SearchListAdapter;->mKeyWord:Ljava/lang/String;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/search/SearchListAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/settings/search/SearchListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getPrefixCharForIndianString(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "view"
    .parameter "title"
    .parameter "keyword"

    .prologue
    const/4 v2, 0x0

    .line 253
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 255
    .local v0, paint:Landroid/text/TextPaint;
    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    if-nez p2, :cond_1

    .line 264
    :cond_0
    :goto_0
    return-object v2

    .line 258
    :cond_1
    const/4 v1, 0x0

    .line 259
    .local v1, prefixForIndian:[C
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-static {v0, p2, v3}, Landroid/text/TextUtils;->getPrefixCharForIndian(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C

    move-result-object v1

    .line 261
    if-eqz v1, :cond_0

    .line 264
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method private getSpannableTextIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .parameter "title"
    .parameter "keyword"

    .prologue
    .line 232
    const/4 v1, -0x1

    .line 233
    .local v1, index:I
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "zh"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 234
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 246
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 247
    const/4 v1, -0x1

    .line 249
    :cond_1
    return v1

    .line 236
    :cond_2
    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 237
    .local v2, word:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 238
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 239
    add-int/lit8 v1, v1, 0x1

    .line 240
    goto :goto_0

    .line 242
    :cond_3
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v1, v3

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/search/SearchListAdapter;->mSearchList:[Lcom/android/settings/search/SearchItem;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Lcom/android/settings/search/SearchItem;
    .locals 1
    .parameter "position"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/search/SearchListAdapter;->mSearchList:[Lcom/android/settings/search/SearchItem;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/android/settings/search/SearchListAdapter;->getItem(I)Lcom/android/settings/search/SearchItem;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 34
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 58
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SearchListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f0d003b

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    .line 59
    .local v7, focusColor:I
    new-instance v8, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v8, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 61
    .local v8, foreColorSpan:Landroid/text/style/ForegroundColorSpan;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SearchListAdapter;->mSearchList:[Lcom/android/settings/search/SearchItem;

    move-object/from16 v29, v0

    if-eqz v29, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SearchListAdapter;->mSearchList:[Lcom/android/settings/search/SearchItem;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    if-nez v29, :cond_1

    .line 62
    :cond_0
    const/16 v20, 0x0

    .line 228
    :goto_0
    return-object v20

    .line 65
    :cond_1
    move-object/from16 v20, p2

    .line 67
    .local v20, row:Landroid/view/View;
    if-nez v20, :cond_4

    .line 68
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SearchListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    const-string v30, "layout_inflater"

    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    .line 69
    .local v11, inflater:Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/search/SearchListAdapter;->mResourceId:I

    move/from16 v29, v0

    const/16 v30, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    .line 71
    new-instance v13, Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;-><init>(Lcom/android/settings/search/SearchListAdapter;)V

    .line 72
    .local v13, itemHolder:Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;
    const v29, 0x7f0b03cc

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/TextView;

    move-object/from16 v0, v29

    iput-object v0, v13, Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;->tvMenuTitlte:Landroid/widget/TextView;

    .line 73
    const v29, 0x7f0b03cd

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/TextView;

    move-object/from16 v0, v29

    iput-object v0, v13, Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;->tvMenuSummary:Landroid/widget/TextView;

    .line 75
    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 80
    .end local v11           #inflater:Landroid/view/LayoutInflater;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SearchListAdapter;->mSearchList:[Lcom/android/settings/search/SearchItem;

    move-object/from16 v29, v0

    aget-object v12, v29, p1

    .line 82
    .local v12, item:Lcom/android/settings/search/SearchItem;
    if-eqz v12, :cond_12

    .line 83
    const v29, 0x7f0b03ca

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    .line 84
    .local v18, menuIconLayout:Landroid/widget/LinearLayout;
    invoke-virtual/range {v18 .. v18}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 85
    iget v0, v12, Lcom/android/settings/search/SearchItem;->iconResId:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_2

    .line 86
    new-instance v29, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SearchListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-direct/range {v29 .. v30}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v29

    iput-object v0, v13, Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;->ivMenuIcon:Landroid/widget/ImageView;

    .line 87
    iget-object v0, v13, Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;->ivMenuIcon:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 88
    iget-object v0, v13, Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;->ivMenuIcon:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    const/16 v30, 0x11

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    invoke-virtual/range {v29 .. v33}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 89
    iget-object v0, v13, Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;->ivMenuIcon:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    iget v0, v12, Lcom/android/settings/search/SearchItem;->iconResId:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 90
    iget-object v0, v13, Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;->ivMenuIcon:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 93
    :cond_2
    const v29, 0x7f0b03cb

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/LinearLayout;

    .line 94
    .local v26, titleLayout:Landroid/widget/LinearLayout;
    invoke-virtual/range {v26 .. v26}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 96
    const/4 v14, 0x0

    .line 97
    .local v14, keyWordString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SearchListAdapter;->mKeyWord:Ljava/lang/String;

    move-object/from16 v29, v0

    if-eqz v29, :cond_5

    .line 98
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/search/SearchListAdapter;->mKeyWord:Ljava/lang/String;

    .line 102
    :goto_2
    const/16 v25, 0x0

    .line 103
    .local v25, title:Ljava/lang/String;
    iget-object v0, v12, Lcom/android/settings/search/SearchItem;->title:Ljava/lang/String;

    move-object/from16 v29, v0

    if-nez v29, :cond_6

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SearchListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    iget-wide v0, v12, Lcom/android/settings/search/SearchItem;->titleResId:J

    move-wide/from16 v30, v0

    move-wide/from16 v0, v30

    long-to-int v0, v0

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 108
    :goto_3
    new-instance v22, Landroid/text/SpannableString;

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 109
    .local v22, spanTitle:Landroid/text/Spannable;
    const-string v29, " "

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 110
    .local v5, arrayKey:[Ljava/lang/String;
    const/4 v10, -0x1

    .line 111
    .local v10, indexof:I
    const/16 v16, 0x0

    .line 112
    .local v16, length:I
    const/4 v4, 0x0

    .line 113
    .local v4, addOffset:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_4
    array-length v0, v5

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v9, v0, :cond_9

    .line 114
    iget-object v0, v13, Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;->tvMenuTitlte:Landroid/widget/TextView;

    move-object/from16 v29, v0

    aget-object v30, v5, v9

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v25

    move-object/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/search/SearchListAdapter;->getPrefixCharForIndianString(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 115
    .local v15, keyword:Ljava/lang/String;
    if-nez v15, :cond_7

    .line 116
    aget-object v29, v5, v9

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/settings/search/SearchListAdapter;->getSpannableTextIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 117
    aget-object v29, v5, v9

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v16

    .line 118
    const/16 v29, -0x1

    move/from16 v0, v29

    if-eq v10, v0, :cond_3

    .line 119
    add-int v29, v16, v10

    const/16 v30, 0x12

    move-object/from16 v0, v22

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v8, v10, v1, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 113
    :cond_3
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 77
    .end local v4           #addOffset:I
    .end local v5           #arrayKey:[Ljava/lang/String;
    .end local v9           #i:I
    .end local v10           #indexof:I
    .end local v12           #item:Lcom/android/settings/search/SearchItem;
    .end local v13           #itemHolder:Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;
    .end local v14           #keyWordString:Ljava/lang/String;
    .end local v15           #keyword:Ljava/lang/String;
    .end local v16           #length:I
    .end local v18           #menuIconLayout:Landroid/widget/LinearLayout;
    .end local v22           #spanTitle:Landroid/text/Spannable;
    .end local v25           #title:Ljava/lang/String;
    .end local v26           #titleLayout:Landroid/widget/LinearLayout;
    :cond_4
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;

    .restart local v13       #itemHolder:Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;
    goto/16 :goto_1

    .line 100
    .restart local v12       #item:Lcom/android/settings/search/SearchItem;
    .restart local v14       #keyWordString:Ljava/lang/String;
    .restart local v18       #menuIconLayout:Landroid/widget/LinearLayout;
    .restart local v26       #titleLayout:Landroid/widget/LinearLayout;
    :cond_5
    const-string v14, ""

    goto/16 :goto_2

    .line 106
    .restart local v25       #title:Ljava/lang/String;
    :cond_6
    iget-object v0, v12, Lcom/android/settings/search/SearchItem;->title:Ljava/lang/String;

    move-object/from16 v25, v0

    goto :goto_3

    .line 122
    .restart local v4       #addOffset:I
    .restart local v5       #arrayKey:[Ljava/lang/String;
    .restart local v9       #i:I
    .restart local v10       #indexof:I
    .restart local v15       #keyword:Ljava/lang/String;
    .restart local v16       #length:I
    .restart local v22       #spanTitle:Landroid/text/Spannable;
    :cond_7
    const/16 v23, 0x0

    .line 123
    .local v23, startOffset:I
    const/4 v6, 0x0

    .line 125
    .local v6, endOffset:I
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    .line 126
    .local v17, lowserStr:Ljava/lang/String;
    move-object/from16 v27, v25

    .line 128
    .local v27, upperStr:Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v29

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_8

    .line 129
    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v23

    .line 130
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v29

    add-int v6, v23, v29

    .line 136
    :goto_6
    if-ltz v23, :cond_3

    .line 137
    add-int v29, v23, v4

    add-int v30, v6, v4

    const/16 v31, 0x21

    move-object/from16 v0, v22

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-interface {v0, v8, v1, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 140
    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    .line 141
    add-int/2addr v4, v6

    goto :goto_5

    .line 132
    :cond_8
    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v23

    .line 133
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v29

    add-int v6, v23, v29

    goto :goto_6

    .line 145
    .end local v6           #endOffset:I
    .end local v15           #keyword:Ljava/lang/String;
    .end local v17           #lowserStr:Ljava/lang/String;
    .end local v23           #startOffset:I
    .end local v27           #upperStr:Ljava/lang/String;
    :cond_9
    iget-object v0, v13, Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;->tvMenuTitlte:Landroid/widget/TextView;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, v13, Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;->tvMenuTitlte:Landroid/widget/TextView;

    move-object/from16 v29, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 148
    const/16 v24, 0x0

    .line 149
    .local v24, summary:Ljava/lang/String;
    const/4 v4, 0x0

    .line 150
    iget-object v0, v12, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;

    move-object/from16 v29, v0

    if-nez v29, :cond_c

    .line 151
    iget-wide v0, v12, Lcom/android/settings/search/SearchItem;->summaryResId:J

    move-wide/from16 v29, v0

    const-wide/16 v31, -0x1

    cmp-long v29, v29, v31

    if-eqz v29, :cond_a

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SearchListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    iget-wide v0, v12, Lcom/android/settings/search/SearchItem;->summaryResId:J

    move-wide/from16 v30, v0

    move-wide/from16 v0, v30

    long-to-int v0, v0

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 156
    :cond_a
    :goto_7
    new-instance v21, Landroid/text/SpannableString;

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 158
    .local v21, spanSummary:Landroid/text/Spannable;
    const/4 v9, 0x0

    :goto_8
    array-length v0, v5

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v9, v0, :cond_f

    .line 159
    iget-object v0, v13, Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;->tvMenuSummary:Landroid/widget/TextView;

    move-object/from16 v29, v0

    aget-object v30, v5, v9

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v24

    move-object/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/search/SearchListAdapter;->getPrefixCharForIndianString(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 160
    .restart local v15       #keyword:Ljava/lang/String;
    if-nez v15, :cond_d

    .line 161
    aget-object v29, v5, v9

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/settings/search/SearchListAdapter;->getSpannableTextIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 162
    aget-object v29, v5, v9

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v16

    .line 163
    const/16 v29, -0x1

    move/from16 v0, v29

    if-eq v10, v0, :cond_b

    .line 164
    add-int v29, v16, v10

    const/16 v30, 0x12

    move-object/from16 v0, v21

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v8, v10, v1, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 158
    :cond_b
    :goto_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 154
    .end local v15           #keyword:Ljava/lang/String;
    .end local v21           #spanSummary:Landroid/text/Spannable;
    :cond_c
    iget-object v0, v12, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;

    move-object/from16 v24, v0

    goto :goto_7

    .line 167
    .restart local v15       #keyword:Ljava/lang/String;
    .restart local v21       #spanSummary:Landroid/text/Spannable;
    :cond_d
    const/16 v23, 0x0

    .line 168
    .restart local v23       #startOffset:I
    const/4 v6, 0x0

    .line 170
    .restart local v6       #endOffset:I
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    .line 171
    .restart local v17       #lowserStr:Ljava/lang/String;
    move-object/from16 v27, v24

    .line 173
    .restart local v27       #upperStr:Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v29

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_e

    .line 174
    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v23

    .line 175
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v29

    add-int v6, v23, v29

    .line 181
    :goto_a
    if-ltz v23, :cond_b

    .line 182
    add-int v29, v23, v4

    add-int v30, v6, v4

    const/16 v31, 0x21

    move-object/from16 v0, v21

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-interface {v0, v8, v1, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 185
    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    .line 186
    add-int/2addr v4, v6

    goto :goto_9

    .line 177
    :cond_e
    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v23

    .line 178
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v29

    add-int v6, v23, v29

    goto :goto_a

    .line 190
    .end local v6           #endOffset:I
    .end local v15           #keyword:Ljava/lang/String;
    .end local v17           #lowserStr:Ljava/lang/String;
    .end local v23           #startOffset:I
    .end local v27           #upperStr:Ljava/lang/String;
    :cond_f
    const-string v29, ""

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_10

    .line 191
    iget-object v0, v13, Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;->tvMenuSummary:Landroid/widget/TextView;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v0, v13, Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;->tvMenuSummary:Landroid/widget/TextView;

    move-object/from16 v29, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 195
    :cond_10
    const v29, 0x7f0b03ce

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/LinearLayout;

    .line 196
    .local v19, menuTypeLayout:Landroid/widget/LinearLayout;
    invoke-virtual/range {v19 .. v19}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 198
    iget v0, v12, Lcom/android/settings/search/SearchItem;->menuType:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0x3

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_14

    .line 199
    new-instance v29, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SearchListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-direct/range {v29 .. v30}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v29

    iput-object v0, v13, Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;->checkboxMenuType:Landroid/widget/CheckBox;

    .line 200
    iget-object v0, v13, Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;->checkboxMenuType:Landroid/widget/CheckBox;

    move-object/from16 v29, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 201
    iget-object v0, v13, Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;->checkboxMenuType:Landroid/widget/CheckBox;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setId(I)V

    .line 202
    iget-object v0, v13, Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;->checkboxMenuType:Landroid/widget/CheckBox;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 203
    iget-object v0, v13, Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;->checkboxMenuType:Landroid/widget/CheckBox;

    move-object/from16 v30, v0

    iget v0, v12, Lcom/android/settings/search/SearchItem;->value:I

    move/from16 v29, v0

    if-eqz v29, :cond_13

    const/16 v29, 0x1

    :goto_b
    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 204
    iget-object v0, v13, Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;->checkboxMenuType:Landroid/widget/CheckBox;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SearchListAdapter;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 205
    iget v0, v12, Lcom/android/settings/search/SearchItem;->menuType:I

    move/from16 v29, v0

    move/from16 v0, v29

    and-int/lit16 v0, v0, 0x100

    move/from16 v29, v0

    const/16 v30, 0x100

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_11

    .line 206
    iget-object v0, v13, Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;->checkboxMenuType:Landroid/widget/CheckBox;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 224
    :cond_11
    :goto_c
    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 226
    .end local v4           #addOffset:I
    .end local v5           #arrayKey:[Ljava/lang/String;
    .end local v9           #i:I
    .end local v10           #indexof:I
    .end local v14           #keyWordString:Ljava/lang/String;
    .end local v16           #length:I
    .end local v18           #menuIconLayout:Landroid/widget/LinearLayout;
    .end local v19           #menuTypeLayout:Landroid/widget/LinearLayout;
    .end local v21           #spanSummary:Landroid/text/Spannable;
    .end local v22           #spanTitle:Landroid/text/Spannable;
    .end local v24           #summary:Ljava/lang/String;
    .end local v25           #title:Ljava/lang/String;
    .end local v26           #titleLayout:Landroid/widget/LinearLayout;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SearchListAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v29, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 203
    .restart local v4       #addOffset:I
    .restart local v5       #arrayKey:[Ljava/lang/String;
    .restart local v9       #i:I
    .restart local v10       #indexof:I
    .restart local v14       #keyWordString:Ljava/lang/String;
    .restart local v16       #length:I
    .restart local v18       #menuIconLayout:Landroid/widget/LinearLayout;
    .restart local v19       #menuTypeLayout:Landroid/widget/LinearLayout;
    .restart local v21       #spanSummary:Landroid/text/Spannable;
    .restart local v22       #spanTitle:Landroid/text/Spannable;
    .restart local v24       #summary:Ljava/lang/String;
    .restart local v25       #title:Ljava/lang/String;
    .restart local v26       #titleLayout:Landroid/widget/LinearLayout;
    :cond_13
    const/16 v29, 0x0

    goto :goto_b

    .line 208
    :cond_14
    iget v0, v12, Lcom/android/settings/search/SearchItem;->menuType:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0x3

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_16

    .line 209
    new-instance v29, Landroid/widget/Switch;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SearchListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-direct/range {v29 .. v30}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v29

    iput-object v0, v13, Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;->switchMenuType:Landroid/widget/Switch;

    .line 210
    iget-object v0, v13, Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;->switchMenuType:Landroid/widget/Switch;

    move-object/from16 v29, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 211
    iget-object v0, v13, Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;->switchMenuType:Landroid/widget/Switch;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Landroid/widget/Switch;->setVisibility(I)V

    .line 212
    iget-object v0, v13, Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;->switchMenuType:Landroid/widget/Switch;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setId(I)V

    .line 213
    iget-object v0, v13, Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;->switchMenuType:Landroid/widget/Switch;

    move-object/from16 v30, v0

    iget v0, v12, Lcom/android/settings/search/SearchItem;->value:I

    move/from16 v29, v0

    if-eqz v29, :cond_15

    const/16 v29, 0x1

    :goto_d
    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 214
    iget-object v0, v13, Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;->switchMenuType:Landroid/widget/Switch;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SearchListAdapter;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 215
    iget v0, v12, Lcom/android/settings/search/SearchItem;->menuType:I

    move/from16 v29, v0

    move/from16 v0, v29

    and-int/lit16 v0, v0, 0x100

    move/from16 v29, v0

    const/16 v30, 0x100

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_11

    .line 216
    iget-object v0, v13, Lcom/android/settings/search/SearchListAdapter$SearchItemHolder;->switchMenuType:Landroid/widget/Switch;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Landroid/widget/Switch;->setEnabled(Z)V

    goto/16 :goto_c

    .line 213
    :cond_15
    const/16 v29, 0x0

    goto :goto_d

    .line 218
    :cond_16
    iget v0, v12, Lcom/android/settings/search/SearchItem;->menuType:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0x3

    const/16 v30, 0x3

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_11

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SearchListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    const-string v30, "layout_inflater"

    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    .line 220
    .restart local v11       #inflater:Landroid/view/LayoutInflater;
    const v29, 0x7f040155

    const/16 v30, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v28

    .line 221
    .local v28, view:Landroid/view/View;
    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 222
    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_c
.end method
