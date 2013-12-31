.class Lcom/android/settings/dormantmode/DormantmodeSettings$3;
.super Landroid/preference/Preference;
.source "DormantmodeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dormantmode/DormantmodeSettings;->initPref()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dormantmode/DormantmodeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/dormantmode/DormantmodeSettings;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings$3;->this$0:Lcom/android/settings/dormantmode/DormantmodeSettings;

    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 254
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 255
    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings$3;->this$0:Lcom/android/settings/dormantmode/DormantmodeSettings;

    invoke-virtual {v2}, Lcom/android/settings/dormantmode/DormantmodeSettings;->loadDormantTime()V

    .line 256
    const v2, 0x7f0b0167

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 257
    .local v0, mFormBtn:Landroid/widget/Button;
    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings$3;->this$0:Lcom/android/settings/dormantmode/DormantmodeSettings;

    #setter for: Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimeFromBtn:Landroid/widget/Button;
    invoke-static {v2, v0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->access$002(Lcom/android/settings/dormantmode/DormantmodeSettings;Landroid/widget/Button;)Landroid/widget/Button;

    .line 258
    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings$3;->this$0:Lcom/android/settings/dormantmode/DormantmodeSettings;

    #getter for: Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimeFromBtn:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/settings/dormantmode/DormantmodeSettings;->access$000(Lcom/android/settings/dormantmode/DormantmodeSettings;)Landroid/widget/Button;

    move-result-object v5

    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings$3;->this$0:Lcom/android/settings/dormantmode/DormantmodeSettings;

    #getter for: Lcom/android/settings/dormantmode/DormantmodeSettings;->mAlwaysPref:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/settings/dormantmode/DormantmodeSettings;->access$100(Lcom/android/settings/dormantmode/DormantmodeSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/widget/Button;->setFocusable(Z)V

    .line 259
    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings$3;->this$0:Lcom/android/settings/dormantmode/DormantmodeSettings;

    iget-object v5, p0, Lcom/android/settings/dormantmode/DormantmodeSettings$3;->this$0:Lcom/android/settings/dormantmode/DormantmodeSettings;

    #getter for: Lcom/android/settings/dormantmode/DormantmodeSettings;->mStarthour:I
    invoke-static {v5}, Lcom/android/settings/dormantmode/DormantmodeSettings;->access$200(Lcom/android/settings/dormantmode/DormantmodeSettings;)I

    move-result v5

    iget-object v6, p0, Lcom/android/settings/dormantmode/DormantmodeSettings$3;->this$0:Lcom/android/settings/dormantmode/DormantmodeSettings;

    #getter for: Lcom/android/settings/dormantmode/DormantmodeSettings;->mStartmin:I
    invoke-static {v6}, Lcom/android/settings/dormantmode/DormantmodeSettings;->access$300(Lcom/android/settings/dormantmode/DormantmodeSettings;)I

    move-result v6

    #calls: Lcom/android/settings/dormantmode/DormantmodeSettings;->setStartTime(II)V
    invoke-static {v2, v5, v6}, Lcom/android/settings/dormantmode/DormantmodeSettings;->access$400(Lcom/android/settings/dormantmode/DormantmodeSettings;II)V

    .line 260
    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings$3;->this$0:Lcom/android/settings/dormantmode/DormantmodeSettings;

    #getter for: Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimeFromBtn:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/settings/dormantmode/DormantmodeSettings;->access$000(Lcom/android/settings/dormantmode/DormantmodeSettings;)Landroid/widget/Button;

    move-result-object v2

    new-instance v5, Lcom/android/settings/dormantmode/DormantmodeSettings$3$1;

    invoke-direct {v5, p0}, Lcom/android/settings/dormantmode/DormantmodeSettings$3$1;-><init>(Lcom/android/settings/dormantmode/DormantmodeSettings$3;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    const v2, 0x7f0b0169

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 267
    .local v1, mtoBtn:Landroid/widget/Button;
    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings$3;->this$0:Lcom/android/settings/dormantmode/DormantmodeSettings;

    #setter for: Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimeToBtn:Landroid/widget/Button;
    invoke-static {v2, v1}, Lcom/android/settings/dormantmode/DormantmodeSettings;->access$702(Lcom/android/settings/dormantmode/DormantmodeSettings;Landroid/widget/Button;)Landroid/widget/Button;

    .line 268
    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings$3;->this$0:Lcom/android/settings/dormantmode/DormantmodeSettings;

    #getter for: Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimeToBtn:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/settings/dormantmode/DormantmodeSettings;->access$700(Lcom/android/settings/dormantmode/DormantmodeSettings;)Landroid/widget/Button;

    move-result-object v2

    iget-object v5, p0, Lcom/android/settings/dormantmode/DormantmodeSettings$3;->this$0:Lcom/android/settings/dormantmode/DormantmodeSettings;

    #getter for: Lcom/android/settings/dormantmode/DormantmodeSettings;->mAlwaysPref:Landroid/preference/CheckBoxPreference;
    invoke-static {v5}, Lcom/android/settings/dormantmode/DormantmodeSettings;->access$100(Lcom/android/settings/dormantmode/DormantmodeSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_1

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setFocusable(Z)V

    .line 269
    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings$3;->this$0:Lcom/android/settings/dormantmode/DormantmodeSettings;

    iget-object v3, p0, Lcom/android/settings/dormantmode/DormantmodeSettings$3;->this$0:Lcom/android/settings/dormantmode/DormantmodeSettings;

    #getter for: Lcom/android/settings/dormantmode/DormantmodeSettings;->mEndhour:I
    invoke-static {v3}, Lcom/android/settings/dormantmode/DormantmodeSettings;->access$800(Lcom/android/settings/dormantmode/DormantmodeSettings;)I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings$3;->this$0:Lcom/android/settings/dormantmode/DormantmodeSettings;

    #getter for: Lcom/android/settings/dormantmode/DormantmodeSettings;->mEndmin:I
    invoke-static {v4}, Lcom/android/settings/dormantmode/DormantmodeSettings;->access$900(Lcom/android/settings/dormantmode/DormantmodeSettings;)I

    move-result v4

    #calls: Lcom/android/settings/dormantmode/DormantmodeSettings;->setEndTime(II)V
    invoke-static {v2, v3, v4}, Lcom/android/settings/dormantmode/DormantmodeSettings;->access$1000(Lcom/android/settings/dormantmode/DormantmodeSettings;II)V

    .line 270
    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings$3;->this$0:Lcom/android/settings/dormantmode/DormantmodeSettings;

    #getter for: Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimeToBtn:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/settings/dormantmode/DormantmodeSettings;->access$700(Lcom/android/settings/dormantmode/DormantmodeSettings;)Landroid/widget/Button;

    move-result-object v2

    new-instance v3, Lcom/android/settings/dormantmode/DormantmodeSettings$3$2;

    invoke-direct {v3, p0}, Lcom/android/settings/dormantmode/DormantmodeSettings$3$2;-><init>(Lcom/android/settings/dormantmode/DormantmodeSettings$3;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    return-void

    .end local v1           #mtoBtn:Landroid/widget/Button;
    :cond_0
    move v2, v4

    .line 258
    goto :goto_0

    .restart local v1       #mtoBtn:Landroid/widget/Button;
    :cond_1
    move v3, v4

    .line 268
    goto :goto_1
.end method
