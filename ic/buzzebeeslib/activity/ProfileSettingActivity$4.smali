.class Lic/buzzebeeslib/activity/ProfileSettingActivity$4;
.super Ljava/lang/Object;
.source "ProfileSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/ProfileSettingActivity;->initialLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/ProfileSettingActivity;

.field private final synthetic val$itemsGender:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/ProfileSettingActivity;[Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$4;->this$0:Lic/buzzebeeslib/activity/ProfileSettingActivity;

    iput-object p2, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$4;->val$itemsGender:[Ljava/lang/String;

    .line 774
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/ProfileSettingActivity$4;)Lic/buzzebeeslib/activity/ProfileSettingActivity;
    .registers 2

    .prologue
    .line 774
    iget-object v0, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$4;->this$0:Lic/buzzebeeslib/activity/ProfileSettingActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 777
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$4;->this$0:Lic/buzzebeeslib/activity/ProfileSettingActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Gender"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$4;->this$0:Lic/buzzebeeslib/activity/ProfileSettingActivity;

    invoke-virtual {v2}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lic/buzzebeeslib/R$layout;->bz_spinner_item:I

    iget-object v4, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$4;->val$itemsGender:[Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    new-instance v2, Lic/buzzebeeslib/activity/ProfileSettingActivity$4$1;

    iget-object v3, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$4;->val$itemsGender:[Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Lic/buzzebeeslib/activity/ProfileSettingActivity$4$1;-><init>(Lic/buzzebeeslib/activity/ProfileSettingActivity$4;[Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 783
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 784
    return-void
.end method
