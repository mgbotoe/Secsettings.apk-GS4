.class public Lcom/android/settings/settingssearch/SearchItem;
.super Ljava/lang/Object;
.source "SearchItem.java"


# instance fields
.field public header:Landroid/preference/PreferenceActivity$Header;

.field public parentHeaderID:J

.field public parentKey:Ljava/lang/String;

.field public parentType:I

.field public preference:Landroid/preference/Preference;


# direct methods
.method public constructor <init>(JLandroid/preference/Preference;)V
    .locals 2
    .parameter "id"
    .parameter "pref"

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/settingssearch/SearchItem;->parentType:I

    .line 27
    iput-wide p1, p0, Lcom/android/settings/settingssearch/SearchItem;->parentHeaderID:J

    .line 28
    iput-object v1, p0, Lcom/android/settings/settingssearch/SearchItem;->parentKey:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/android/settings/settingssearch/SearchItem;->preference:Landroid/preference/Preference;

    .line 30
    iput-object v1, p0, Lcom/android/settings/settingssearch/SearchItem;->header:Landroid/preference/PreferenceActivity$Header;

    .line 31
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Landroid/preference/Preference;)V
    .locals 1
    .parameter "id"
    .parameter "key"
    .parameter "pref"

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/settingssearch/SearchItem;->parentType:I

    .line 35
    iput-wide p1, p0, Lcom/android/settings/settingssearch/SearchItem;->parentHeaderID:J

    .line 36
    iput-object p3, p0, Lcom/android/settings/settingssearch/SearchItem;->parentKey:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lcom/android/settings/settingssearch/SearchItem;->preference:Landroid/preference/Preference;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/settingssearch/SearchItem;->header:Landroid/preference/PreferenceActivity$Header;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/preference/PreferenceActivity$Header;)V
    .locals 3
    .parameter "hd"

    .prologue
    const/4 v2, 0x0

    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/settingssearch/SearchItem;->parentType:I

    .line 19
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/settings/settingssearch/SearchItem;->parentHeaderID:J

    .line 20
    iput-object v2, p0, Lcom/android/settings/settingssearch/SearchItem;->parentKey:Ljava/lang/String;

    .line 21
    iput-object v2, p0, Lcom/android/settings/settingssearch/SearchItem;->preference:Landroid/preference/Preference;

    .line 22
    iput-object p1, p0, Lcom/android/settings/settingssearch/SearchItem;->header:Landroid/preference/PreferenceActivity$Header;

    .line 23
    return-void
.end method
