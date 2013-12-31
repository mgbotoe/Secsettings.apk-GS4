.class Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchResultComparator;
.super Ljava/lang/Object;
.source "SettingsSearchActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/settingssearch/SettingsSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SearchResultComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/settings/settingssearch/SearchItem;",
        ">;"
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 304
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 305
    iput-object p1, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchResultComparator;->mContext:Landroid/content/Context;

    .line 306
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings/settingssearch/SearchItem;Lcom/android/settings/settingssearch/SearchItem;)I
    .locals 4
    .parameter "a"
    .parameter "b"

    .prologue
    .line 309
    const/4 v0, 0x0

    .line 310
    .local v0, title_a:Ljava/lang/String;
    const/4 v1, 0x0

    .line 312
    .local v1, title_b:Ljava/lang/String;
    iget v2, p1, Lcom/android/settings/settingssearch/SearchItem;->parentType:I

    if-nez v2, :cond_0

    .line 313
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchResultComparator;->mContext:Landroid/content/Context;

    iget-object v3, p1, Lcom/android/settings/settingssearch/SearchItem;->header:Landroid/preference/PreferenceActivity$Header;

    iget v3, v3, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 318
    :goto_0
    iget v2, p2, Lcom/android/settings/settingssearch/SearchItem;->parentType:I

    if-nez v2, :cond_1

    .line 319
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchResultComparator;->mContext:Landroid/content/Context;

    iget-object v3, p2, Lcom/android/settings/settingssearch/SearchItem;->header:Landroid/preference/PreferenceActivity$Header;

    iget v3, v3, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 324
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 315
    :cond_0
    iget-object v2, p1, Lcom/android/settings/settingssearch/SearchItem;->preference:Landroid/preference/Preference;

    invoke-virtual {v2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 321
    :cond_1
    iget-object v2, p2, Lcom/android/settings/settingssearch/SearchItem;->preference:Landroid/preference/Preference;

    invoke-virtual {v2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 302
    check-cast p1, Lcom/android/settings/settingssearch/SearchItem;

    .end local p1
    check-cast p2, Lcom/android/settings/settingssearch/SearchItem;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchResultComparator;->compare(Lcom/android/settings/settingssearch/SearchItem;Lcom/android/settings/settingssearch/SearchItem;)I

    move-result v0

    return v0
.end method
