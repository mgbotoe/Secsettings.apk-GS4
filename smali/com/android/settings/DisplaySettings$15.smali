.class Lcom/android/settings/DisplaySettings$15;
.super Ljava/lang/Object;
.source "DisplaySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DisplaySettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DisplaySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1508
    iput-object p1, p0, Lcom/android/settings/DisplaySettings$15;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1511
    iget-object v0, p0, Lcom/android/settings/DisplaySettings$15;->this$0:Lcom/android/settings/DisplaySettings;

    #calls: Lcom/android/settings/DisplaySettings;->updateScreenSaverSummary()V
    invoke-static {v0}, Lcom/android/settings/DisplaySettings;->access$800(Lcom/android/settings/DisplaySettings;)V

    .line 1512
    return-void
.end method
