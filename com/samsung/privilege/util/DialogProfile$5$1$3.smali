.class Lcom/samsung/privilege/util/DialogProfile$5$1$3;
.super Ljava/lang/Object;
.source "DialogProfile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogProfile$5$1;->run()V
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ArrayAdapter;

.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:Ljava/util/ArrayList;

.field final synthetic d:Lcom/samsung/privilege/util/DialogProfile$5$1;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/util/DialogProfile$5$1;Landroid/widget/ArrayAdapter;Landroid/widget/TextView;Ljava/util/ArrayList;)V
    .registers 5

    .prologue
    .line 354
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogProfile$5$1$3;->d:Lcom/samsung/privilege/util/DialogProfile$5$1;

    iput-object p2, p0, Lcom/samsung/privilege/util/DialogProfile$5$1$3;->a:Landroid/widget/ArrayAdapter;

    iput-object p3, p0, Lcom/samsung/privilege/util/DialogProfile$5$1$3;->b:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/samsung/privilege/util/DialogProfile$5$1$3;->c:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 357
    invoke-static {}, Lcom/samsung/privilege/util/DialogProfile;->e()V

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/privilege/util/DialogProfile;->d()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09013a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/samsung/privilege/util/DialogProfile;->d()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090139

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 360
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/samsung/privilege/util/DialogProfile;->d()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogProfile$5$1$3;->a:Landroid/widget/ArrayAdapter;

    new-instance v2, Lcom/samsung/privilege/util/DialogProfile$5$1$3$1;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/util/DialogProfile$5$1$3$1;-><init>(Lcom/samsung/privilege/util/DialogProfile$5$1$3;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 373
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 374
    return-void
.end method
