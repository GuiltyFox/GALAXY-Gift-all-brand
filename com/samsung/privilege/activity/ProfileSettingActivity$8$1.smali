.class Lcom/samsung/privilege/activity/ProfileSettingActivity$8$1;
.super Ljava/lang/Object;
.source "ProfileSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/ProfileSettingActivity$8;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/ProfileSettingActivity$8;

.field private final synthetic val$itemsLanguage:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/ProfileSettingActivity$8;[Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$8$1;->this$1:Lcom/samsung/privilege/activity/ProfileSettingActivity$8;

    iput-object p2, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$8$1;->val$itemsLanguage:[Ljava/lang/String;

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
    const v2, 0x7f0900c4

    .line 832
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$8$1;->val$itemsLanguage:[Ljava/lang/String;

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$8$1;->this$1:Lcom/samsung/privilege/activity/ProfileSettingActivity$8;

    # getter for: Lcom/samsung/privilege/activity/ProfileSettingActivity$8;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;
    invoke-static {v1}, Lcom/samsung/privilege/activity/ProfileSettingActivity$8;->access$0(Lcom/samsung/privilege/activity/ProfileSettingActivity$8;)Lcom/samsung/privilege/activity/ProfileSettingActivity;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 833
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$8$1;->this$1:Lcom/samsung/privilege/activity/ProfileSettingActivity$8;

    # getter for: Lcom/samsung/privilege/activity/ProfileSettingActivity$8;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/ProfileSettingActivity$8;->access$0(Lcom/samsung/privilege/activity/ProfileSettingActivity$8;)Lcom/samsung/privilege/activity/ProfileSettingActivity;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvDisplayLanguage:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->access$14(Lcom/samsung/privilege/activity/ProfileSettingActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$8$1;->this$1:Lcom/samsung/privilege/activity/ProfileSettingActivity$8;

    # getter for: Lcom/samsung/privilege/activity/ProfileSettingActivity$8;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;
    invoke-static {v1}, Lcom/samsung/privilege/activity/ProfileSettingActivity$8;->access$0(Lcom/samsung/privilege/activity/ProfileSettingActivity$8;)Lcom/samsung/privilege/activity/ProfileSettingActivity;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 834
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$8$1;->this$1:Lcom/samsung/privilege/activity/ProfileSettingActivity$8;

    # getter for: Lcom/samsung/privilege/activity/ProfileSettingActivity$8;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/ProfileSettingActivity$8;->access$0(Lcom/samsung/privilege/activity/ProfileSettingActivity$8;)Lcom/samsung/privilege/activity/ProfileSettingActivity;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/ProfileSettingActivity;->gImgDisplayLanguage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->access$15(Lcom/samsung/privilege/activity/ProfileSettingActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0202dd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 839
    :goto_3e
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 840
    return-void

    .line 836
    :cond_42
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$8$1;->this$1:Lcom/samsung/privilege/activity/ProfileSettingActivity$8;

    # getter for: Lcom/samsung/privilege/activity/ProfileSettingActivity$8;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/ProfileSettingActivity$8;->access$0(Lcom/samsung/privilege/activity/ProfileSettingActivity$8;)Lcom/samsung/privilege/activity/ProfileSettingActivity;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvDisplayLanguage:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->access$14(Lcom/samsung/privilege/activity/ProfileSettingActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$8$1;->this$1:Lcom/samsung/privilege/activity/ProfileSettingActivity$8;

    # getter for: Lcom/samsung/privilege/activity/ProfileSettingActivity$8;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;
    invoke-static {v1}, Lcom/samsung/privilege/activity/ProfileSettingActivity$8;->access$0(Lcom/samsung/privilege/activity/ProfileSettingActivity$8;)Lcom/samsung/privilege/activity/ProfileSettingActivity;

    move-result-object v1

    const v2, 0x7f0900c3

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 837
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$8$1;->this$1:Lcom/samsung/privilege/activity/ProfileSettingActivity$8;

    # getter for: Lcom/samsung/privilege/activity/ProfileSettingActivity$8;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/ProfileSettingActivity$8;->access$0(Lcom/samsung/privilege/activity/ProfileSettingActivity$8;)Lcom/samsung/privilege/activity/ProfileSettingActivity;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/ProfileSettingActivity;->gImgDisplayLanguage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->access$15(Lcom/samsung/privilege/activity/ProfileSettingActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0202dc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3e
.end method
