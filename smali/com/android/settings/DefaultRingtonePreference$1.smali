.class Lcom/android/settings/DefaultRingtonePreference$1;
.super Ljava/lang/Object;
.source "DefaultRingtonePreference.java"

# interfaces
.implements Lcom/android/settings/RingtoneRecommender$OnHighlightResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DefaultRingtonePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DefaultRingtonePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/DefaultRingtonePreference;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/settings/DefaultRingtonePreference$1;->this$0:Lcom/android/settings/DefaultRingtonePreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 139
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 140
    if-eqz p2, :cond_0

    .line 141
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/DefaultRingtonePreference$1;->this$0:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v1}, Lcom/android/settings/DefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/settings/RecommendRingtoneDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 142
    const-string v1, "recommend_offset"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 143
    const-string v1, "ringtoneType"

    iget-object v2, p0, Lcom/android/settings/DefaultRingtonePreference$1;->this$0:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v2}, Lcom/android/settings/DefaultRingtonePreference;->getRingtoneType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 144
    iget-object v1, p0, Lcom/android/settings/DefaultRingtonePreference$1;->this$0:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v1}, Lcom/android/settings/DefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 149
    :cond_0
    return-void
.end method
