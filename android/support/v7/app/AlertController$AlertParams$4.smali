.class Landroid/support/v7/app/AlertController$AlertParams$4;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/AlertController$AlertParams;->b(Landroid/support/v7/app/AlertController;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ListView;

.field final synthetic b:Landroid/support/v7/app/AlertController;

.field final synthetic c:Landroid/support/v7/app/AlertController$AlertParams;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AlertController$AlertParams;Landroid/widget/ListView;Landroid/support/v7/app/AlertController;)V
    .registers 4

    .prologue
    .line 966
    iput-object p1, p0, Landroid/support/v7/app/AlertController$AlertParams$4;->c:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p2, p0, Landroid/support/v7/app/AlertController$AlertParams$4;->a:Landroid/widget/ListView;

    iput-object p3, p0, Landroid/support/v7/app/AlertController$AlertParams$4;->b:Landroid/support/v7/app/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 969
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams$4;->c:Landroid/support/v7/app/AlertController$AlertParams;

    iget-object v0, v0, Landroid/support/v7/app/AlertController$AlertParams;->C:[Z

    if-eqz v0, :cond_12

    .line 970
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams$4;->c:Landroid/support/v7/app/AlertController$AlertParams;

    iget-object v0, v0, Landroid/support/v7/app/AlertController$AlertParams;->C:[Z

    iget-object v1, p0, Landroid/support/v7/app/AlertController$AlertParams$4;->a:Landroid/widget/ListView;

    invoke-virtual {v1, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v1

    aput-boolean v1, v0, p3

    .line 972
    :cond_12
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams$4;->c:Landroid/support/v7/app/AlertController$AlertParams;

    iget-object v0, v0, Landroid/support/v7/app/AlertController$AlertParams;->G:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object v1, p0, Landroid/support/v7/app/AlertController$AlertParams$4;->b:Landroid/support/v7/app/AlertController;

    .line 973
    invoke-static {v1}, Landroid/support/v7/app/AlertController;->g(Landroid/support/v7/app/AlertController;)Landroid/support/v7/app/AppCompatDialog;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/app/AlertController$AlertParams$4;->a:Landroid/widget/ListView;

    invoke-virtual {v2, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    .line 972
    invoke-interface {v0, v1, p3, v2}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    .line 974
    return-void
.end method
