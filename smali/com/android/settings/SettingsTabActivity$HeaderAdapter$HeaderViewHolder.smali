.class Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;
.super Ljava/lang/Object;
.source "SettingsTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsTabActivity$HeaderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderViewHolder"
.end annotation


# instance fields
.field icon:Landroid/widget/ImageView;

.field summary:Landroid/widget/TextView;

.field switch_:Landroid/widget/Switch;

.field title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1218
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/SettingsTabActivity$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1218
    invoke-direct {p0}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;-><init>()V

    return-void
.end method
