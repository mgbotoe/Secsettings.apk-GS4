.class Lcom/android/settings/ToddlerModeSwitchEnabler$ToddlerModeObserver;
.super Landroid/database/ContentObserver;
.source "ToddlerModeSwitchEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ToddlerModeSwitchEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ToddlerModeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ToddlerModeSwitchEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/ToddlerModeSwitchEnabler;)V
    .locals 1
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/settings/ToddlerModeSwitchEnabler$ToddlerModeObserver;->this$0:Lcom/android/settings/ToddlerModeSwitchEnabler;

    .line 201
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 202
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 206
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 207
    iget-object v0, p0, Lcom/android/settings/ToddlerModeSwitchEnabler$ToddlerModeObserver;->this$0:Lcom/android/settings/ToddlerModeSwitchEnabler;

    #getter for: Lcom/android/settings/ToddlerModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v0}, Lcom/android/settings/ToddlerModeSwitchEnabler;->access$200(Lcom/android/settings/ToddlerModeSwitchEnabler;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ToddlerModeSwitchEnabler$ToddlerModeObserver;->this$0:Lcom/android/settings/ToddlerModeSwitchEnabler;

    #getter for: Lcom/android/settings/ToddlerModeSwitchEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/ToddlerModeSwitchEnabler;->access$100(Lcom/android/settings/ToddlerModeSwitchEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/ToddlerModeSwitchEnabler;->isToddlerModeOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 208
    return-void
.end method
