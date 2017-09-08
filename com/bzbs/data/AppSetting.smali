.class public Lcom/bzbs/data/AppSetting;
.super Ljava/lang/Object;
.source "AppSetting.java"


# static fields
.field public static A:Ljava/lang/String;

.field public static B:Ljava/lang/String;

.field public static C:Ljava/lang/String;

.field public static D:Ljava/lang/String;

.field public static E:Ljava/lang/String;

.field public static F:Ljava/lang/String;

.field public static G:Ljava/lang/String;

.field public static H:Ljava/lang/String;

.field public static I:Ljava/lang/String;

.field public static J:Ljava/lang/String;

.field public static K:Ljava/lang/String;

.field public static L:Ljava/lang/String;

.field public static M:Ljava/lang/String;

.field public static N:Ljava/lang/String;

.field public static O:Ljava/lang/String;

.field public static P:Ljava/lang/String;

.field public static Q:I

.field public static R:Ljava/lang/String;

.field public static S:Ljava/lang/String;

.field public static T:Ljava/lang/String;

.field public static U:Ljava/lang/String;

.field public static V:Z

.field public static W:Ljava/lang/String;

.field public static X:Ljava/lang/String;

.field public static Y:Ljava/lang/String;

.field public static Z:Ljava/lang/String;

.field public static a:Landroid/app/Activity;

.field public static aA:I

.field public static aB:[Ljava/lang/String;

.field public static aC:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static aD:I

.field public static aE:I

.field public static aF:I

.field public static aa:Ljava/lang/String;

.field public static ab:Ljava/lang/String;

.field public static ac:Ljava/lang/String;

.field public static ad:Ljava/lang/String;

.field public static ae:Ljava/lang/String;

.field public static af:I

.field public static ag:I

.field public static ah:I

.field public static ai:I

.field public static final aj:Ljava/lang/String;

.field public static ak:Z

.field public static al:Ljava/lang/String;

.field public static am:I

.field public static an:I

.field public static ao:I

.field public static ap:I

.field public static aq:I

.field public static ar:I

.field public static as:I

.field public static at:I

.field public static au:I

.field public static av:I

.field public static aw:I

.field public static ax:J

.field public static ay:Z

.field public static az:Z

.field public static b:Lcom/samsung/privilege/activity/CardsUsedActivity;

.field public static c:I

.field public static d:I

.field public static e:I

.field public static f:I

.field public static final g:Ljava/lang/String;

.field public static final h:Ljava/lang/String;

.field public static final i:Ljava/lang/String;

.field public static final j:Ljava/lang/String;

.field public static k:Ljava/lang/String;

.field public static l:Ljava/lang/String;

.field public static m:Z

.field public static n:Ljava/lang/String;

.field public static final o:Ljava/lang/String;

.field public static p:Ljava/lang/String;

.field public static q:Z

.field public static r:Ljava/lang/String;

.field public static s:Ljava/lang/String;

.field public static t:Ljava/lang/String;

.field public static u:Ljava/lang/String;

.field public static v:Ljava/lang/String;

.field public static w:Ljava/lang/String;

.field public static x:Ljava/lang/String;

.field public static y:Ljava/lang/String;

.field public static z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/16 v6, 0x3840

    const/16 v5, 0x3c

    const/16 v1, 0xff

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 31
    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/bzbs/data/AppSetting;->c:I

    .line 32
    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/bzbs/data/AppSetting;->d:I

    .line 33
    invoke-static {v1, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/bzbs/data/AppSetting;->e:I

    .line 34
    const/4 v0, 0x7

    const/16 v1, 0x22

    const/16 v2, 0x49

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/bzbs/data/AppSetting;->f:I

    .line 130
    const-string/jumbo v0, "NDAyNzA1NDg2NDY2OTIy"

    invoke-static {v0}, Lcom/bzbs/util/DC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->g:Ljava/lang/String;

    .line 131
    const-string/jumbo v0, "NzY4ODMwNDc5ODQ3ODcy"

    invoke-static {v0}, Lcom/bzbs/util/DC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->h:Ljava/lang/String;

    .line 132
    const-string/jumbo v0, "MTUyNTYzNTU5NzY1MjU5Mg=="

    invoke-static {v0}, Lcom/bzbs/util/DC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->i:Ljava/lang/String;

    .line 133
    const-string/jumbo v0, "NTE3MTU1NjYxNzYwNDgz"

    invoke-static {v0}, Lcom/bzbs/util/DC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->j:Ljava/lang/String;

    .line 262
    const-string/jumbo v0, ""

    sput-object v0, Lcom/bzbs/data/AppSetting;->k:Ljava/lang/String;

    .line 281
    const-string/jumbo v0, "QnV6emVCZWVzX0lzQXV0b0xvZ2lu"

    invoke-static {v0}, Lcom/bzbs/util/DC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->l:Ljava/lang/String;

    .line 285
    sput-boolean v3, Lcom/bzbs/data/AppSetting;->m:Z

    .line 308
    const-string/jumbo v0, ""

    sput-object v0, Lcom/bzbs/data/AppSetting;->n:Ljava/lang/String;

    .line 310
    const-string/jumbo v0, "aHR0cHM6Ly9ncmFwaC5mYWNlYm9vay5jb20v"

    invoke-static {v0}, Lcom/bzbs/util/DC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->o:Ljava/lang/String;

    .line 312
    const-string/jumbo v0, "Y29tLnNhbXN1bmcucHJpdmlsZWdl"

    invoke-static {v0}, Lcom/bzbs/util/DC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->p:Ljava/lang/String;

    .line 315
    sput-boolean v4, Lcom/bzbs/data/AppSetting;->q:Z

    .line 316
    const-string/jumbo v0, "YW5kcm9pZF9naWZ0"

    invoke-static {v0}, Lcom/bzbs/util/DC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->r:Ljava/lang/String;

    .line 317
    const-string/jumbo v0, "YW5kcm9pZF9naWZ0X2xhb3M="

    invoke-static {v0}, Lcom/bzbs/util/DC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->s:Ljava/lang/String;

    .line 318
    const-string/jumbo v0, "YW5kcm9pZF9naWZ0X2NhbWJvZGlh"

    invoke-static {v0}, Lcom/bzbs/util/DC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->t:Ljava/lang/String;

    .line 319
    const-string/jumbo v0, "YW5kcm9pZF9naWZ0X215YW5tYXI="

    invoke-static {v0}, Lcom/bzbs/util/DC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->u:Ljava/lang/String;

    .line 320
    const-string/jumbo v0, "NzA="

    invoke-static {v0}, Lcom/bzbs/util/DC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->v:Ljava/lang/String;

    .line 321
    const-string/jumbo v0, "NTYwNQ=="

    invoke-static {v0}, Lcom/bzbs/util/DC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->w:Ljava/lang/String;

    .line 322
    const-string/jumbo v0, "NTYwNg=="

    invoke-static {v0}, Lcom/bzbs/util/DC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->x:Ljava/lang/String;

    .line 323
    const-string/jumbo v0, "NjM2Mw=="

    invoke-static {v0}, Lcom/bzbs/util/DC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->y:Ljava/lang/String;

    .line 324
    const-string/jumbo v0, "c2Ftc3VuZ2dpZnQ="

    invoke-static {v0}, Lcom/bzbs/util/DC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->z:Ljava/lang/String;

    .line 325
    const-string/jumbo v0, "c2Ftc3VuZ2dpZnRfbGFvcw=="

    invoke-static {v0}, Lcom/bzbs/util/DC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->A:Ljava/lang/String;

    .line 326
    const-string/jumbo v0, "c2Ftc3VuZ2dpZnRfY2FtYm9kaWE="

    invoke-static {v0}, Lcom/bzbs/util/DC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->B:Ljava/lang/String;

    .line 327
    const-string/jumbo v0, "c2Ftc3VuZ2dpZnRfbXlhbm1hcg=="

    invoke-static {v0}, Lcom/bzbs/util/DC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->C:Ljava/lang/String;

    .line 328
    const-string/jumbo v0, "MTIzODQ0OTQ0MzM5"

    invoke-static {v0}, Lcom/bzbs/util/DC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->D:Ljava/lang/String;

    .line 329
    const-string/jumbo v0, "OTU2ODUzMDA1MDc4"

    invoke-static {v0}, Lcom/bzbs/util/DC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->E:Ljava/lang/String;

    .line 330
    const-string/jumbo v0, "ODk5MTY4NTQyMDIw"

    invoke-static {v0}, Lcom/bzbs/util/DC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->F:Ljava/lang/String;

    .line 331
    const-string/jumbo v0, "MjI4MjI3MDU5OTc2"

    invoke-static {v0}, Lcom/bzbs/util/DC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->G:Ljava/lang/String;

    .line 332
    const-string/jumbo v0, "c2Ftc3VuZ3RoYWlsYW5kYXBwc0BnbWFpbC5jb20="

    invoke-static {v0}, Lcom/bzbs/util/DC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->H:Ljava/lang/String;

    .line 333
    const-string/jumbo v0, "Z2FsYXh5bGFvc2NsdWJAZ21haWwuY29t"

    invoke-static {v0}, Lcom/bzbs/util/DC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->I:Ljava/lang/String;

    .line 334
    const-string/jumbo v0, "c2Ftc3VuZ3RoYWlsYW5kYXBwc0BnbWFpbC5jb20="

    invoke-static {v0}, Lcom/bzbs/util/DC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->J:Ljava/lang/String;

    .line 335
    const-string/jumbo v0, "c2Ftc3VuZ215YW5tYXJhcHBzQGdtYWlsLmNvbQ=="

    invoke-static {v0}, Lcom/bzbs/util/DC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->K:Ljava/lang/String;

    .line 336
    const-string/jumbo v0, "Z2FsYXh5Z2lmdHRoYWlsYW5kQGdtYWlsLmNvbQ=="

    invoke-static {v0}, Lcom/bzbs/util/DC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->L:Ljava/lang/String;

    .line 337
    const-string/jumbo v0, "Z2FsYXh5bGFvc2NsdWJAZ21haWwuY29t"

    invoke-static {v0}, Lcom/bzbs/util/DC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->M:Ljava/lang/String;

    .line 338
    const-string/jumbo v0, "Z2FsYXh5Z2lmdHRoYWlsYW5kQGdtYWlsLmNvbQ=="

    invoke-static {v0}, Lcom/bzbs/util/DC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->N:Ljava/lang/String;

    .line 339
    const-string/jumbo v0, "Z2FsYXh5Z2lmdG15YW5tYXJAZ21haWwuY29t"

    invoke-static {v0}, Lcom/bzbs/util/DC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->O:Ljava/lang/String;

    .line 340
    const-string/jumbo v0, "Y2FtcGFpZ25fZ2lmdA=="

    invoke-static {v0}, Lcom/bzbs/util/DC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->P:Ljava/lang/String;

    .line 341
    const/16 v0, 0x9e

    sput v0, Lcom/bzbs/data/AppSetting;->Q:I

    .line 342
    const-string/jumbo v0, "Z2lmdF93ZWxjb21lX3BvcHVw"

    invoke-static {v0}, Lcom/bzbs/util/DC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    .line 343
    const-string/jumbo v0, "Z2lmdF9sYW9zX3dlbGNvbWVfcG9wdXA="

    invoke-static {v0}, Lcom/bzbs/util/DC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->S:Ljava/lang/String;

    .line 344
    const-string/jumbo v0, ""

    invoke-static {v0}, Lcom/bzbs/util/DC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->T:Ljava/lang/String;

    .line 345
    const-string/jumbo v0, ""

    invoke-static {v0}, Lcom/bzbs/util/DC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->U:Ljava/lang/String;

    .line 346
    sput-boolean v4, Lcom/bzbs/data/AppSetting;->V:Z

    .line 347
    const-string/jumbo v0, "aHR0cHM6Ly9hcGkuYnV6emViZWVzLmNvbS8="

    invoke-static {v0}, Lcom/bzbs/util/DC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->W:Ljava/lang/String;

    .line 348
    const-string/jumbo v0, "aHR0cHM6Ly9idXp6ZWJlZXMuYmxvYi5jb3JlLndpbmRvd3MubmV0Lw=="

    invoke-static {v0}, Lcom/bzbs/util/DC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->X:Ljava/lang/String;

    .line 349
    const-string/jumbo v0, "aHR0cHM6Ly93d3cuYnV6emViZWVzLmNvbS8="

    invoke-static {v0}, Lcom/bzbs/util/DC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->Y:Ljava/lang/String;

    .line 350
    const-string/jumbo v0, "aHR0cHM6Ly9taXNjLmJ1enplYmVlcy5jb20v"

    invoke-static {v0}, Lcom/bzbs/util/DC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->Z:Ljava/lang/String;

    .line 351
    const-string/jumbo v0, "aHR0cHM6Ly93YWxsZXQuYnV6emViZWVzLmNvbS8="

    invoke-static {v0}, Lcom/bzbs/util/DC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->aa:Ljava/lang/String;

    .line 352
    const-string/jumbo v0, "aHR0cHM6Ly9taXNjLmJ1enplYmVlcy5jb20vZ2lmdC9wb2ludF9lbmcuaHRtbA=="

    invoke-static {v0}, Lcom/bzbs/util/DC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->ab:Ljava/lang/String;

    .line 353
    const-string/jumbo v0, "aHR0cHM6Ly9taXNjLmJ1enplYmVlcy5jb20vZ2lmdC9wb2ludF90aC5odG1s"

    invoke-static {v0}, Lcom/bzbs/util/DC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->ac:Ljava/lang/String;

    .line 354
    const-string/jumbo v0, "aHR0cHM6Ly9taXNjLmJ1enplYmVlcy5jb20vZ2lmdC90ZXJtc19lbi5odG1s"

    invoke-static {v0}, Lcom/bzbs/util/DC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->ad:Ljava/lang/String;

    .line 355
    const-string/jumbo v0, "aHR0cHM6Ly9taXNjLmJ1enplYmVlcy5jb20vZ2lmdC90ZXJtc190aC5odG1s"

    invoke-static {v0}, Lcom/bzbs/util/DC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->ae:Ljava/lang/String;

    .line 356
    sput v6, Lcom/bzbs/data/AppSetting;->af:I

    .line 357
    const/16 v0, 0xe10

    sput v0, Lcom/bzbs/data/AppSetting;->ag:I

    .line 358
    sput v6, Lcom/bzbs/data/AppSetting;->ah:I

    .line 359
    sput v5, Lcom/bzbs/data/AppSetting;->ai:I

    .line 361
    const-string/jumbo v0, "UFJFRg=="

    invoke-static {v0}, Lcom/bzbs/util/DC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->aj:Ljava/lang/String;

    .line 362
    sput-boolean v3, Lcom/bzbs/data/AppSetting;->ak:Z

    .line 431
    const-string/jumbo v0, "R2FsYXh5R2lmdA=="

    invoke-static {v0}, Lcom/bzbs/util/DC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->al:Ljava/lang/String;

    .line 472
    sput v3, Lcom/bzbs/data/AppSetting;->am:I

    .line 473
    sput v3, Lcom/bzbs/data/AppSetting;->an:I

    .line 474
    const/16 v0, 0x1388

    sput v0, Lcom/bzbs/data/AppSetting;->ao:I

    .line 475
    const/16 v0, 0x2710

    sput v0, Lcom/bzbs/data/AppSetting;->ap:I

    .line 476
    sput v4, Lcom/bzbs/data/AppSetting;->aq:I

    .line 477
    const/16 v0, 0x200

    sput v0, Lcom/bzbs/data/AppSetting;->ar:I

    .line 478
    sput v5, Lcom/bzbs/data/AppSetting;->as:I

    .line 480
    sput v3, Lcom/bzbs/data/AppSetting;->at:I

    .line 481
    sput v3, Lcom/bzbs/data/AppSetting;->au:I

    .line 482
    const/16 v0, 0x19

    sput v0, Lcom/bzbs/data/AppSetting;->av:I

    .line 483
    const/16 v0, 0x32

    sput v0, Lcom/bzbs/data/AppSetting;->aw:I

    .line 485
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/bzbs/data/AppSetting;->ax:J

    .line 489
    sput-boolean v3, Lcom/bzbs/data/AppSetting;->ay:Z

    .line 490
    sput-boolean v4, Lcom/bzbs/data/AppSetting;->az:Z

    .line 492
    const/16 v0, 0x1e

    sput v0, Lcom/bzbs/data/AppSetting;->aA:I

    .line 525
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "user_birthday"

    aput-object v1, v0, v3

    const-string/jumbo v1, "email"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string/jumbo v2, "user_friends"

    aput-object v2, v0, v1

    sput-object v0, Lcom/bzbs/data/AppSetting;->aB:[Ljava/lang/String;

    .line 551
    sget-object v0, Lcom/bzbs/data/AppSetting;->aB:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->aC:Ljava/util/List;

    .line 554
    sput v3, Lcom/bzbs/data/AppSetting;->aD:I

    .line 555
    sput v3, Lcom/bzbs/data/AppSetting;->aE:I

    .line 557
    sput v3, Lcom/bzbs/data/AppSetting;->aF:I

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 61
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1054"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 62
    const-string/jumbo v0, "fonts/kit55p.ttf"

    .line 68
    :goto_10
    return-object v0

    .line 63
    :cond_11
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1108"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 64
    const-string/jumbo v0, "fonts/phetsarath_ot.ttf"

    goto :goto_10

    .line 65
    :cond_22
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1109"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 66
    const-string/jumbo v0, "fonts/zawgyi_one.ttf"

    goto :goto_10

    .line 68
    :cond_33
    const-string/jumbo v0, "fonts/kit55p.ttf"

    goto :goto_10
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 87
    if-eqz p0, :cond_39

    .line 88
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1054"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 89
    const-string/jumbo v0, "fonts/kit55p.ttf"

    .line 98
    :goto_12
    return-object v0

    .line 90
    :cond_13
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1108"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 91
    const-string/jumbo v0, "fonts/phetsarath_ot.ttf"

    goto :goto_12

    .line 92
    :cond_24
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1109"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 93
    const-string/jumbo v0, "fonts/zawgyi_one.ttf"

    goto :goto_12

    .line 95
    :cond_35
    const-string/jumbo v0, "fonts/kit55p.ttf"

    goto :goto_12

    .line 98
    :cond_39
    const-string/jumbo v0, "fonts/kit55p.ttf"

    goto :goto_12
.end method

.method public static c(Landroid/content/Context;)F
    .registers 5

    .prologue
    const/high16 v0, 0x41c00000    # 24.0f

    const/high16 v1, 0x41800000    # 16.0f

    .line 119
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1054"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 126
    :cond_11
    :goto_11
    return v0

    .line 121
    :cond_12
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1108"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    move v0, v1

    .line 122
    goto :goto_11

    .line 123
    :cond_21
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1109"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    move v0, v1

    .line 124
    goto :goto_11
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 138
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->C(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 147
    if-eqz v1, :cond_7b

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7b

    .line 153
    :goto_13
    if-eqz v0, :cond_11a

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a

    .line 154
    const-string/jumbo v1, "45608"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_78

    const-string/jumbo v1, "45601"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_78

    const-string/jumbo v1, "45602"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_78

    const-string/jumbo v1, "45605"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_78

    const-string/jumbo v1, "45606"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_78

    const-string/jumbo v1, "45609"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_78

    const-string/jumbo v1, "45604"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_78

    const-string/jumbo v1, "45611"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_78

    const-string/jumbo v1, "45204"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_78

    const-string/jumbo v1, "45603"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 155
    :cond_78
    sget-object v0, Lcom/bzbs/data/AppSetting;->i:Ljava/lang/String;

    .line 165
    :goto_7a
    return-object v0

    .line 150
    :cond_7b
    invoke-static {p0}, Lcom/bzbs/util/PhoneManagerUtil;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 156
    :cond_80
    const-string/jumbo v1, "45701"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a4

    const-string/jumbo v1, "45708"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a4

    const-string/jumbo v1, "45703"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a4

    const-string/jumbo v1, "45702"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a7

    .line 157
    :cond_a4
    sget-object v0, Lcom/bzbs/data/AppSetting;->h:Ljava/lang/String;

    goto :goto_7a

    .line 158
    :cond_a7
    const-string/jumbo v1, "41405"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c2

    const-string/jumbo v1, "41401"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c2

    const-string/jumbo v1, "41406"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c5

    .line 159
    :cond_c2
    sget-object v0, Lcom/bzbs/data/AppSetting;->j:Ljava/lang/String;

    goto :goto_7a

    .line 160
    :cond_c5
    const-string/jumbo v1, "52003"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_116

    const-string/jumbo v1, "52023"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_116

    const-string/jumbo v1, "52001"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_116

    const-string/jumbo v1, "52018"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_116

    const-string/jumbo v1, "52005"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_116

    const-string/jumbo v1, "52099"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_116

    const-string/jumbo v1, "52004"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_116

    const-string/jumbo v1, "52000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_116

    const-string/jumbo v1, "52015"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11a

    .line 161
    :cond_116
    sget-object v0, Lcom/bzbs/data/AppSetting;->g:Ljava/lang/String;

    goto/16 :goto_7a

    .line 165
    :cond_11a
    sget-object v0, Lcom/bzbs/data/AppSetting;->g:Ljava/lang/String;

    goto/16 :goto_7a
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 173
    invoke-static {p0}, Lcom/bzbs/util/PhoneManagerUtil;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 175
    if-eqz v0, :cond_106

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_106

    .line 176
    const-string/jumbo v1, "45608"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    const-string/jumbo v1, "45601"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    const-string/jumbo v1, "45602"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    const-string/jumbo v1, "45605"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    const-string/jumbo v1, "45606"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    const-string/jumbo v1, "45609"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    const-string/jumbo v1, "45604"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    const-string/jumbo v1, "45611"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    const-string/jumbo v1, "45204"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    const-string/jumbo v1, "45603"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 177
    :cond_69
    sget-object v0, Lcom/bzbs/data/AppSetting;->i:Ljava/lang/String;

    .line 187
    :goto_6b
    return-object v0

    .line 178
    :cond_6c
    const-string/jumbo v1, "45701"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_90

    const-string/jumbo v1, "45708"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_90

    const-string/jumbo v1, "45703"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_90

    const-string/jumbo v1, "45702"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_93

    .line 179
    :cond_90
    sget-object v0, Lcom/bzbs/data/AppSetting;->h:Ljava/lang/String;

    goto :goto_6b

    .line 180
    :cond_93
    const-string/jumbo v1, "41405"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ae

    const-string/jumbo v1, "41401"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ae

    const-string/jumbo v1, "41406"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b1

    .line 181
    :cond_ae
    sget-object v0, Lcom/bzbs/data/AppSetting;->j:Ljava/lang/String;

    goto :goto_6b

    .line 182
    :cond_b1
    const-string/jumbo v1, "52003"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_102

    const-string/jumbo v1, "52023"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_102

    const-string/jumbo v1, "52001"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_102

    const-string/jumbo v1, "52018"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_102

    const-string/jumbo v1, "52005"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_102

    const-string/jumbo v1, "52099"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_102

    const-string/jumbo v1, "52004"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_102

    const-string/jumbo v1, "52000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_102

    const-string/jumbo v1, "52015"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_106

    .line 183
    :cond_102
    sget-object v0, Lcom/bzbs/data/AppSetting;->g:Ljava/lang/String;

    goto/16 :goto_6b

    .line 187
    :cond_106
    sget-object v0, Lcom/bzbs/data/AppSetting;->g:Ljava/lang/String;

    goto/16 :goto_6b
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 203
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bzbs/data/AppSetting;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 204
    sget-object v0, Lcom/bzbs/data/AppSetting;->w:Ljava/lang/String;

    .line 210
    :goto_e
    return-object v0

    .line 205
    :cond_f
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bzbs/data/AppSetting;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 206
    sget-object v0, Lcom/bzbs/data/AppSetting;->x:Ljava/lang/String;

    goto :goto_e

    .line 207
    :cond_1e
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bzbs/data/AppSetting;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 208
    sget-object v0, Lcom/bzbs/data/AppSetting;->y:Ljava/lang/String;

    goto :goto_e

    .line 210
    :cond_2d
    sget-object v0, Lcom/bzbs/data/AppSetting;->v:Ljava/lang/String;

    goto :goto_e
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 215
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bzbs/data/AppSetting;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 216
    sget-object v0, Lcom/bzbs/data/AppSetting;->A:Ljava/lang/String;

    .line 222
    :goto_e
    return-object v0

    .line 217
    :cond_f
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bzbs/data/AppSetting;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 218
    sget-object v0, Lcom/bzbs/data/AppSetting;->B:Ljava/lang/String;

    goto :goto_e

    .line 219
    :cond_1e
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bzbs/data/AppSetting;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 220
    sget-object v0, Lcom/bzbs/data/AppSetting;->C:Ljava/lang/String;

    goto :goto_e

    .line 222
    :cond_2d
    sget-object v0, Lcom/bzbs/data/AppSetting;->z:Ljava/lang/String;

    goto :goto_e
.end method

.method public static h(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 227
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bzbs/data/AppSetting;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 228
    sget-object v0, Lcom/bzbs/data/AppSetting;->S:Ljava/lang/String;

    .line 234
    :goto_e
    return-object v0

    .line 229
    :cond_f
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bzbs/data/AppSetting;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 230
    sget-object v0, Lcom/bzbs/data/AppSetting;->T:Ljava/lang/String;

    goto :goto_e

    .line 231
    :cond_1e
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bzbs/data/AppSetting;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 232
    sget-object v0, Lcom/bzbs/data/AppSetting;->U:Ljava/lang/String;

    goto :goto_e

    .line 234
    :cond_2d
    sget-object v0, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    goto :goto_e
.end method

.method public static i(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 239
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bzbs/data/AppSetting;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 240
    sget-object v0, Lcom/bzbs/data/AppSetting;->s:Ljava/lang/String;

    .line 246
    :goto_e
    return-object v0

    .line 241
    :cond_f
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bzbs/data/AppSetting;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 242
    sget-object v0, Lcom/bzbs/data/AppSetting;->t:Ljava/lang/String;

    goto :goto_e

    .line 243
    :cond_1e
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bzbs/data/AppSetting;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 244
    sget-object v0, Lcom/bzbs/data/AppSetting;->u:Ljava/lang/String;

    goto :goto_e

    .line 246
    :cond_2d
    sget-object v0, Lcom/bzbs/data/AppSetting;->r:Ljava/lang/String;

    goto :goto_e
.end method

.method public static j(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 264
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bzbs/data/AppSetting;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 265
    sget-object v0, Lcom/bzbs/data/AppSetting;->E:Ljava/lang/String;

    .line 271
    :goto_e
    return-object v0

    .line 266
    :cond_f
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bzbs/data/AppSetting;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 267
    sget-object v0, Lcom/bzbs/data/AppSetting;->F:Ljava/lang/String;

    goto :goto_e

    .line 268
    :cond_1e
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bzbs/data/AppSetting;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 269
    sget-object v0, Lcom/bzbs/data/AppSetting;->G:Ljava/lang/String;

    goto :goto_e

    .line 271
    :cond_2d
    sget-object v0, Lcom/bzbs/data/AppSetting;->D:Ljava/lang/String;

    goto :goto_e
.end method

.method public static k(Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 301
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bzbs/data/AppSetting;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 302
    const/4 v0, 0x1

    .line 304
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static l(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 561
    sget-object v0, Lcom/bzbs/data/AppSetting;->W:Ljava/lang/String;

    sput-object v0, Lcom/bzbs/lib/survey/LibConst;->j:Ljava/lang/String;

    .line 562
    sget-object v0, Lcom/bzbs/data/AppSetting;->X:Ljava/lang/String;

    sput-object v0, Lcom/bzbs/lib/survey/LibConst;->k:Ljava/lang/String;

    .line 563
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bzbs/lib/survey/LibUserLogin;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 564
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bzbs/lib/survey/LibUserLogin;->c(Landroid/content/Context;Ljava/lang/String;)Z

    .line 565
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bzbs/lib/survey/LibUserLogin;->b(Landroid/content/Context;Ljava/lang/String;)Z

    .line 566
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bzbs/lib/survey/LibUserLogin;->d(Landroid/content/Context;Ljava/lang/String;)Z

    .line 567
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->D(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/bzbs/lib/survey/LibUserLogin;->a(Landroid/content/Context;J)Z

    .line 568
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bzbs/lib/survey/LibUserLogin;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 570
    invoke-static {p0, v2}, Lcom/bzbs/lib/survey/LibUserLogin;->a(Landroid/content/Context;Z)Z

    .line 571
    invoke-static {p0, v2}, Lcom/bzbs/lib/survey/LibUserLogin;->b(Landroid/content/Context;Z)Z

    .line 572
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->K(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/bzbs/lib/survey/LibUserLogin;->c(Landroid/content/Context;Z)Z

    .line 573
    return-void
.end method
