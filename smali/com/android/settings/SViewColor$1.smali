.class Lcom/android/settings/SViewColor$1;
.super Landroid/content/BroadcastReceiver;
.source "SViewColor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SViewColor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SViewColor;


# direct methods
.method constructor <init>(Lcom/android/settings/SViewColor;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/settings/SViewColor$1;->this$0:Lcom/android/settings/SViewColor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 84
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    const-string v1, "time-zone"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, tz:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/SViewColor$1;->this$0:Lcom/android/settings/SViewColor;

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/SViewColor;->mCalendar:Ljava/util/Calendar;

    .line 88
    .end local v0           #tz:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/settings/SViewColor$1;->this$0:Lcom/android/settings/SViewColor;

    #calls: Lcom/android/settings/SViewColor;->onTimeChanged()V
    invoke-static {v1}, Lcom/android/settings/SViewColor;->access$000(Lcom/android/settings/SViewColor;)V

    .line 89
    return-void
.end method
