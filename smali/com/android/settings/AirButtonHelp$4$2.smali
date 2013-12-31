.class Lcom/android/settings/AirButtonHelp$4$2;
.super Ljava/lang/Object;
.source "AirButtonHelp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AirButtonHelp$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/AirButtonHelp$4;


# direct methods
.method constructor <init>(Lcom/android/settings/AirButtonHelp$4;)V
    .locals 0
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/settings/AirButtonHelp$4$2;->this$1:Lcom/android/settings/AirButtonHelp$4;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/settings/AirButtonHelp$4$2;->this$1:Lcom/android/settings/AirButtonHelp$4;

    iget-object v0, v0, Lcom/android/settings/AirButtonHelp$4;->this$0:Lcom/android/settings/AirButtonHelp;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/AirButtonHelp;->onClickEnableSettingsButtonOK(I)V

    .line 238
    return-void
.end method
