.class Lcom/samsung/privilege/activity/ProfileSettingActivity$6;
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

.field private final synthetic val$adapterLanguage:Landroid/widget/ArrayAdapter;

.field private final synthetic val$itemsLanguage:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/ProfileSettingActivity;Landroid/widget/ArrayAdapter;[Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$6;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$6;->val$adapterLanguage:Landroid/widget/ArrayAdapter;

    iput-object p3, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$6;->val$itemsLanguage:[Ljava/lang/String;

    .line 796
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/ProfileSettingActivity$6;)Lcom/samsung/privilege/activity/ProfileSettingActivity;
    .registers 2

    .prologue
    .line 796
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$6;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 800
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$6;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$6;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;

    const v2, 0x7f0a00c2

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$6;->val$adapterLanguage:Landroid/widget/ArrayAdapter;

    new-instance v2, Lcom/samsung/privilege/activity/ProfileSettingActivity$6$1;

    iget-object v3, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$6;->val$itemsLanguage:[Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Lcom/samsung/privilege/activity/ProfileSettingActivity$6$1;-><init>(Lcom/samsung/privilege/activity/ProfileSettingActivity$6;[Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 812
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 813
    return-void
.end method
