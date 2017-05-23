.class public Lcom/samsung/privilege/util/DialogMonthYear;
.super Ljava/lang/Object;
.source "DialogMonthYear.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:I

.field private static c:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, -0x1

    .line 20
    const-class v0, Lcom/samsung/privilege/util/DialogMonthYear;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/util/DialogMonthYear;->a:Ljava/lang/String;

    .line 22
    sput v1, Lcom/samsung/privilege/util/DialogMonthYear;->b:I

    .line 23
    sput v1, Lcom/samsung/privilege/util/DialogMonthYear;->c:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()I
    .registers 1

    .prologue
    .line 18
    sget v0, Lcom/samsung/privilege/util/DialogMonthYear;->b:I

    return v0
.end method

.method static synthetic a(I)I
    .registers 1

    .prologue
    .line 18
    sput p0, Lcom/samsung/privilege/util/DialogMonthYear;->b:I

    return p0
.end method

.method static synthetic a(Landroid/app/Dialog;Landroid/view/View;)V
    .registers 2

    .prologue
    .line 18
    invoke-static {p0, p1}, Lcom/samsung/privilege/util/DialogMonthYear;->c(Landroid/app/Dialog;Landroid/view/View;)V

    return-void
.end method

.method private static a(Landroid/app/Dialog;Landroid/widget/TextView;)V
    .registers 8

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 93
    :try_start_4
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "dd/MM/yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 94
    const-string/jumbo v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 95
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v1

    if-nez v1, :cond_ed

    .line 98
    const v0, 0x7f1003c5

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020243

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 99
    const/4 v0, 0x1

    sput v0, Lcom/samsung/privilege/util/DialogMonthYear;->b:I
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_38} :catch_105

    .line 138
    :cond_38
    :goto_38
    const v0, 0x7f1003c5

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/util/DialogMonthYear$4;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/util/DialogMonthYear$4;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    const v0, 0x7f1003cb

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/util/DialogMonthYear$5;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/util/DialogMonthYear$5;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    const v0, 0x7f1003c6

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/util/DialogMonthYear$6;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/util/DialogMonthYear$6;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    const v0, 0x7f1003cc

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/util/DialogMonthYear$7;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/util/DialogMonthYear$7;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    const v0, 0x7f1003c7

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/util/DialogMonthYear$8;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/util/DialogMonthYear$8;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    const v0, 0x7f1003cd

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/util/DialogMonthYear$9;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/util/DialogMonthYear$9;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    const v0, 0x7f1003c8

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/util/DialogMonthYear$10;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/util/DialogMonthYear$10;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    const v0, 0x7f1003ce

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/util/DialogMonthYear$11;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/util/DialogMonthYear$11;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    const v0, 0x7f1003c9

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/util/DialogMonthYear$12;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/util/DialogMonthYear$12;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    const v0, 0x7f1003cf

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/util/DialogMonthYear$13;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/util/DialogMonthYear$13;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    const v0, 0x7f1003ca

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/util/DialogMonthYear$14;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/util/DialogMonthYear$14;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    const v0, 0x7f1003d0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/util/DialogMonthYear$15;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/util/DialogMonthYear$15;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    return-void

    .line 100
    :cond_ed
    :try_start_ed
    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v1

    if-ne v1, v2, :cond_108

    .line 101
    const v0, 0x7f1003cb

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020243

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 102
    const/4 v0, 0x2

    sput v0, Lcom/samsung/privilege/util/DialogMonthYear;->b:I

    goto/16 :goto_38

    .line 134
    :catch_105
    move-exception v0

    goto/16 :goto_38

    .line 103
    :cond_108
    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v1

    if-ne v1, v3, :cond_120

    .line 104
    const v0, 0x7f1003c6

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020243

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 105
    const/4 v0, 0x3

    sput v0, Lcom/samsung/privilege/util/DialogMonthYear;->b:I

    goto/16 :goto_38

    .line 106
    :cond_120
    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v1

    if-ne v1, v4, :cond_138

    .line 107
    const v0, 0x7f1003cc

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020243

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 108
    const/4 v0, 0x4

    sput v0, Lcom/samsung/privilege/util/DialogMonthYear;->b:I

    goto/16 :goto_38

    .line 109
    :cond_138
    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v1

    if-ne v1, v5, :cond_150

    .line 110
    const v0, 0x7f1003c7

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020243

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 111
    const/4 v0, 0x5

    sput v0, Lcom/samsung/privilege/util/DialogMonthYear;->b:I

    goto/16 :goto_38

    .line 112
    :cond_150
    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_169

    .line 113
    const v0, 0x7f1003cd

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020243

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 114
    const/4 v0, 0x6

    sput v0, Lcom/samsung/privilege/util/DialogMonthYear;->b:I

    goto/16 :goto_38

    .line 115
    :cond_169
    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_182

    .line 116
    const v0, 0x7f1003c8

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020243

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 117
    const/4 v0, 0x7

    sput v0, Lcom/samsung/privilege/util/DialogMonthYear;->b:I

    goto/16 :goto_38

    .line 118
    :cond_182
    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_19c

    .line 119
    const v0, 0x7f1003ce

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020243

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 120
    const/16 v0, 0x8

    sput v0, Lcom/samsung/privilege/util/DialogMonthYear;->b:I

    goto/16 :goto_38

    .line 121
    :cond_19c
    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1b7

    .line 122
    const v0, 0x7f1003c9

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020243

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 123
    const/16 v0, 0x9

    sput v0, Lcom/samsung/privilege/util/DialogMonthYear;->b:I

    goto/16 :goto_38

    .line 124
    :cond_1b7
    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1d2

    .line 125
    const v0, 0x7f1003cf

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020243

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 126
    const/16 v0, 0xa

    sput v0, Lcom/samsung/privilege/util/DialogMonthYear;->b:I

    goto/16 :goto_38

    .line 127
    :cond_1d2
    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1ed

    .line 128
    const v0, 0x7f1003ca

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020243

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 129
    const/16 v0, 0xb

    sput v0, Lcom/samsung/privilege/util/DialogMonthYear;->b:I

    goto/16 :goto_38

    .line 130
    :cond_1ed
    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_38

    .line 131
    const v0, 0x7f1003d0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020243

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 132
    const/16 v0, 0xc

    sput v0, Lcom/samsung/privilege/util/DialogMonthYear;->b:I
    :try_end_206
    .catch Ljava/lang/Exception; {:try_start_ed .. :try_end_206} :catch_105

    goto/16 :goto_38
.end method

.method public static a(Landroid/content/Context;Landroid/widget/TextView;)V
    .registers 5

    .prologue
    .line 26
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_60

    .line 27
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x1030010

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 29
    const v1, 0x7f0400ad

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 31
    invoke-static {v0, p1}, Lcom/samsung/privilege/util/DialogMonthYear;->a(Landroid/app/Dialog;Landroid/widget/TextView;)V

    .line 32
    invoke-static {v0, p1}, Lcom/samsung/privilege/util/DialogMonthYear;->b(Landroid/app/Dialog;Landroid/widget/TextView;)V

    .line 34
    const v1, 0x7f1003c4

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/samsung/privilege/util/DialogMonthYear$1;

    invoke-direct {v2, v0}, Lcom/samsung/privilege/util/DialogMonthYear$1;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    const v1, 0x7f100387

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/samsung/privilege/util/DialogMonthYear$2;

    invoke-direct {v2, p1, v0}, Lcom/samsung/privilege/util/DialogMonthYear$2;-><init>(Landroid/widget/TextView;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    const v1, 0x7f1003e9

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/samsung/privilege/util/DialogMonthYear$3;

    invoke-direct {v2, v0}, Lcom/samsung/privilege/util/DialogMonthYear$3;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 84
    const/16 v2, 0x11

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 85
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 87
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 89
    :cond_60
    return-void
.end method

.method static synthetic b()I
    .registers 1

    .prologue
    .line 18
    sget v0, Lcom/samsung/privilege/util/DialogMonthYear;->c:I

    return v0
.end method

.method static synthetic b(I)I
    .registers 1

    .prologue
    .line 18
    sput p0, Lcom/samsung/privilege/util/DialogMonthYear;->c:I

    return p0
.end method

.method static synthetic b(Landroid/app/Dialog;Landroid/view/View;)V
    .registers 2

    .prologue
    .line 18
    invoke-static {p0, p1}, Lcom/samsung/privilege/util/DialogMonthYear;->d(Landroid/app/Dialog;Landroid/view/View;)V

    return-void
.end method

.method private static b(Landroid/app/Dialog;Landroid/widget/TextView;)V
    .registers 10

    .prologue
    const v7, 0x7f1003d7

    const v6, 0x7f1003d5

    const v5, 0x7f1003d3

    const v4, 0x7f1003d1

    .line 230
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 231
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 234
    :try_start_15
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "dd/MM/yyyy"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 235
    const-string/jumbo v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 236
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 237
    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v0

    add-int/lit16 v0, v0, 0x76c

    .line 239
    if-ne v0, v1, :cond_289

    .line 240
    const v0, 0x7f1003e7

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f020243

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 241
    sput v1, Lcom/samsung/privilege/util/DialogMonthYear;->c:I
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_4a} :catch_2a0

    .line 280
    :cond_4a
    :goto_4a
    const v0, 0x7f1003e8

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    const v0, 0x7f1003e6

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    const v0, 0x7f1003e4

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, -0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    const v0, 0x7f1003e2

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, -0x3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    const v0, 0x7f1003e0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, -0x4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    const v0, 0x7f1003de

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, -0x5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    const v0, 0x7f1003dc

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, -0x6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    const v0, 0x7f1003da

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, -0x7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    const v0, 0x7f1003d8

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, -0x8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    const v0, 0x7f1003d6

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, -0x9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    const v0, 0x7f1003d4

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, -0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    const v0, 0x7f1003d2

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v1, v1, -0xb

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    const v0, 0x7f1003e7

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/util/DialogMonthYear$16;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/util/DialogMonthYear$16;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    const v0, 0x7f1003e5

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/util/DialogMonthYear$17;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/util/DialogMonthYear$17;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    const v0, 0x7f1003e3

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/util/DialogMonthYear$18;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/util/DialogMonthYear$18;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    const v0, 0x7f1003e1

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/util/DialogMonthYear$19;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/util/DialogMonthYear$19;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    const v0, 0x7f1003df

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/util/DialogMonthYear$20;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/util/DialogMonthYear$20;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    const v0, 0x7f1003dd

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/util/DialogMonthYear$21;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/util/DialogMonthYear$21;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    const v0, 0x7f1003db

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/util/DialogMonthYear$22;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/util/DialogMonthYear$22;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    const v0, 0x7f1003d9

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/util/DialogMonthYear$23;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/util/DialogMonthYear$23;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    invoke-virtual {p0, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/util/DialogMonthYear$24;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/util/DialogMonthYear$24;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    invoke-virtual {p0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/util/DialogMonthYear$25;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/util/DialogMonthYear$25;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    invoke-virtual {p0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/util/DialogMonthYear$26;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/util/DialogMonthYear$26;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    invoke-virtual {p0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/util/DialogMonthYear$27;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/util/DialogMonthYear$27;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    return-void

    .line 242
    :cond_289
    add-int/lit8 v2, v1, -0x1

    if-ne v0, v2, :cond_2a3

    .line 243
    const v0, 0x7f1003e5

    :try_start_290
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f020243

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 244
    add-int/lit8 v0, v1, -0x1

    sput v0, Lcom/samsung/privilege/util/DialogMonthYear;->c:I

    goto/16 :goto_4a

    .line 276
    :catch_2a0
    move-exception v0

    goto/16 :goto_4a

    .line 245
    :cond_2a3
    add-int/lit8 v2, v1, -0x2

    if-ne v0, v2, :cond_2ba

    .line 246
    const v0, 0x7f1003e3

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f020243

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 247
    add-int/lit8 v0, v1, -0x2

    sput v0, Lcom/samsung/privilege/util/DialogMonthYear;->c:I

    goto/16 :goto_4a

    .line 248
    :cond_2ba
    add-int/lit8 v2, v1, -0x3

    if-ne v0, v2, :cond_2d1

    .line 249
    const v0, 0x7f1003e1

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f020243

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 250
    add-int/lit8 v0, v1, -0x3

    sput v0, Lcom/samsung/privilege/util/DialogMonthYear;->c:I

    goto/16 :goto_4a

    .line 251
    :cond_2d1
    add-int/lit8 v2, v1, -0x4

    if-ne v0, v2, :cond_2e8

    .line 252
    const v0, 0x7f1003df

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f020243

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 253
    add-int/lit8 v0, v1, -0x4

    sput v0, Lcom/samsung/privilege/util/DialogMonthYear;->c:I

    goto/16 :goto_4a

    .line 254
    :cond_2e8
    add-int/lit8 v2, v1, -0x5

    if-ne v0, v2, :cond_2ff

    .line 255
    const v0, 0x7f1003dd

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f020243

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 256
    add-int/lit8 v0, v1, -0x5

    sput v0, Lcom/samsung/privilege/util/DialogMonthYear;->c:I

    goto/16 :goto_4a

    .line 257
    :cond_2ff
    add-int/lit8 v2, v1, -0x6

    if-ne v0, v2, :cond_316

    .line 258
    const v0, 0x7f1003db

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f020243

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 259
    add-int/lit8 v0, v1, -0x6

    sput v0, Lcom/samsung/privilege/util/DialogMonthYear;->c:I

    goto/16 :goto_4a

    .line 260
    :cond_316
    add-int/lit8 v2, v1, -0x7

    if-ne v0, v2, :cond_32d

    .line 261
    const v0, 0x7f1003d9

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f020243

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 262
    add-int/lit8 v0, v1, -0x7

    sput v0, Lcom/samsung/privilege/util/DialogMonthYear;->c:I

    goto/16 :goto_4a

    .line 263
    :cond_32d
    add-int/lit8 v2, v1, -0x8

    if-ne v0, v2, :cond_344

    .line 264
    const v0, 0x7f1003d7

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f020243

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 265
    add-int/lit8 v0, v1, -0x8

    sput v0, Lcom/samsung/privilege/util/DialogMonthYear;->c:I

    goto/16 :goto_4a

    .line 266
    :cond_344
    add-int/lit8 v2, v1, -0x9

    if-ne v0, v2, :cond_35b

    .line 267
    const v0, 0x7f1003d5

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f020243

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 268
    add-int/lit8 v0, v1, -0x9

    sput v0, Lcom/samsung/privilege/util/DialogMonthYear;->c:I

    goto/16 :goto_4a

    .line 269
    :cond_35b
    add-int/lit8 v2, v1, -0xa

    if-ne v0, v2, :cond_372

    .line 270
    const v0, 0x7f1003d3

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f020243

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 271
    add-int/lit8 v0, v1, -0xa

    sput v0, Lcom/samsung/privilege/util/DialogMonthYear;->c:I

    goto/16 :goto_4a

    .line 272
    :cond_372
    add-int/lit8 v2, v1, -0xb

    if-ne v0, v2, :cond_4a

    .line 273
    const v0, 0x7f1003d1

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f020243

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 274
    add-int/lit8 v0, v1, -0xb

    sput v0, Lcom/samsung/privilege/util/DialogMonthYear;->c:I
    :try_end_387
    .catch Ljava/lang/Exception; {:try_start_290 .. :try_end_387} :catch_2a0

    goto/16 :goto_4a
.end method

.method private static c(Landroid/app/Dialog;Landroid/view/View;)V
    .registers 4

    .prologue
    const v1, 0x7f020244

    .line 213
    const v0, 0x7f1003c5

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 214
    const v0, 0x7f1003cb

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 215
    const v0, 0x7f1003c6

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 216
    const v0, 0x7f1003cc

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 217
    const v0, 0x7f1003c7

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 218
    const v0, 0x7f1003cd

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 219
    const v0, 0x7f1003c8

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 220
    const v0, 0x7f1003ce

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 221
    const v0, 0x7f1003c9

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 222
    const v0, 0x7f1003cf

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 223
    const v0, 0x7f1003ca

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 224
    const v0, 0x7f1003d0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 226
    const v0, 0x7f020243

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 227
    return-void
.end method

.method private static d(Landroid/app/Dialog;Landroid/view/View;)V
    .registers 4

    .prologue
    const v1, 0x7f020244

    .line 368
    const v0, 0x7f1003e7

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 369
    const v0, 0x7f1003e5

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 370
    const v0, 0x7f1003e3

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 371
    const v0, 0x7f1003e1

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 372
    const v0, 0x7f1003df

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 373
    const v0, 0x7f1003dd

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 374
    const v0, 0x7f1003db

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 375
    const v0, 0x7f1003d9

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 376
    const v0, 0x7f1003d7

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 377
    const v0, 0x7f1003d5

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 378
    const v0, 0x7f1003d3

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 379
    const v0, 0x7f1003d1

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 381
    const v0, 0x7f020243

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 382
    return-void
.end method
