.class Lcom/android/settings/SettingsTabActivity$HeaderAdapter$1;
.super Ljava/lang/Object;
.source "SettingsTabActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 1449
    iput-object p1, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$1;->this$0:Lcom/android/settings/SettingsTabActivity$HeaderAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "action"
    .parameter "event"

    .prologue
    .line 1452
    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 1453
    invoke-static {}, Lcom/android/settings/SettingsTabActivity;->callSearchMenu()V

    .line 1455
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
