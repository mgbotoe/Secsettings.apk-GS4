.class Lcom/android/settings/SettingsTabActivity$HeaderAdapter$2;
.super Ljava/lang/Object;
.source "SettingsTabActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsTabActivity$HeaderAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsTabActivity$HeaderAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1458
    iput-object p1, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$2;->this$0:Lcom/android/settings/SettingsTabActivity$HeaderAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 1461
    invoke-static {}, Lcom/android/settings/SettingsTabActivity;->callSearchMenu()V

    .line 1462
    return-void
.end method
