.class Lcom/samsung/privilege/activity/ProfileActivity$6;
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

.field final synthetic val$adapterRegion:Landroid/widget/ArrayAdapter;

.field final synthetic val$itemsRegion:[Ljava/lang/String;

.field final synthetic val$textRegion:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/ProfileActivity;Landroid/widget/ArrayAdapter;Landroid/widget/TextView;[Ljava/lang/String;)V
    .registers 5
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/ProfileActivity;

    .prologue
    .line 318
    iput-object p1, p0, Lcom/samsung/privilege/activity/ProfileActivity$6;->this$0:Lcom/samsung/privilege/activity/ProfileActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/ProfileActivity$6;->val$adapterRegion:Landroid/widget/ArrayAdapter;

    iput-object p3, p0, Lcom/samsung/privilege/activity/ProfileActivity$6;->val$textRegion:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/samsung/privilege/activity/ProfileActivity$6;->val$itemsRegion:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 322
    :try_start_0
    iget-object v2, p0, Lcom/samsung/privilege/activity/ProfileActivity$6;->this$0:Lcom/samsung/privilege/activity/ProfileActivity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/ProfileActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 323
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_1b

    .line 324
    iget-object v2, p0, Lcom/samsung/privilege/activity/ProfileActivity$6;->this$0:Lcom/samsung/privilege/activity/ProfileActivity;

    const-string/jumbo v3, "input_method"

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/ProfileActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 325
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_42

    .line 331
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v1    # "view":Landroid/view/View;
    :cond_1b
    :goto_1b
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/samsung/privilege/activity/ProfileActivity$6;->this$0:Lcom/samsung/privilege/activity/ProfileActivity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/samsung/privilege/activity/ProfileActivity$6;->this$0:Lcom/samsung/privilege/activity/ProfileActivity;

    const v4, 0x7f0902be

    invoke-virtual {v3, v4}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/activity/ProfileActivity$6;->val$adapterRegion:Landroid/widget/ArrayAdapter;

    new-instance v4, Lcom/samsung/privilege/activity/ProfileActivity$6$1;

    invoke-direct {v4, p0}, Lcom/samsung/privilege/activity/ProfileActivity$6$1;-><init>(Lcom/samsung/privilege/activity/ProfileActivity$6;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 337
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 338
    return-void

    .line 327
    :catch_42
    move-exception v2

    goto :goto_1b
.end method
