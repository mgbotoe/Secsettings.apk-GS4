.class Lcom/android/settings/nearby/RejectListPreference$1;
.super Ljava/lang/Object;
.source "RejectListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/nearby/RejectListPreference;->showDialog(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nearby/RejectListPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/nearby/RejectListPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/settings/nearby/RejectListPreference$1;->this$0:Lcom/android/settings/nearby/RejectListPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 74
    const-string v0, "RejectListPreference"

    const-string v1, "showDialog"

    const-string v2, "No List Items: OK"

    invoke-static {v0, v1, v2}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method
