.class Lic/buzzebeeslib/activity/ProfileSettingActivity$5;
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

.field private final synthetic val$adapterLanguage:Landroid/widget/ArrayAdapter;

.field private final synthetic val$itemsLanguage:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/ProfileSettingActivity;Landroid/widget/ArrayAdapter;[Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$5;->this$0:Lic/buzzebeeslib/activity/ProfileSettingActivity;

    iput-object p2, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$5;->val$adapterLanguage:Landroid/widget/ArrayAdapter;

    iput-object p3, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$5;->val$itemsLanguage:[Ljava/lang/String;

    .line 824
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/ProfileSettingActivity$5;)Lic/buzzebeeslib/activity/ProfileSettingActivity;
    .registers 2

    .prologue
    .line 824
    iget-object v0, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$5;->this$0:Lic/buzzebeeslib/activity/ProfileSettingActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 828
    iget-object v0, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$5;->this$0:Lic/buzzebeeslib/activity/ProfileSettingActivity;

    const v1, 0x103006b

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->setTheme(I)V

    .line 829
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$5;->this$0:Lic/buzzebeeslib/activity/ProfileSettingActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$5;->this$0:Lic/buzzebeeslib/activity/ProfileSettingActivity;

    sget v2, Lic/buzzebeeslib/R$string;->profile_setting_select_language:I

    invoke-virtual {v1, v2}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$5;->val$adapterLanguage:Landroid/widget/ArrayAdapter;

    new-instance v2, Lic/buzzebeeslib/activity/ProfileSettingActivity$5$1;

    iget-object v3, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$5;->val$itemsLanguage:[Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Lic/buzzebeeslib/activity/ProfileSettingActivity$5$1;-><init>(Lic/buzzebeeslib/activity/ProfileSettingActivity$5;[Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 841
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 842
    return-void
.end method
