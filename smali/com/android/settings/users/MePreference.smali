.class public Lcom/android/settings/users/MePreference;
.super Landroid/preference/Preference;
.source "MePreference.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    iput-object p1, p0, Lcom/android/settings/users/MePreference;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 44
    const v4, 0x1020006

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 45
    .local v0, imageView:Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/android/settings/users/MePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 46
    .local v2, resources:Landroid/content/res/Resources;
    const v4, 0x7f0f003f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 47
    .local v3, viewSize:I
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    add-int/lit8 v4, v3, -0x14

    add-int/lit8 v5, v3, -0xa

    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 48
    .local v1, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v4, 0x1

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 49
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 54
    return-void
.end method
