.class Landroid/support/transition/TransitionSetPort;
.super Landroid/support/transition/TransitionPort;
.source "TransitionSetPort.java"


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/transition/TransitionPort;",
            ">;"
        }
    .end annotation
.end field

.field b:I

.field c:Z

.field private w:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/support/transition/TransitionPort;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/TransitionSetPort;->a:Ljava/util/ArrayList;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/transition/TransitionSetPort;->c:Z

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/transition/TransitionSetPort;->w:Z

    .line 55
    return-void
.end method

.method private m()V
    .registers 4

    .prologue
    .line 158
    new-instance v1, Landroid/support/transition/TransitionSetPort$TransitionSetListener;

    invoke-direct {v1, p0}, Landroid/support/transition/TransitionSetPort$TransitionSetListener;-><init>(Landroid/support/transition/TransitionSetPort;)V

    .line 159
    iget-object v0, p0, Landroid/support/transition/TransitionSetPort;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionPort;

    .line 160
    invoke-virtual {v0, v1}, Landroid/support/transition/TransitionPort;->a(Landroid/support/transition/TransitionPort$TransitionListener;)Landroid/support/transition/TransitionPort;

    goto :goto_b

    .line 162
    :cond_1b
    iget-object v0, p0, Landroid/support/transition/TransitionSetPort;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Landroid/support/transition/TransitionSetPort;->b:I

    .line 163
    return-void
.end method


# virtual methods
.method public synthetic a(I)Landroid/support/transition/TransitionPort;
    .registers 3

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Landroid/support/transition/TransitionSetPort;->d(I)Landroid/support/transition/TransitionSetPort;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(J)Landroid/support/transition/TransitionPort;
    .registers 4

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Landroid/support/transition/TransitionSetPort;->c(J)Landroid/support/transition/TransitionSetPort;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Landroid/animation/TimeInterpolator;)Landroid/support/transition/TransitionPort;
    .registers 3

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Landroid/support/transition/TransitionSetPort;->b(Landroid/animation/TimeInterpolator;)Landroid/support/transition/TransitionSetPort;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Landroid/support/transition/TransitionPort$TransitionListener;)Landroid/support/transition/TransitionPort;
    .registers 3

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Landroid/support/transition/TransitionSetPort;->c(Landroid/support/transition/TransitionPort$TransitionListener;)Landroid/support/transition/TransitionSetPort;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Landroid/view/View;)Landroid/support/transition/TransitionPort;
    .registers 3

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Landroid/support/transition/TransitionSetPort;->e(Landroid/view/View;)Landroid/support/transition/TransitionSetPort;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/transition/TransitionPort;)Landroid/support/transition/TransitionSetPort;
    .registers 6

    .prologue
    .line 77
    if-eqz p1, :cond_16

    .line 78
    iget-object v0, p0, Landroid/support/transition/TransitionSetPort;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    iput-object p0, p1, Landroid/support/transition/TransitionPort;->o:Landroid/support/transition/TransitionSetPort;

    .line 80
    iget-wide v0, p0, Landroid/support/transition/TransitionSetPort;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_16

    .line 81
    iget-wide v0, p0, Landroid/support/transition/TransitionSetPort;->e:J

    invoke-virtual {p1, v0, v1}, Landroid/support/transition/TransitionPort;->a(J)Landroid/support/transition/TransitionPort;

    .line 84
    :cond_16
    return-object p0
.end method

.method a(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .prologue
    .line 292
    invoke-super {p0, p1}, Landroid/support/transition/TransitionPort;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 293
    const/4 v0, 0x0

    move v5, v0

    move-object v0, v1

    move v1, v5

    :goto_8
    iget-object v2, p0, Landroid/support/transition/TransitionSetPort;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4d

    .line 294
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Landroid/support/transition/TransitionSetPort;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionPort;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/transition/TransitionPort;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 293
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_8

    .line 296
    :cond_4d
    return-object v0
.end method

.method public a(Landroid/support/transition/TransitionValues;)V
    .registers 8

    .prologue
    .line 216
    iget-object v0, p1, Landroid/support/transition/TransitionValues;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    .line 217
    iget-object v0, p1, Landroid/support/transition/TransitionValues;->b:Landroid/view/View;

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Landroid/support/transition/TransitionSetPort;->a(Landroid/view/View;J)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 218
    iget-object v0, p0, Landroid/support/transition/TransitionSetPort;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionPort;

    .line 219
    iget-object v3, p1, Landroid/support/transition/TransitionValues;->b:Landroid/view/View;

    int-to-long v4, v1

    invoke-virtual {v0, v3, v4, v5}, Landroid/support/transition/TransitionPort;->a(Landroid/view/View;J)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 220
    invoke-virtual {v0, p1}, Landroid/support/transition/TransitionPort;->a(Landroid/support/transition/TransitionValues;)V

    goto :goto_15

    .line 224
    :cond_2e
    return-void
.end method

.method protected a(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValuesMaps;Landroid/support/transition/TransitionValuesMaps;)V
    .registers 6

    .prologue
    .line 172
    iget-object v0, p0, Landroid/support/transition/TransitionSetPort;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionPort;

    .line 173
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/transition/TransitionPort;->a(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValuesMaps;Landroid/support/transition/TransitionValuesMaps;)V

    goto :goto_6

    .line 175
    :cond_16
    return-void
.end method

.method public synthetic b(I)Landroid/support/transition/TransitionPort;
    .registers 3

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Landroid/support/transition/TransitionSetPort;->e(I)Landroid/support/transition/TransitionSetPort;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(J)Landroid/support/transition/TransitionPort;
    .registers 4

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Landroid/support/transition/TransitionSetPort;->d(J)Landroid/support/transition/TransitionSetPort;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Landroid/support/transition/TransitionPort$TransitionListener;)Landroid/support/transition/TransitionPort;
    .registers 3

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Landroid/support/transition/TransitionSetPort;->d(Landroid/support/transition/TransitionPort$TransitionListener;)Landroid/support/transition/TransitionSetPort;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Landroid/view/View;)Landroid/support/transition/TransitionPort;
    .registers 3

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Landroid/support/transition/TransitionSetPort;->f(Landroid/view/View;)Landroid/support/transition/TransitionSetPort;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/animation/TimeInterpolator;)Landroid/support/transition/TransitionSetPort;
    .registers 3

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/support/transition/TransitionPort;->a(Landroid/animation/TimeInterpolator;)Landroid/support/transition/TransitionPort;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionSetPort;

    return-object v0
.end method

.method public b(Landroid/support/transition/TransitionValues;)V
    .registers 8

    .prologue
    .line 228
    iget-object v0, p1, Landroid/support/transition/TransitionValues;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    .line 229
    iget-object v0, p1, Landroid/support/transition/TransitionValues;->b:Landroid/view/View;

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Landroid/support/transition/TransitionSetPort;->a(Landroid/view/View;J)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 230
    iget-object v0, p0, Landroid/support/transition/TransitionSetPort;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionPort;

    .line 231
    iget-object v3, p1, Landroid/support/transition/TransitionValues;->b:Landroid/view/View;

    int-to-long v4, v1

    invoke-virtual {v0, v3, v4, v5}, Landroid/support/transition/TransitionPort;->a(Landroid/view/View;J)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 232
    invoke-virtual {v0, p1}, Landroid/support/transition/TransitionPort;->b(Landroid/support/transition/TransitionValues;)V

    goto :goto_15

    .line 236
    :cond_2e
    return-void
.end method

.method public c(I)Landroid/support/transition/TransitionSetPort;
    .registers 5

    .prologue
    .line 62
    packed-switch p1, :pswitch_data_26

    .line 70
    new-instance v0, Landroid/util/AndroidRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid parameter for TransitionSet ordering: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :pswitch_1d
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/transition/TransitionSetPort;->w:Z

    .line 73
    :goto_20
    return-object p0

    .line 67
    :pswitch_21
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/transition/TransitionSetPort;->w:Z

    goto :goto_20

    .line 62
    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_21
        :pswitch_1d
    .end packed-switch
.end method

.method public c(J)Landroid/support/transition/TransitionSetPort;
    .registers 8

    .prologue
    .line 96
    invoke-super {p0, p1, p2}, Landroid/support/transition/TransitionPort;->a(J)Landroid/support/transition/TransitionPort;

    .line 97
    iget-wide v0, p0, Landroid/support/transition/TransitionSetPort;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_24

    .line 98
    iget-object v0, p0, Landroid/support/transition/TransitionSetPort;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 99
    const/4 v0, 0x0

    move v1, v0

    :goto_13
    if-ge v1, v2, :cond_24

    .line 100
    iget-object v0, p0, Landroid/support/transition/TransitionSetPort;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionPort;

    invoke-virtual {v0, p1, p2}, Landroid/support/transition/TransitionPort;->a(J)Landroid/support/transition/TransitionPort;

    .line 99
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_13

    .line 103
    :cond_24
    return-object p0
.end method

.method public c(Landroid/support/transition/TransitionPort$TransitionListener;)Landroid/support/transition/TransitionSetPort;
    .registers 3

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/support/transition/TransitionPort;->a(Landroid/support/transition/TransitionPort$TransitionListener;)Landroid/support/transition/TransitionPort;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionSetPort;

    return-object v0
.end method

.method public c(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 242
    invoke-super {p0, p1}, Landroid/support/transition/TransitionPort;->c(Landroid/view/View;)V

    .line 243
    iget-object v0, p0, Landroid/support/transition/TransitionSetPort;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 244
    const/4 v0, 0x0

    move v1, v0

    :goto_b
    if-ge v1, v2, :cond_1c

    .line 245
    iget-object v0, p0, Landroid/support/transition/TransitionSetPort;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionPort;

    invoke-virtual {v0, p1}, Landroid/support/transition/TransitionPort;->c(Landroid/view/View;)V

    .line 244
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    .line 247
    :cond_1c
    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 29
    invoke-virtual {p0}, Landroid/support/transition/TransitionSetPort;->l()Landroid/support/transition/TransitionSetPort;

    move-result-object v0

    return-object v0
.end method

.method public d(I)Landroid/support/transition/TransitionSetPort;
    .registers 3

    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/support/transition/TransitionPort;->a(I)Landroid/support/transition/TransitionPort;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionSetPort;

    return-object v0
.end method

.method public d(J)Landroid/support/transition/TransitionSetPort;
    .registers 4

    .prologue
    .line 108
    invoke-super {p0, p1, p2}, Landroid/support/transition/TransitionPort;->b(J)Landroid/support/transition/TransitionPort;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionSetPort;

    return-object v0
.end method

.method public d(Landroid/support/transition/TransitionPort$TransitionListener;)Landroid/support/transition/TransitionSetPort;
    .registers 3

    .prologue
    .line 143
    invoke-super {p0, p1}, Landroid/support/transition/TransitionPort;->b(Landroid/support/transition/TransitionPort$TransitionListener;)Landroid/support/transition/TransitionPort;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionSetPort;

    return-object v0
.end method

.method public d(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 253
    invoke-super {p0, p1}, Landroid/support/transition/TransitionPort;->d(Landroid/view/View;)V

    .line 254
    iget-object v0, p0, Landroid/support/transition/TransitionSetPort;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 255
    const/4 v0, 0x0

    move v1, v0

    :goto_b
    if-ge v1, v2, :cond_1c

    .line 256
    iget-object v0, p0, Landroid/support/transition/TransitionSetPort;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionPort;

    invoke-virtual {v0, p1}, Landroid/support/transition/TransitionPort;->d(Landroid/view/View;)V

    .line 255
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    .line 258
    :cond_1c
    return-void
.end method

.method public e(I)Landroid/support/transition/TransitionSetPort;
    .registers 3

    .prologue
    .line 133
    invoke-super {p0, p1}, Landroid/support/transition/TransitionPort;->b(I)Landroid/support/transition/TransitionPort;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionSetPort;

    return-object v0
.end method

.method public e(Landroid/view/View;)Landroid/support/transition/TransitionSetPort;
    .registers 3

    .prologue
    .line 118
    invoke-super {p0, p1}, Landroid/support/transition/TransitionPort;->a(Landroid/view/View;)Landroid/support/transition/TransitionPort;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionSetPort;

    return-object v0
.end method

.method protected e()V
    .registers 5

    .prologue
    .line 183
    iget-object v0, p0, Landroid/support/transition/TransitionSetPort;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 184
    invoke-virtual {p0}, Landroid/support/transition/TransitionSetPort;->h()V

    .line 185
    invoke-virtual {p0}, Landroid/support/transition/TransitionSetPort;->i()V

    .line 212
    :cond_e
    :goto_e
    return-void

    .line 188
    :cond_f
    invoke-direct {p0}, Landroid/support/transition/TransitionSetPort;->m()V

    .line 189
    iget-boolean v0, p0, Landroid/support/transition/TransitionSetPort;->w:Z

    if-nez v0, :cond_4d

    .line 192
    const/4 v0, 0x1

    move v2, v0

    :goto_18
    iget-object v0, p0, Landroid/support/transition/TransitionSetPort;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_3e

    .line 193
    iget-object v0, p0, Landroid/support/transition/TransitionSetPort;->a:Ljava/util/ArrayList;

    add-int/lit8 v1, v2, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionPort;

    .line 194
    iget-object v1, p0, Landroid/support/transition/TransitionSetPort;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/TransitionPort;

    .line 195
    new-instance v3, Landroid/support/transition/TransitionSetPort$1;

    invoke-direct {v3, p0, v1}, Landroid/support/transition/TransitionSetPort$1;-><init>(Landroid/support/transition/TransitionSetPort;Landroid/support/transition/TransitionPort;)V

    invoke-virtual {v0, v3}, Landroid/support/transition/TransitionPort;->a(Landroid/support/transition/TransitionPort$TransitionListener;)Landroid/support/transition/TransitionPort;

    .line 192
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_18

    .line 203
    :cond_3e
    iget-object v0, p0, Landroid/support/transition/TransitionSetPort;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionPort;

    .line 204
    if-eqz v0, :cond_e

    .line 205
    invoke-virtual {v0}, Landroid/support/transition/TransitionPort;->e()V

    goto :goto_e

    .line 208
    :cond_4d
    iget-object v0, p0, Landroid/support/transition/TransitionSetPort;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_53
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionPort;

    .line 209
    invoke-virtual {v0}, Landroid/support/transition/TransitionPort;->e()V

    goto :goto_53
.end method

.method public f(Landroid/view/View;)Landroid/support/transition/TransitionSetPort;
    .registers 3

    .prologue
    .line 138
    invoke-super {p0, p1}, Landroid/support/transition/TransitionPort;->b(Landroid/view/View;)Landroid/support/transition/TransitionPort;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionSetPort;

    return-object v0
.end method

.method public synthetic j()Landroid/support/transition/TransitionPort;
    .registers 2

    .prologue
    .line 29
    invoke-virtual {p0}, Landroid/support/transition/TransitionSetPort;->l()Landroid/support/transition/TransitionSetPort;

    move-result-object v0

    return-object v0
.end method

.method public l()Landroid/support/transition/TransitionSetPort;
    .registers 5

    .prologue
    .line 301
    invoke-super {p0}, Landroid/support/transition/TransitionPort;->j()Landroid/support/transition/TransitionPort;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionSetPort;

    .line 302
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/support/transition/TransitionSetPort;->a:Ljava/util/ArrayList;

    .line 303
    iget-object v1, p0, Landroid/support/transition/TransitionSetPort;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 304
    const/4 v1, 0x0

    move v2, v1

    :goto_15
    if-ge v2, v3, :cond_2a

    .line 305
    iget-object v1, p0, Landroid/support/transition/TransitionSetPort;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/TransitionPort;

    invoke-virtual {v1}, Landroid/support/transition/TransitionPort;->j()Landroid/support/transition/TransitionPort;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/transition/TransitionSetPort;->a(Landroid/support/transition/TransitionPort;)Landroid/support/transition/TransitionSetPort;

    .line 304
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_15

    .line 307
    :cond_2a
    return-object v0
.end method
