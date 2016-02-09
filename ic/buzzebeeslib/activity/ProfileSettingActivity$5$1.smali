.class Lic/buzzebeeslib/activity/ProfileSettingActivity$5$1;
.super Ljava/lang/Object;
.source "ProfileSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/ProfileSettingActivity$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/ProfileSettingActivity$5;

.field private final synthetic val$itemsLanguage:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/ProfileSettingActivity$5;[Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$5$1;->this$1:Lic/buzzebeeslib/activity/ProfileSettingActivity$5;

    iput-object p2, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$5$1;->val$itemsLanguage:[Ljava/lang/String;

    .line 829
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 832
    iget-object v0, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$5$1;->val$itemsLanguage:[Ljava/lang/String;

    aget-object v0, v0, p2

    iget-object v1, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$5$1;->this$1:Lic/buzzebeeslib/activity/ProfileSettingActivity$5;

    # getter for: Lic/buzzebeeslib/activity/ProfileSettingActivity$5;->this$0:Lic/buzzebeeslib/activity/ProfileSettingActivity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/ProfileSettingActivity$5;->access$0(Lic/buzzebeeslib/activity/ProfileSettingActivity$5;)Lic/buzzebeeslib/activity/ProfileSettingActivity;

    move-result-object v1

    sget v2, Lic/buzzebeeslib/R$string;->profile_setting_select_language_en:I

    invoke-virtual {v1, v2}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 833
    iget-object v0, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$5$1;->this$1:Lic/buzzebeeslib/activity/ProfileSettingActivity$5;

    # getter for: Lic/buzzebeeslib/activity/ProfileSettingActivity$5;->this$0:Lic/buzzebeeslib/activity/ProfileSettingActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/ProfileSettingActivity$5;->access$0(Lic/buzzebeeslib/activity/ProfileSettingActivity$5;)Lic/buzzebeeslib/activity/ProfileSettingActivity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/ProfileSettingActivity;->gTvDisplayLanguage:Landroid/widget/TextView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->access$15(Lic/buzzebeeslib/activity/ProfileSettingActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$5$1;->this$1:Lic/buzzebeeslib/activity/ProfileSettingActivity$5;

    # getter for: Lic/buzzebeeslib/activity/ProfileSettingActivity$5;->this$0:Lic/buzzebeeslib/activity/ProfileSettingActivity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/ProfileSettingActivity$5;->access$0(Lic/buzzebeeslib/activity/ProfileSettingActivity$5;)Lic/buzzebeeslib/activity/ProfileSettingActivity;

    move-result-object v1

    sget v2, Lic/buzzebeeslib/R$string;->profile_setting_select_language_en:I

    invoke-virtual {v1, v2}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 834
    iget-object v0, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$5$1;->this$1:Lic/buzzebeeslib/activity/ProfileSettingActivity$5;

    # getter for: Lic/buzzebeeslib/activity/ProfileSettingActivity$5;->this$0:Lic/buzzebeeslib/activity/ProfileSettingActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/ProfileSettingActivity$5;->access$0(Lic/buzzebeeslib/activity/ProfileSettingActivity$5;)Lic/buzzebeeslib/activity/ProfileSettingActivity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/ProfileSettingActivity;->gImgDisplayLanguage:Landroid/widget/ImageView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->access$16(Lic/buzzebeeslib/activity/ProfileSettingActivity;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_icon_flag_uk_2x:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 839
    :goto_3e
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 840
    return-void

    .line 836
    :cond_42
    iget-object v0, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$5$1;->this$1:Lic/buzzebeeslib/activity/ProfileSettingActivity$5;

    # getter for: Lic/buzzebeeslib/activity/ProfileSettingActivity$5;->this$0:Lic/buzzebeeslib/activity/ProfileSettingActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/ProfileSettingActivity$5;->access$0(Lic/buzzebeeslib/activity/ProfileSettingActivity$5;)Lic/buzzebeeslib/activity/ProfileSettingActivity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/ProfileSettingActivity;->gTvDisplayLanguage:Landroid/widget/TextView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->access$15(Lic/buzzebeeslib/activity/ProfileSettingActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$5$1;->this$1:Lic/buzzebeeslib/activity/ProfileSettingActivity$5;

    # getter for: Lic/buzzebeeslib/activity/ProfileSettingActivity$5;->this$0:Lic/buzzebeeslib/activity/ProfileSettingActivity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/ProfileSettingActivity$5;->access$0(Lic/buzzebeeslib/activity/ProfileSettingActivity$5;)Lic/buzzebeeslib/activity/ProfileSettingActivity;

    move-result-object v1

    sget v2, Lic/buzzebeeslib/R$string;->profile_setting_select_language_th:I

    invoke-virtual {v1, v2}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 837
    iget-object v0, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$5$1;->this$1:Lic/buzzebeeslib/activity/ProfileSettingActivity$5;

    # getter for: Lic/buzzebeeslib/activity/ProfileSettingActivity$5;->this$0:Lic/buzzebeeslib/activity/ProfileSettingActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/ProfileSettingActivity$5;->access$0(Lic/buzzebeeslib/activity/ProfileSettingActivity$5;)Lic/buzzebeeslib/activity/ProfileSettingActivity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/ProfileSettingActivity;->gImgDisplayLanguage:Landroid/widget/ImageView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->access$16(Lic/buzzebeeslib/activity/ProfileSettingActivity;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_icon_flag_thai_2x:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3e
.end method
