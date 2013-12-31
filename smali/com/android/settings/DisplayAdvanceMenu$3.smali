.class Lcom/android/settings/DisplayAdvanceMenu$3;
.super Ljava/lang/Object;
.source "DisplayAdvanceMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DisplayAdvanceMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DisplayAdvanceMenu;


# direct methods
.method constructor <init>(Lcom/android/settings/DisplayAdvanceMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/android/settings/DisplayAdvanceMenu$3;->this$0:Lcom/android/settings/DisplayAdvanceMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/settings/DisplayAdvanceMenu$3;->this$0:Lcom/android/settings/DisplayAdvanceMenu;

    #calls: Lcom/android/settings/DisplayAdvanceMenu;->updateScreenSaverSummary()V
    invoke-static {v0}, Lcom/android/settings/DisplayAdvanceMenu;->access$100(Lcom/android/settings/DisplayAdvanceMenu;)V

    .line 262
    return-void
.end method
