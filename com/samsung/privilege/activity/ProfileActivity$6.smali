.class Lcom/samsung/privilege/activity/ProfileActivity$6;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/ProfileActivity;->i()V
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ArrayAdapter;

.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:[Ljava/lang/String;

.field final synthetic d:Lcom/samsung/privilege/activity/ProfileActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/ProfileActivity;Landroid/widget/ArrayAdapter;Landroid/widget/TextView;[Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 338
    iput-object p1, p0, Lcom/samsung/privilege/activity/ProfileActivity$6;->d:Lcom/samsung/privilege/activity/ProfileActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/ProfileActivity$6;->a:Landroid/widget/ArrayAdapter;

    iput-object p3, p0, Lcom/samsung/privilege/activity/ProfileActivity$6;->b:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/samsung/privilege/activity/ProfileActivity$6;->c:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 342
    :try_start_0
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity$6;->d:Lcom/samsung/privilege/activity/ProfileActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/ProfileActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 343
    if-eqz v1, :cond_1b

    .line 344
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity$6;->d:Lcom/samsung/privilege/activity/ProfileActivity;

    const-string/jumbo v2, "input_method"

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 345
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_42

    .line 351
    :cond_1b
    :goto_1b
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/privilege/activity/ProfileActivity$6;->d:Lcom/samsung/privilege/activity/ProfileActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/privilege/activity/ProfileActivity$6;->d:Lcom/samsung/privilege/activity/ProfileActivity;

    const v2, 0x7f0902e7

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/ProfileActivity$6;->a:Landroid/widget/ArrayAdapter;

    new-instance v2, Lcom/samsung/privilege/activity/ProfileActivity$6$1;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/activity/ProfileActivity$6$1;-><init>(Lcom/samsung/privilege/activity/ProfileActivity$6;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 357
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 358
    return-void

    .line 347
    :catch_42
    move-exception v0

    goto :goto_1b
.end method
