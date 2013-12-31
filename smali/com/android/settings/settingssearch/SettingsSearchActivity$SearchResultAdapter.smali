.class Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchResultAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SettingsSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/settingssearch/SettingsSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SearchResultAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/settings/settingssearch/SearchItem;",
        ">;"
    }
.end annotation


# instance fields
.field low_keyword:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/settingssearch/SettingsSearchActivity;


# direct methods
.method public constructor <init>(Lcom/android/settings/settingssearch/SettingsSearchActivity;Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "textViewResourceId"

    .prologue
    .line 337
    iput-object p1, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchResultAdapter;->this$0:Lcom/android/settings/settingssearch/SettingsSearchActivity;

    .line 338
    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 339
    return-void
.end method

.method private highlighKeyword(Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 6
    .parameter "str"

    .prologue
    .line 396
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 397
    .local v1, ss:Landroid/text/SpannableString;
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 398
    .local v0, low_str:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchResultAdapter;->low_keyword:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 399
    .local v2, start:I
    const/4 v3, -0x1

    if-le v2, v3, :cond_0

    .line 400
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const/high16 v4, -0x1

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget-object v4, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchResultAdapter;->low_keyword:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v2

    const/16 v5, 0x21

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 402
    :cond_0
    return-object v1
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 347
    if-nez p2, :cond_1

    .line 348
    iget-object v5, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchResultAdapter;->this$0:Lcom/android/settings/settingssearch/SettingsSearchActivity;

    invoke-virtual {v5}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 349
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f040169

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 350
    new-instance v0, Lcom/android/settings/settingssearch/SettingsSearchActivity$ViewHolder;

    invoke-direct {v0}, Lcom/android/settings/settingssearch/SettingsSearchActivity$ViewHolder;-><init>()V

    .line 352
    .local v0, holder:Lcom/android/settings/settingssearch/SettingsSearchActivity$ViewHolder;
    const v5, 0x7f0b008a

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Lcom/android/settings/settingssearch/SettingsSearchActivity$ViewHolder;->title:Landroid/widget/TextView;

    .line 353
    const v5, 0x7f0b02f2

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Lcom/android/settings/settingssearch/SettingsSearchActivity$ViewHolder;->summary:Landroid/widget/TextView;

    .line 355
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 361
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchResultAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/settingssearch/SearchItem;

    .line 362
    .local v2, item:Lcom/android/settings/settingssearch/SearchItem;
    iget v5, v2, Lcom/android/settings/settingssearch/SearchItem;->parentType:I

    if-nez v5, :cond_3

    .line 363
    iget-object v5, v2, Lcom/android/settings/settingssearch/SearchItem;->header:Landroid/preference/PreferenceActivity$Header;

    iget v5, v5, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    if-eqz v5, :cond_0

    .line 364
    iget-object v5, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchResultAdapter;->this$0:Lcom/android/settings/settingssearch/SettingsSearchActivity;

    iget-object v6, v2, Lcom/android/settings/settingssearch/SearchItem;->header:Landroid/preference/PreferenceActivity$Header;

    iget v6, v6, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    invoke-virtual {v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchResultAdapter;->highlighKeyword(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v4

    .line 365
    .local v4, title:Landroid/text/SpannableString;
    iget-object v5, v0, Lcom/android/settings/settingssearch/SettingsSearchActivity$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    .end local v4           #title:Landroid/text/SpannableString;
    :cond_0
    iget-object v5, v2, Lcom/android/settings/settingssearch/SearchItem;->header:Landroid/preference/PreferenceActivity$Header;

    iget v5, v5, Landroid/preference/PreferenceActivity$Header;->summaryRes:I

    if-eqz v5, :cond_2

    .line 368
    iget-object v5, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchResultAdapter;->this$0:Lcom/android/settings/settingssearch/SettingsSearchActivity;

    iget-object v6, v2, Lcom/android/settings/settingssearch/SearchItem;->header:Landroid/preference/PreferenceActivity$Header;

    iget v6, v6, Landroid/preference/PreferenceActivity$Header;->summaryRes:I

    invoke-virtual {v5, v6}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchResultAdapter;->highlighKeyword(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v3

    .line 369
    .local v3, summary:Landroid/text/SpannableString;
    iget-object v5, v0, Lcom/android/settings/settingssearch/SettingsSearchActivity$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    iget-object v5, v0, Lcom/android/settings/settingssearch/SettingsSearchActivity$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 392
    .end local v3           #summary:Landroid/text/SpannableString;
    :goto_1
    return-object p2

    .line 358
    .end local v0           #holder:Lcom/android/settings/settingssearch/SettingsSearchActivity$ViewHolder;
    .end local v2           #item:Lcom/android/settings/settingssearch/SearchItem;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchActivity$ViewHolder;

    .restart local v0       #holder:Lcom/android/settings/settingssearch/SettingsSearchActivity$ViewHolder;
    goto :goto_0

    .line 372
    .restart local v2       #item:Lcom/android/settings/settingssearch/SearchItem;
    :cond_2
    iget-object v5, v0, Lcom/android/settings/settingssearch/SettingsSearchActivity$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 375
    :cond_3
    iget-object v5, v2, Lcom/android/settings/settingssearch/SearchItem;->preference:Landroid/preference/Preference;

    invoke-virtual {v5}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 376
    iget-object v5, v2, Lcom/android/settings/settingssearch/SearchItem;->preference:Landroid/preference/Preference;

    invoke-virtual {v5}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchResultAdapter;->highlighKeyword(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v4

    .line 377
    .restart local v4       #title:Landroid/text/SpannableString;
    iget-object v5, v0, Lcom/android/settings/settingssearch/SettingsSearchActivity$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    .end local v4           #title:Landroid/text/SpannableString;
    :cond_4
    iget-object v5, v2, Lcom/android/settings/settingssearch/SearchItem;->preference:Landroid/preference/Preference;

    invoke-virtual {v5}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 380
    iget-object v5, v2, Lcom/android/settings/settingssearch/SearchItem;->preference:Landroid/preference/Preference;

    invoke-virtual {v5}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchResultAdapter;->highlighKeyword(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v3

    .line 381
    .restart local v3       #summary:Landroid/text/SpannableString;
    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_5

    .line 382
    iget-object v5, v0, Lcom/android/settings/settingssearch/SettingsSearchActivity$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 384
    :cond_5
    iget-object v5, v0, Lcom/android/settings/settingssearch/SettingsSearchActivity$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    iget-object v5, v0, Lcom/android/settings/settingssearch/SettingsSearchActivity$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 388
    .end local v3           #summary:Landroid/text/SpannableString;
    :cond_6
    iget-object v5, v0, Lcom/android/settings/settingssearch/SettingsSearchActivity$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setKeyword(Ljava/lang/String;)V
    .locals 0
    .parameter "low_str"

    .prologue
    .line 342
    iput-object p1, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchResultAdapter;->low_keyword:Ljava/lang/String;

    .line 343
    return-void
.end method
