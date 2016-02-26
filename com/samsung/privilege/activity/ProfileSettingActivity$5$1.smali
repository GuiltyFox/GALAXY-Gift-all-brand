.class Lcom/samsung/privilege/activity/ProfileSettingActivity$5$1;
.super Ljava/lang/Object;
.source "ProfileSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/ProfileSettingActivity$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/ProfileSettingActivity$5;

.field private final synthetic val$itemsGender:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/ProfileSettingActivity$5;[Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$5$1;->this$1:Lcom/samsung/privilege/activity/ProfileSettingActivity$5;

    iput-object p2, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$5$1;->val$itemsGender:[Ljava/lang/String;

    .line 761
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 764
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$5$1;->this$1:Lcom/samsung/privilege/activity/ProfileSettingActivity$5;

    # getter for: Lcom/samsung/privilege/activity/ProfileSettingActivity$5;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/ProfileSettingActivity$5;->access$0(Lcom/samsung/privilege/activity/ProfileSettingActivity$5;)Lcom/samsung/privilege/activity/ProfileSettingActivity;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvSex:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->access$9(Lcom/samsung/privilege/activity/ProfileSettingActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$5$1;->val$itemsGender:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 765
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 766
    return-void
.end method
