.class Lcom/android/settings/AirButtonHelp$5$1;
.super Ljava/lang/Object;
.source "AirButtonHelp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AirButtonHelp$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/AirButtonHelp$5;


# direct methods
.method constructor <init>(Lcom/android/settings/AirButtonHelp$5;)V
    .locals 0
    .parameter

    .prologue
    .line 274
    iput-object p1, p0, Lcom/android/settings/AirButtonHelp$5$1;->this$1:Lcom/android/settings/AirButtonHelp$5;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/settings/AirButtonHelp$5$1;->this$1:Lcom/android/settings/AirButtonHelp$5;

    iget-object v0, v0, Lcom/android/settings/AirButtonHelp$5;->this$0:Lcom/android/settings/AirButtonHelp;

    invoke-virtual {v0}, Lcom/android/settings/AirButtonHelp;->onClickEnableSettingsButtonCancel()V

    .line 279
    return-void
.end method
