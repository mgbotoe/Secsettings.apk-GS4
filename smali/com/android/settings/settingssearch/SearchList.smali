.class public Lcom/android/settings/settingssearch/SearchList;
.super Ljava/lang/Object;
.source "SearchList.java"


# instance fields
.field public header:Landroid/preference/PreferenceActivity$Header;

.field public menuList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SearchItem;",
            ">;"
        }
    .end annotation
.end field

.field public parentTap:I


# direct methods
.method public constructor <init>(ILandroid/preference/PreferenceActivity$Header;)V
    .locals 1
    .parameter "tap_index"
    .parameter "header_item"

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/android/settings/settingssearch/SearchList;->parentTap:I

    .line 25
    iput-object p2, p0, Lcom/android/settings/settingssearch/SearchList;->header:Landroid/preference/PreferenceActivity$Header;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    .line 27
    return-void
.end method


# virtual methods
.method public parsingAdditionalPreferenceMenutree(Landroid/content/Context;IIJLjava/lang/String;)Z
    .locals 13
    .parameter "context"
    .parameter "resID"
    .parameter "index"
    .parameter "headerId"
    .parameter "parentKey"

    .prologue
    .line 81
    iget-object v11, p0, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    if-nez v11, :cond_0

    .line 82
    const/4 v11, 0x0

    .line 122
    :goto_0
    return v11

    .line 84
    :cond_0
    add-int/lit8 v8, p3, 0x1

    .line 85
    .local v8, position:I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    .line 87
    .local v7, parser:Landroid/content/res/XmlResourceParser;
    invoke-static {v7}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    .line 88
    .local v3, attrs:Landroid/util/AttributeSet;
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    .line 93
    .local v4, depth:I
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v10

    .local v10, type:I
    const/4 v11, 0x3

    if-ne v10, v11, :cond_2

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v11

    if-le v11, v4, :cond_5

    :cond_2
    const/4 v11, 0x1

    if-eq v10, v11, :cond_5

    .line 95
    const/4 v11, 0x2

    if-ne v10, v11, :cond_1

    .line 99
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 100
    .local v6, name:Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 101
    const-string v11, "PreferenceCategory"

    invoke-virtual {v6, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "UnclickablePreference"

    invoke-virtual {v6, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 106
    :cond_3
    new-instance v9, Landroid/preference/Preference;

    invoke-direct {v9, p1, v3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 107
    .local v9, pref:Landroid/preference/Preference;
    invoke-virtual {v9}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 110
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_4

    const-string v11, "PreferenceScreen"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 111
    invoke-virtual {v9}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v11

    if-nez v11, :cond_4

    invoke-virtual {v9}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 115
    :cond_4
    iget-object v11, p0, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    new-instance v12, Lcom/android/settings/settingssearch/SearchItem;

    move-wide/from16 v0, p4

    move-object/from16 v2, p6

    invoke-direct {v12, v0, v1, v2, v9}, Lcom/android/settings/settingssearch/SearchItem;-><init>(JLjava/lang/String;Landroid/preference/Preference;)V

    invoke-virtual {v11, v8, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    add-int/lit8 v8, v8, 0x1

    .line 117
    goto :goto_1

    .line 118
    .end local v6           #name:Ljava/lang/String;
    .end local v9           #pref:Landroid/preference/Preference;
    .end local v10           #type:I
    :catch_0
    move-exception v5

    .line 119
    .local v5, e:Ljava/lang/Exception;
    const/4 v11, 0x0

    goto :goto_0

    .line 122
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v10       #type:I
    :cond_5
    const/4 v11, 0x1

    goto :goto_0
.end method

.method public parsingPreferenceMenutree(Landroid/content/Context;I)Z
    .locals 13
    .parameter "context"
    .parameter "resID"

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 37
    iget-object v9, p0, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    if-nez v9, :cond_0

    .line 77
    :goto_0
    return v7

    .line 40
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 42
    .local v4, parser:Landroid/content/res/XmlResourceParser;
    invoke-static {v4}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 43
    .local v0, attrs:Landroid/util/AttributeSet;
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    .line 48
    .local v1, depth:I
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    .local v6, type:I
    const/4 v9, 0x3

    if-ne v6, v9, :cond_2

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    if-le v9, v1, :cond_5

    :cond_2
    if-eq v6, v8, :cond_5

    .line 50
    const/4 v9, 0x2

    if-ne v6, v9, :cond_1

    .line 55
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, name:Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 57
    const-string v9, "PreferenceCategory"

    invoke-virtual {v3, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "UnclickablePreference"

    invoke-virtual {v3, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 62
    :cond_3
    new-instance v5, Landroid/preference/Preference;

    invoke-direct {v5, p1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    .local v5, pref:Landroid/preference/Preference;
    invoke-virtual {v5}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 66
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    if-ne v9, v8, :cond_4

    const-string v9, "PreferenceScreen"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 67
    invoke-virtual {v5}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v9

    if-nez v9, :cond_4

    invoke-virtual {v5}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 71
    :cond_4
    iget-object v9, p0, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    new-instance v10, Lcom/android/settings/settingssearch/SearchItem;

    iget-object v11, p0, Lcom/android/settings/settingssearch/SearchList;->header:Landroid/preference/PreferenceActivity$Header;

    iget-wide v11, v11, Landroid/preference/PreferenceActivity$Header;->id:J

    invoke-direct {v10, v11, v12, v5}, Lcom/android/settings/settingssearch/SearchItem;-><init>(JLandroid/preference/Preference;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 73
    .end local v3           #name:Ljava/lang/String;
    .end local v5           #pref:Landroid/preference/Preference;
    .end local v6           #type:I
    :catch_0
    move-exception v2

    .line 74
    .local v2, e:Ljava/lang/Exception;
    goto :goto_0

    .end local v2           #e:Ljava/lang/Exception;
    .restart local v6       #type:I
    :cond_5
    move v7, v8

    .line 77
    goto :goto_0
.end method
