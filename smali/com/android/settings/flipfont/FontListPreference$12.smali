.class Lcom/android/settings/flipfont/FontListPreference$12;
.super Ljava/lang/Object;
.source "FontListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/flipfont/FontListPreference;->badFontDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/flipfont/FontListPreference;

.field final synthetic val$deletePackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/flipfont/FontListPreference;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1170
    iput-object p1, p0, Lcom/android/settings/flipfont/FontListPreference$12;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    iput-object p2, p0, Lcom/android/settings/flipfont/FontListPreference$12;->val$deletePackageName:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/flipfont/FontListPreference$12;->val$deletePackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1173
    .local v0, packageURI:Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.DELETE"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v3, 0x3400

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 1177
    .local v1, uninstallIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings/flipfont/FontListPreference$12;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    #getter for: Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/flipfont/FontListPreference;->access$200(Lcom/android/settings/flipfont/FontListPreference;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1179
    iget-object v2, p0, Lcom/android/settings/flipfont/FontListPreference$12;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    invoke-virtual {v2}, Lcom/android/settings/flipfont/FontListPreference;->dismissApp()V

    .line 1180
    iget-object v2, p0, Lcom/android/settings/flipfont/FontListPreference$12;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    #getter for: Lcom/android/settings/flipfont/FontListPreference;->mFontMenu:Lcom/android/settings/FontMenu;
    invoke-static {v2}, Lcom/android/settings/flipfont/FontListPreference;->access$600(Lcom/android/settings/flipfont/FontListPreference;)Lcom/android/settings/FontMenu;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1181
    iget-object v2, p0, Lcom/android/settings/flipfont/FontListPreference$12;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    #getter for: Lcom/android/settings/flipfont/FontListPreference;->mFontMenu:Lcom/android/settings/FontMenu;
    invoke-static {v2}, Lcom/android/settings/flipfont/FontListPreference;->access$600(Lcom/android/settings/flipfont/FontListPreference;)Lcom/android/settings/FontMenu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/FontMenu;->finish()V

    .line 1183
    :cond_0
    iget-object v2, p0, Lcom/android/settings/flipfont/FontListPreference$12;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    #getter for: Lcom/android/settings/flipfont/FontListPreference;->mDisplaySettings:Lcom/android/settings/DisplaySettings;
    invoke-static {v2}, Lcom/android/settings/flipfont/FontListPreference;->access$700(Lcom/android/settings/flipfont/FontListPreference;)Lcom/android/settings/DisplaySettings;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1184
    iget-object v2, p0, Lcom/android/settings/flipfont/FontListPreference$12;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    #getter for: Lcom/android/settings/flipfont/FontListPreference;->mDisplaySettings:Lcom/android/settings/DisplaySettings;
    invoke-static {v2}, Lcom/android/settings/flipfont/FontListPreference;->access$700(Lcom/android/settings/flipfont/FontListPreference;)Lcom/android/settings/DisplaySettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/DisplaySettings;->finish()V

    .line 1186
    :cond_1
    return-void
.end method
