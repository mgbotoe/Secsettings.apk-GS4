.class Lcom/android/settings/AirViewSettings$5;
.super Ljava/lang/Object;
.source "AirViewSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AirViewSettings;->makeTalkBackDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AirViewSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/AirViewSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 479
    iput-object p1, p0, Lcom/android/settings/AirViewSettings$5;->this$0:Lcom/android/settings/AirViewSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/settings/AirViewSettings$5;->this$0:Lcom/android/settings/AirViewSettings;

    #calls: Lcom/android/settings/AirViewSettings;->updateAirviewSwitch()V
    invoke-static {v0}, Lcom/android/settings/AirViewSettings;->access$600(Lcom/android/settings/AirViewSettings;)V

    .line 483
    return-void
.end method
