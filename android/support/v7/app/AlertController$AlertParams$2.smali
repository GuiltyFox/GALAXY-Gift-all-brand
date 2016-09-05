.class Landroid/support/v7/app/AlertController$AlertParams$2;
.super Landroid/widget/CursorAdapter;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/AlertController$AlertParams;->b(Landroid/support/v7/app/AlertController;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ListView;

.field final synthetic b:Landroid/support/v7/app/AlertController;

.field final synthetic c:Landroid/support/v7/app/AlertController$AlertParams;

.field private final d:I

.field private final e:I


# direct methods
.method constructor <init>(Landroid/support/v7/app/AlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLandroid/widget/ListView;Landroid/support/v7/app/AlertController;)V
    .registers 9

    .prologue
    .line 900
    iput-object p1, p0, Landroid/support/v7/app/AlertController$AlertParams$2;->c:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p5, p0, Landroid/support/v7/app/AlertController$AlertParams$2;->a:Landroid/widget/ListView;

    iput-object p6, p0, Landroid/support/v7/app/AlertController$AlertParams$2;->b:Landroid/support/v7/app/AlertController;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 905
    invoke-virtual {p0}, Landroid/support/v7/app/AlertController$AlertParams$2;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 906
    iget-object v1, p0, Landroid/support/v7/app/AlertController$AlertParams$2;->c:Landroid/support/v7/app/AlertController$AlertParams;

    iget-object v1, v1, Landroid/support/v7/app/AlertController$AlertParams;->I:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/AlertController$AlertParams$2;->d:I

    .line 907
    iget-object v1, p0, Landroid/support/v7/app/AlertController$AlertParams$2;->c:Landroid/support/v7/app/AlertController$AlertParams;

    iget-object v1, v1, Landroid/support/v7/app/AlertController$AlertParams;->J:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/app/AlertController$AlertParams$2;->e:I

    .line 908
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 8

    .prologue
    const/4 v1, 0x1

    .line 912
    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 914
    iget v2, p0, Landroid/support/v7/app/AlertController$AlertParams$2;->d:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 915
    iget-object v2, p0, Landroid/support/v7/app/AlertController$AlertParams$2;->a:Landroid/widget/ListView;

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    iget v0, p0, Landroid/support/v7/app/AlertController$AlertParams$2;->e:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_26

    move v0, v1

    :goto_22
    invoke-virtual {v2, v3, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 917
    return-void

    .line 915
    :cond_26
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    .prologue
    .line 921
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams$2;->c:Landroid/support/v7/app/AlertController$AlertParams;

    iget-object v0, v0, Landroid/support/v7/app/AlertController$AlertParams;->b:Landroid/view/LayoutInflater;

    iget-object v1, p0, Landroid/support/v7/app/AlertController$AlertParams$2;->b:Landroid/support/v7/app/AlertController;

    invoke-static {v1}, Landroid/support/v7/app/AlertController;->l(Landroid/support/v7/app/AlertController;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
