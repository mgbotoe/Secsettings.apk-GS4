.class Lcom/android/settings/FeatureSettings$7;
.super Ljava/lang/Object;
.source "FeatureSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/FeatureSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/FeatureSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/FeatureSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1030
    iput-object p1, p0, Lcom/android/settings/FeatureSettings$7;->this$0:Lcom/android/settings/FeatureSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1033
    iget-object v0, p0, Lcom/android/settings/FeatureSettings$7;->this$0:Lcom/android/settings/FeatureSettings;

    const/4 v1, 0x0

    #calls: Lcom/android/settings/FeatureSettings;->turnOnOPMode(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/FeatureSettings;->access$700(Lcom/android/settings/FeatureSettings;Z)V

    .line 1034
    return-void
.end method
