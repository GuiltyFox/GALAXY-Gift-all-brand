.class public abstract Landroid/support/v4/widget/CursorAdapter;
.super Landroid/widget/BaseAdapter;
.source "CursorAdapter.java"

# interfaces
.implements Landroid/support/v4/widget/CursorFilter$CursorFilterClient;
.implements Landroid/widget/Filterable;


# instance fields
.field protected a:Z

.field protected b:Z

.field protected c:Landroid/database/Cursor;

.field protected d:Landroid/content/Context;

.field protected e:I

.field protected f:Landroid/support/v4/widget/CursorAdapter$ChangeObserver;

.field protected g:Landroid/database/DataSetObserver;

.field protected h:Landroid/support/v4/widget/CursorFilter;

.field protected i:Landroid/widget/FilterQueryProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .registers 5

    .prologue
    .line 149
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 150
    if-eqz p3, :cond_a

    const/4 v0, 0x1

    :goto_6
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/widget/CursorAdapter;->a(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 151
    return-void

    .line 150
    :cond_a
    const/4 v0, 0x2

    goto :goto_6
.end method


# virtual methods
.method public a()Landroid/database/Cursor;
    .registers 2

    .prologue
    .line 207
    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter;->c:Landroid/database/Cursor;

    return-object v0
.end method

.method public a(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .registers 3

    .prologue
    .line 416
    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter;->i:Landroid/widget/FilterQueryProvider;

    if-eqz v0, :cond_b

    .line 417
    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter;->i:Landroid/widget/FilterQueryProvider;

    invoke-interface {v0, p1}, Landroid/widget/FilterQueryProvider;->runQuery(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object v0

    .line 420
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter;->c:Landroid/database/Cursor;

    goto :goto_a
.end method

.method public abstract a(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method a(Landroid/content/Context;Landroid/database/Cursor;I)V
    .registers 8

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 176
    and-int/lit8 v2, p3, 0x1

    if-ne v2, v0, :cond_46

    .line 177
    or-int/lit8 p3, p3, 0x2

    .line 178
    iput-boolean v0, p0, Landroid/support/v4/widget/CursorAdapter;->b:Z

    .line 182
    :goto_b
    if-eqz p2, :cond_49

    .line 183
    :goto_d
    iput-object p2, p0, Landroid/support/v4/widget/CursorAdapter;->c:Landroid/database/Cursor;

    .line 184
    iput-boolean v0, p0, Landroid/support/v4/widget/CursorAdapter;->a:Z

    .line 185
    iput-object p1, p0, Landroid/support/v4/widget/CursorAdapter;->d:Landroid/content/Context;

    .line 186
    if-eqz v0, :cond_4b

    const-string/jumbo v1, "_id"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    :goto_1c
    iput v1, p0, Landroid/support/v4/widget/CursorAdapter;->e:I

    .line 187
    and-int/lit8 v1, p3, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4d

    .line 188
    new-instance v1, Landroid/support/v4/widget/CursorAdapter$ChangeObserver;

    invoke-direct {v1, p0}, Landroid/support/v4/widget/CursorAdapter$ChangeObserver;-><init>(Landroid/support/v4/widget/CursorAdapter;)V

    iput-object v1, p0, Landroid/support/v4/widget/CursorAdapter;->f:Landroid/support/v4/widget/CursorAdapter$ChangeObserver;

    .line 189
    new-instance v1, Landroid/support/v4/widget/CursorAdapter$MyDataSetObserver;

    invoke-direct {v1, p0}, Landroid/support/v4/widget/CursorAdapter$MyDataSetObserver;-><init>(Landroid/support/v4/widget/CursorAdapter;)V

    iput-object v1, p0, Landroid/support/v4/widget/CursorAdapter;->g:Landroid/database/DataSetObserver;

    .line 195
    :goto_31
    if-eqz v0, :cond_45

    .line 196
    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter;->f:Landroid/support/v4/widget/CursorAdapter$ChangeObserver;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter;->f:Landroid/support/v4/widget/CursorAdapter$ChangeObserver;

    invoke-interface {p2, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 197
    :cond_3c
    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter;->g:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_45

    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter;->g:Landroid/database/DataSetObserver;

    invoke-interface {p2, v0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 199
    :cond_45
    return-void

    .line 180
    :cond_46
    iput-boolean v1, p0, Landroid/support/v4/widget/CursorAdapter;->b:Z

    goto :goto_b

    :cond_49
    move v0, v1

    .line 182
    goto :goto_d

    .line 186
    :cond_4b
    const/4 v1, -0x1

    goto :goto_1c

    .line 191
    :cond_4d
    iput-object v3, p0, Landroid/support/v4/widget/CursorAdapter;->f:Landroid/support/v4/widget/CursorAdapter$ChangeObserver;

    .line 192
    iput-object v3, p0, Landroid/support/v4/widget/CursorAdapter;->g:Landroid/database/DataSetObserver;

    goto :goto_31
.end method

.method public a(Landroid/database/Cursor;)V
    .registers 3

    .prologue
    .line 333
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/CursorAdapter;->b(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 334
    if-eqz v0, :cond_9

    .line 335
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 337
    :cond_9
    return-void
.end method

.method public abstract a(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end method

.method public b(Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 4

    .prologue
    .line 350
    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter;->c:Landroid/database/Cursor;

    if-ne p1, v0, :cond_6

    .line 351
    const/4 v0, 0x0

    .line 372
    :goto_5
    return-object v0

    .line 353
    :cond_6
    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter;->c:Landroid/database/Cursor;

    .line 354
    if-eqz v0, :cond_1c

    .line 355
    iget-object v1, p0, Landroid/support/v4/widget/CursorAdapter;->f:Landroid/support/v4/widget/CursorAdapter$ChangeObserver;

    if-eqz v1, :cond_13

    iget-object v1, p0, Landroid/support/v4/widget/CursorAdapter;->f:Landroid/support/v4/widget/CursorAdapter$ChangeObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 356
    :cond_13
    iget-object v1, p0, Landroid/support/v4/widget/CursorAdapter;->g:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Landroid/support/v4/widget/CursorAdapter;->g:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 358
    :cond_1c
    iput-object p1, p0, Landroid/support/v4/widget/CursorAdapter;->c:Landroid/database/Cursor;

    .line 359
    if-eqz p1, :cond_42

    .line 360
    iget-object v1, p0, Landroid/support/v4/widget/CursorAdapter;->f:Landroid/support/v4/widget/CursorAdapter$ChangeObserver;

    if-eqz v1, :cond_29

    iget-object v1, p0, Landroid/support/v4/widget/CursorAdapter;->f:Landroid/support/v4/widget/CursorAdapter$ChangeObserver;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 361
    :cond_29
    iget-object v1, p0, Landroid/support/v4/widget/CursorAdapter;->g:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_32

    iget-object v1, p0, Landroid/support/v4/widget/CursorAdapter;->g:Landroid/database/DataSetObserver;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 362
    :cond_32
    const-string/jumbo v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/support/v4/widget/CursorAdapter;->e:I

    .line 363
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/widget/CursorAdapter;->a:Z

    .line 365
    invoke-virtual {p0}, Landroid/support/v4/widget/CursorAdapter;->notifyDataSetChanged()V

    goto :goto_5

    .line 367
    :cond_42
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v4/widget/CursorAdapter;->e:I

    .line 368
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/widget/CursorAdapter;->a:Z

    .line 370
    invoke-virtual {p0}, Landroid/support/v4/widget/CursorAdapter;->notifyDataSetInvalidated()V

    goto :goto_5
.end method

.method public b(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .prologue
    .line 313
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/widget/CursorAdapter;->a(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected b()V
    .registers 2

    .prologue
    .line 468
    iget-boolean v0, p0, Landroid/support/v4/widget/CursorAdapter;->b:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter;->c:Landroid/database/Cursor;

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter;->c:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_18

    .line 470
    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter;->c:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v4/widget/CursorAdapter;->a:Z

    .line 472
    :cond_18
    return-void
.end method

.method public c(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .registers 3

    .prologue
    .line 386
    if-nez p1, :cond_6

    const-string/jumbo v0, ""

    :goto_5
    return-object v0

    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 215
    iget-boolean v0, p0, Landroid/support/v4/widget/CursorAdapter;->a:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter;->c:Landroid/database/Cursor;

    if-eqz v0, :cond_f

    .line 216
    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter;->c:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 218
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    .prologue
    .line 279
    iget-boolean v0, p0, Landroid/support/v4/widget/CursorAdapter;->a:Z

    if-eqz v0, :cond_1b

    .line 280
    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter;->c:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 282
    if-nez p2, :cond_13

    .line 283
    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter;->d:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v4/widget/CursorAdapter;->c:Landroid/database/Cursor;

    invoke-virtual {p0, v0, v1, p3}, Landroid/support/v4/widget/CursorAdapter;->b(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 287
    :cond_13
    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter;->d:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v4/widget/CursorAdapter;->c:Landroid/database/Cursor;

    invoke-virtual {p0, p2, v0, v1}, Landroid/support/v4/widget/CursorAdapter;->a(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 290
    :goto_1a
    return-object p2

    :cond_1b
    const/4 p2, 0x0

    goto :goto_1a
.end method

.method public getFilter()Landroid/widget/Filter;
    .registers 2

    .prologue
    .line 425
    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter;->h:Landroid/support/v4/widget/CursorFilter;

    if-nez v0, :cond_b

    .line 426
    new-instance v0, Landroid/support/v4/widget/CursorFilter;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/CursorFilter;-><init>(Landroid/support/v4/widget/CursorFilter$CursorFilterClient;)V

    iput-object v0, p0, Landroid/support/v4/widget/CursorAdapter;->h:Landroid/support/v4/widget/CursorFilter;

    .line 428
    :cond_b
    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter;->h:Landroid/support/v4/widget/CursorFilter;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 227
    iget-boolean v0, p0, Landroid/support/v4/widget/CursorAdapter;->a:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter;->c:Landroid/database/Cursor;

    if-eqz v0, :cond_10

    .line 228
    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter;->c:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 229
    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter;->c:Landroid/database/Cursor;

    .line 231
    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public getItemId(I)J
    .registers 5

    .prologue
    const-wide/16 v0, 0x0

    .line 240
    iget-boolean v2, p0, Landroid/support/v4/widget/CursorAdapter;->a:Z

    if-eqz v2, :cond_1a

    iget-object v2, p0, Landroid/support/v4/widget/CursorAdapter;->c:Landroid/database/Cursor;

    if-eqz v2, :cond_1a

    .line 241
    iget-object v2, p0, Landroid/support/v4/widget/CursorAdapter;->c:Landroid/database/Cursor;

    invoke-interface {v2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 242
    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter;->c:Landroid/database/Cursor;

    iget v1, p0, Landroid/support/v4/widget/CursorAdapter;->e:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 247
    :cond_1a
    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    .prologue
    .line 261
    iget-boolean v0, p0, Landroid/support/v4/widget/CursorAdapter;->a:Z

    if-nez v0, :cond_d

    .line 262
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "this should only be called when the cursor is valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_d
    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter;->c:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 265
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "couldn\'t move cursor to position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_2f
    if-nez p2, :cond_39

    .line 269
    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter;->d:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v4/widget/CursorAdapter;->c:Landroid/database/Cursor;

    invoke-virtual {p0, v0, v1, p3}, Landroid/support/v4/widget/CursorAdapter;->a(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 273
    :cond_39
    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter;->d:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v4/widget/CursorAdapter;->c:Landroid/database/Cursor;

    invoke-virtual {p0, p2, v0, v1}, Landroid/support/v4/widget/CursorAdapter;->a(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 274
    return-object p2
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 253
    const/4 v0, 0x1

    return v0
.end method
