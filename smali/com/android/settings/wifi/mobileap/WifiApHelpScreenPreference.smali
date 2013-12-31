.class public Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;
.super Landroid/preference/Preference;
.source "WifiApHelpScreenPreference.java"


# static fields
.field private static final MAX_CLIENT:I


# instance fields
.field private mMaxClient:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "10"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;->MAX_CLIENT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 37
    sget v0, Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;->MAX_CLIENT:I

    iput v0, p0, Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;->mMaxClient:I

    .line 41
    const v0, 0x7f0401bc

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;->setLayoutResource(I)V

    .line 42
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 54
    const v2, 0x7f0b04c9

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 55
    .local v0, tetherImg:Landroid/widget/ImageView;
    const v2, 0x7f0b016c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 60
    .local v1, tv:Landroid/widget/TextView;
    const v2, 0x7f020435

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 69
    const v2, 0x7f090408

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 76
    return-void
.end method
