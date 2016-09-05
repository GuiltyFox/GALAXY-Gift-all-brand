.class public Landroid/support/v7/app/AlertDialog$Builder;
.super Ljava/lang/Object;
.source "AlertDialog.java"


# instance fields
.field private final a:Landroid/support/v7/app/AlertController$AlertParams;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 285
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v7/app/AlertDialog;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 286
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 6

    .prologue
    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    new-instance v0, Landroid/support/v7/app/AlertController$AlertParams;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-static {p1, p2}, Landroid/support/v7/app/AlertDialog;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->a:Landroid/support/v7/app/AlertController$AlertParams;

    .line 298
    iput p2, p0, Landroid/support/v7/app/AlertDialog$Builder;->b:I

    .line 299
    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .registers 2

    .prologue
    .line 311
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->a:Landroid/support/v7/app/AlertController$AlertParams;

    iget-object v0, v0, Landroid/support/v7/app/AlertController$AlertParams;->a:Landroid/content/Context;

    return-object v0
.end method

.method public a(Landroid/content/DialogInterface$OnKeyListener;)Landroid/support/v7/app/AlertDialog$Builder;
    .registers 3

    .prologue
    .line 530
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->a:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Landroid/support/v7/app/AlertController$AlertParams;->r:Landroid/content/DialogInterface$OnKeyListener;

    .line 531
    return-object p0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Landroid/support/v7/app/AlertDialog$Builder;
    .registers 3

    .prologue
    .line 387
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->a:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Landroid/support/v7/app/AlertController$AlertParams;->d:Landroid/graphics/drawable/Drawable;

    .line 388
    return-object p0
.end method

.method public a(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;
    .registers 3

    .prologue
    .line 345
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->a:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Landroid/support/v7/app/AlertController$AlertParams;->g:Landroid/view/View;

    .line 346
    return-object p0
.end method

.method public a(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;
    .registers 4

    .prologue
    .line 570
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->a:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Landroid/support/v7/app/AlertController$AlertParams;->t:Landroid/widget/ListAdapter;

    .line 571
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->a:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p2, v0, Landroid/support/v7/app/AlertController$AlertParams;->u:Landroid/content/DialogInterface$OnClickListener;

    .line 572
    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;
    .registers 3

    .prologue
    .line 330
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->a:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Landroid/support/v7/app/AlertController$AlertParams;->f:Ljava/lang/CharSequence;

    .line 331
    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;
    .registers 4

    .prologue
    .line 428
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->a:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Landroid/support/v7/app/AlertController$AlertParams;->i:Ljava/lang/CharSequence;

    .line 429
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->a:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p2, v0, Landroid/support/v7/app/AlertController$AlertParams;->j:Landroid/content/DialogInterface$OnClickListener;

    .line 430
    return-object p0
.end method

.method public a(Z)Landroid/support/v7/app/AlertDialog$Builder;
    .registers 3

    .prologue
    .line 491
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->a:Landroid/support/v7/app/AlertController$AlertParams;

    iput-boolean p1, v0, Landroid/support/v7/app/AlertController$AlertParams;->o:Z

    .line 492
    return-object p0
.end method

.method public b(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 830
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->a:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Landroid/support/v7/app/AlertController$AlertParams;->w:Landroid/view/View;

    .line 831
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->a:Landroid/support/v7/app/AlertController$AlertParams;

    iput v1, v0, Landroid/support/v7/app/AlertController$AlertParams;->v:I

    .line 832
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->a:Landroid/support/v7/app/AlertController$AlertParams;

    iput-boolean v1, v0, Landroid/support/v7/app/AlertController$AlertParams;->B:Z

    .line 833
    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;
    .registers 3

    .prologue
    .line 365
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->a:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Landroid/support/v7/app/AlertController$AlertParams;->h:Ljava/lang/CharSequence;

    .line 366
    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;
    .registers 4

    .prologue
    .line 454
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->a:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Landroid/support/v7/app/AlertController$AlertParams;->k:Ljava/lang/CharSequence;

    .line 455
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->a:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p2, v0, Landroid/support/v7/app/AlertController$AlertParams;->l:Landroid/content/DialogInterface$OnClickListener;

    .line 456
    return-object p0
.end method

.method public b()Landroid/support/v7/app/AlertDialog;
    .registers 5

    .prologue
    .line 898
    new-instance v0, Landroid/support/v7/app/AlertDialog;

    iget-object v1, p0, Landroid/support/v7/app/AlertDialog$Builder;->a:Landroid/support/v7/app/AlertController$AlertParams;

    iget-object v1, v1, Landroid/support/v7/app/AlertController$AlertParams;->a:Landroid/content/Context;

    iget v2, p0, Landroid/support/v7/app/AlertDialog$Builder;->b:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/app/AlertDialog;-><init>(Landroid/content/Context;IZ)V

    .line 899
    iget-object v1, p0, Landroid/support/v7/app/AlertDialog$Builder;->a:Landroid/support/v7/app/AlertController$AlertParams;

    invoke-static {v0}, Landroid/support/v7/app/AlertDialog;->a(Landroid/support/v7/app/AlertDialog;)Landroid/support/v7/app/AlertController;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertController$AlertParams;->a(Landroid/support/v7/app/AlertController;)V

    .line 900
    iget-object v1, p0, Landroid/support/v7/app/AlertDialog$Builder;->a:Landroid/support/v7/app/AlertController$AlertParams;

    iget-boolean v1, v1, Landroid/support/v7/app/AlertController$AlertParams;->o:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 901
    iget-object v1, p0, Landroid/support/v7/app/AlertDialog$Builder;->a:Landroid/support/v7/app/AlertController$AlertParams;

    iget-boolean v1, v1, Landroid/support/v7/app/AlertController$AlertParams;->o:Z

    if-eqz v1, :cond_26

    .line 902
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 904
    :cond_26
    iget-object v1, p0, Landroid/support/v7/app/AlertDialog$Builder;->a:Landroid/support/v7/app/AlertController$AlertParams;

    iget-object v1, v1, Landroid/support/v7/app/AlertController$AlertParams;->p:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 905
    iget-object v1, p0, Landroid/support/v7/app/AlertDialog$Builder;->a:Landroid/support/v7/app/AlertController$AlertParams;

    iget-object v1, v1, Landroid/support/v7/app/AlertController$AlertParams;->q:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 906
    iget-object v1, p0, Landroid/support/v7/app/AlertDialog$Builder;->a:Landroid/support/v7/app/AlertController$AlertParams;

    iget-object v1, v1, Landroid/support/v7/app/AlertController$AlertParams;->r:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_41

    .line 907
    iget-object v1, p0, Landroid/support/v7/app/AlertDialog$Builder;->a:Landroid/support/v7/app/AlertController$AlertParams;

    iget-object v1, v1, Landroid/support/v7/app/AlertController$AlertParams;->r:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 909
    :cond_41
    return-object v0
.end method

.method public c()Landroid/support/v7/app/AlertDialog;
    .registers 2

    .prologue
    .line 917
    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog$Builder;->b()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 918
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 919
    return-object v0
.end method
