.class Lic/buzzebeeslib/activity/ProfileSettingActivity$4$1;
.super Ljava/lang/Object;
.source "ProfileSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/ProfileSettingActivity$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/ProfileSettingActivity$4;

.field private final synthetic val$itemsGender:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/ProfileSettingActivity$4;[Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$4$1;->this$1:Lic/buzzebeeslib/activity/ProfileSettingActivity$4;

    iput-object p2, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$4$1;->val$itemsGender:[Ljava/lang/String;

    .line 777
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 780
    iget-object v0, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$4$1;->this$1:Lic/buzzebeeslib/activity/ProfileSettingActivity$4;

    # getter for: Lic/buzzebeeslib/activity/ProfileSettingActivity$4;->this$0:Lic/buzzebeeslib/activity/ProfileSettingActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/ProfileSettingActivity$4;->access$0(Lic/buzzebeeslib/activity/ProfileSettingActivity$4;)Lic/buzzebeeslib/activity/ProfileSettingActivity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/ProfileSettingActivity;->gTvSex:Landroid/widget/EditText;
    invoke-static {v0}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->access$14(Lic/buzzebeeslib/activity/ProfileSettingActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$4$1;->val$itemsGender:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 781
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 782
    return-void
.end method
