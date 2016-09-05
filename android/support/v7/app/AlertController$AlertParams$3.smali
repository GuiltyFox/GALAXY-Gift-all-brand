.class Landroid/support/v7/app/AlertController$AlertParams$3;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/AlertController$AlertParams;->b(Landroid/support/v7/app/AlertController;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/app/AlertController;

.field final synthetic b:Landroid/support/v7/app/AlertController$AlertParams;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AlertController$AlertParams;Landroid/support/v7/app/AlertController;)V
    .registers 3

    .prologue
    .line 956
    iput-object p1, p0, Landroid/support/v7/app/AlertController$AlertParams$3;->b:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p2, p0, Landroid/support/v7/app/AlertController$AlertParams$3;->a:Landroid/support/v7/app/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
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
    .line 959
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams$3;->b:Landroid/support/v7/app/AlertController$AlertParams;

    iget-object v0, v0, Landroid/support/v7/app/AlertController$AlertParams;->u:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Landroid/support/v7/app/AlertController$AlertParams$3;->a:Landroid/support/v7/app/AlertController;

    invoke-static {v1}, Landroid/support/v7/app/AlertController;->g(Landroid/support/v7/app/AlertController;)Landroid/support/v7/app/AppCompatDialog;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 960
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams$3;->b:Landroid/support/v7/app/AlertController$AlertParams;

    iget-boolean v0, v0, Landroid/support/v7/app/AlertController$AlertParams;->E:Z

    if-nez v0, :cond_1c

    .line 961
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams$3;->a:Landroid/support/v7/app/AlertController;

    invoke-static {v0}, Landroid/support/v7/app/AlertController;->g(Landroid/support/v7/app/AlertController;)Landroid/support/v7/app/AppCompatDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDialog;->dismiss()V

    .line 963
    :cond_1c
    return-void
.end method
