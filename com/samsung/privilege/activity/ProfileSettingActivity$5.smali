.class Lcom/samsung/privilege/activity/ProfileSettingActivity$5;
.super Ljava/lang/Object;
.source "ProfileSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/ProfileSettingActivity;->initialLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;

.field private final synthetic val$adapterGender:Landroid/widget/ArrayAdapter;

.field private final synthetic val$itemsGender:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/ProfileSettingActivity;Landroid/widget/ArrayAdapter;[Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$5;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$5;->val$adapterGender:Landroid/widget/ArrayAdapter;

    iput-object p3, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$5;->val$itemsGender:[Ljava/lang/String;

    .line 748
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/ProfileSettingActivity$5;)Lcom/samsung/privilege/activity/ProfileSettingActivity;
    .registers 2

    .prologue
    .line 748
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$5;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 752
    :try_start_0
    iget-object v2, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$5;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 753
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_1a

    .line 754
    iget-object v2, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$5;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 755
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_43

    .line 761
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v1    # "view":Landroid/view/View;
    :cond_1a
    :goto_1a
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$5;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$5;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;

    const v4, 0x7f0902e6

    invoke-virtual {v3, v4}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$5;->val$adapterGender:Landroid/widget/ArrayAdapter;

    new-instance v4, Lcom/samsung/privilege/activity/ProfileSettingActivity$5$1;

    iget-object v5, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$5;->val$itemsGender:[Ljava/lang/String;

    invoke-direct {v4, p0, v5}, Lcom/samsung/privilege/activity/ProfileSettingActivity$5$1;-><init>(Lcom/samsung/privilege/activity/ProfileSettingActivity$5;[Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 767
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 768
    return-void

    .line 757
    :catch_43
    move-exception v2

    goto :goto_1a
.end method
