.class Lcom/android/settings/MultiWindowEnabler$3;
.super Ljava/lang/Object;
.source "MultiWindowEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MultiWindowEnabler;->showTalkBackDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MultiWindowEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/MultiWindowEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/settings/MultiWindowEnabler$3;->this$0:Lcom/android/settings/MultiWindowEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/settings/MultiWindowEnabler$3;->this$0:Lcom/android/settings/MultiWindowEnabler;

    #getter for: Lcom/android/settings/MultiWindowEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/MultiWindowEnabler;->access$100(Lcom/android/settings/MultiWindowEnabler;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 159
    return-void
.end method
