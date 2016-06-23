.class Lcom/samsung/privilege/activity/ProfileActivity$9;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/ProfileActivity;->initialLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/ProfileActivity;

.field final synthetic val$adapterIncome:Landroid/widget/ArrayAdapter;

.field final synthetic val$itemsIncome:[Ljava/lang/String;

.field final synthetic val$textIncomeLevel:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/ProfileActivity;Landroid/widget/ArrayAdapter;Landroid/widget/TextView;[Ljava/lang/String;)V
    .registers 5
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/ProfileActivity;

    .prologue
    .line 386
    iput-object p1, p0, Lcom/samsung/privilege/activity/ProfileActivity$9;->this$0:Lcom/samsung/privilege/activity/ProfileActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/ProfileActivity$9;->val$adapterIncome:Landroid/widget/ArrayAdapter;

    iput-object p3, p0, Lcom/samsung/privilege/activity/ProfileActivity$9;->val$textIncomeLevel:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/samsung/privilege/activity/ProfileActivity$9;->val$itemsIncome:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 389
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/privilege/activity/ProfileActivity$9;->this$0:Lcom/samsung/privilege/activity/ProfileActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/privilege/activity/ProfileActivity$9;->this$0:Lcom/samsung/privilege/activity/ProfileActivity;

    const v2, 0x7f0902e3

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/ProfileActivity$9;->val$adapterIncome:Landroid/widget/ArrayAdapter;

    new-instance v2, Lcom/samsung/privilege/activity/ProfileActivity$9$1;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/activity/ProfileActivity$9$1;-><init>(Lcom/samsung/privilege/activity/ProfileActivity$9;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 395
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 396
    return-void
.end method
