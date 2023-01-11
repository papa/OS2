
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00009117          	auipc	sp,0x9
    80000004:	92013103          	ld	sp,-1760(sp) # 80008920 <_GLOBAL_OFFSET_TABLE_+0x58>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	50c050ef          	jal	ra,80005528 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv14supervisorTrapEv>:
.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:

    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    csrw sscratch, sp
    80001004:	14011073          	csrw	sscratch,sp
    sd x0, 0(sp)
    80001008:	00013023          	sd	zero,0(sp)
    sd x1, 8(sp)
    8000100c:	00113423          	sd	ra,8(sp)
    sd x2, 16(sp)
    80001010:	00213823          	sd	sp,16(sp)
    sd x3, 24(sp)
    80001014:	00313c23          	sd	gp,24(sp)
    sd x4, 32(sp)
    80001018:	02413023          	sd	tp,32(sp)
    sd x5, 40(sp)
    8000101c:	02513423          	sd	t0,40(sp)
    sd x6, 48(sp)
    80001020:	02613823          	sd	t1,48(sp)
    sd x7, 56(sp)
    80001024:	02713c23          	sd	t2,56(sp)
    sd x8, 64(sp)
    80001028:	04813023          	sd	s0,64(sp)
    sd x9, 72(sp)
    8000102c:	04913423          	sd	s1,72(sp)
    sd x10, 80(sp)
    80001030:	04a13823          	sd	a0,80(sp)
    sd x11, 88(sp)
    80001034:	04b13c23          	sd	a1,88(sp)
    sd x12, 96(sp)
    80001038:	06c13023          	sd	a2,96(sp)
    sd x13, 104(sp)
    8000103c:	06d13423          	sd	a3,104(sp)
    sd x14, 112(sp)
    80001040:	06e13823          	sd	a4,112(sp)
    sd x15, 120(sp)
    80001044:	06f13c23          	sd	a5,120(sp)
    sd x16, 128(sp)
    80001048:	09013023          	sd	a6,128(sp)
    sd x17, 136(sp)
    8000104c:	09113423          	sd	a7,136(sp)
    sd x18, 144(sp)
    80001050:	09213823          	sd	s2,144(sp)
    sd x19, 152(sp)
    80001054:	09313c23          	sd	s3,152(sp)
    sd x20, 160(sp)
    80001058:	0b413023          	sd	s4,160(sp)
    sd x21, 168(sp)
    8000105c:	0b513423          	sd	s5,168(sp)
    sd x22, 176(sp)
    80001060:	0b613823          	sd	s6,176(sp)
    sd x23, 184(sp)
    80001064:	0b713c23          	sd	s7,184(sp)
    sd x24, 192(sp)
    80001068:	0d813023          	sd	s8,192(sp)
    sd x25, 200(sp)
    8000106c:	0d913423          	sd	s9,200(sp)
    sd x26, 208(sp)
    80001070:	0da13823          	sd	s10,208(sp)
    sd x27, 216(sp)
    80001074:	0db13c23          	sd	s11,216(sp)
    sd x28, 224(sp)
    80001078:	0fc13023          	sd	t3,224(sp)
    sd x29, 232(sp)
    8000107c:	0fd13423          	sd	t4,232(sp)
    sd x30, 240(sp)
    80001080:	0fe13823          	sd	t5,240(sp)
    sd x31, 248(sp)
    80001084:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv20handleSupervisorTrapEv
    80001088:	2c0030ef          	jal	ra,80004348 <_ZN5Riscv20handleSupervisorTrapEv>

    ld x0, 0(sp)
    8000108c:	00013003          	ld	zero,0(sp)
    ld x1, 8(sp)
    80001090:	00813083          	ld	ra,8(sp)
    ld x2, 16(sp)
    80001094:	01013103          	ld	sp,16(sp)
    ld x3, 24(sp)
    80001098:	01813183          	ld	gp,24(sp)
    ld x4, 32(sp)
    8000109c:	02013203          	ld	tp,32(sp)
    ld x5, 40(sp)
    800010a0:	02813283          	ld	t0,40(sp)
    ld x6, 48(sp)
    800010a4:	03013303          	ld	t1,48(sp)
    ld x7, 56(sp)
    800010a8:	03813383          	ld	t2,56(sp)
    ld x8, 64(sp)
    800010ac:	04013403          	ld	s0,64(sp)
    ld x9, 72(sp)
    800010b0:	04813483          	ld	s1,72(sp)
    ld x10, 80(sp)
    800010b4:	05013503          	ld	a0,80(sp)
    ld x11, 88(sp)
    800010b8:	05813583          	ld	a1,88(sp)
    ld x12, 96(sp)
    800010bc:	06013603          	ld	a2,96(sp)
    ld x13, 104(sp)
    800010c0:	06813683          	ld	a3,104(sp)
    ld x14, 112(sp)
    800010c4:	07013703          	ld	a4,112(sp)
    ld x15, 120(sp)
    800010c8:	07813783          	ld	a5,120(sp)
    ld x16, 128(sp)
    800010cc:	08013803          	ld	a6,128(sp)
    ld x17, 136(sp)
    800010d0:	08813883          	ld	a7,136(sp)
    ld x18, 144(sp)
    800010d4:	09013903          	ld	s2,144(sp)
    ld x19, 152(sp)
    800010d8:	09813983          	ld	s3,152(sp)
    ld x20, 160(sp)
    800010dc:	0a013a03          	ld	s4,160(sp)
    ld x21, 168(sp)
    800010e0:	0a813a83          	ld	s5,168(sp)
    ld x22, 176(sp)
    800010e4:	0b013b03          	ld	s6,176(sp)
    ld x23, 184(sp)
    800010e8:	0b813b83          	ld	s7,184(sp)
    ld x24, 192(sp)
    800010ec:	0c013c03          	ld	s8,192(sp)
    ld x25, 200(sp)
    800010f0:	0c813c83          	ld	s9,200(sp)
    ld x26, 208(sp)
    800010f4:	0d013d03          	ld	s10,208(sp)
    ld x27, 216(sp)
    800010f8:	0d813d83          	ld	s11,216(sp)
    ld x28, 224(sp)
    800010fc:	0e013e03          	ld	t3,224(sp)
    ld x29, 232(sp)
    80001100:	0e813e83          	ld	t4,232(sp)
    ld x30, 240(sp)
    80001104:	0f013f03          	ld	t5,240(sp)
    ld x31, 248(sp)
    80001108:	0f813f83          	ld	t6,248(sp)

    addi sp, sp, 256
    8000110c:	10010113          	addi	sp,sp,256

    80001110:	10200073          	sret
	...

0000000080001120 <_ZN5Riscv13pushRegistersEv>:
.global _ZN5Riscv13pushRegistersEv
.type _ZN5Riscv13pushRegistersEv, @function
_ZN5Riscv13pushRegistersEv:
    addi sp, sp, -256
    80001120:	f0010113          	addi	sp,sp,-256
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001124:	00313c23          	sd	gp,24(sp)
    80001128:	02413023          	sd	tp,32(sp)
    8000112c:	02513423          	sd	t0,40(sp)
    80001130:	02613823          	sd	t1,48(sp)
    80001134:	02713c23          	sd	t2,56(sp)
    80001138:	04813023          	sd	s0,64(sp)
    8000113c:	04913423          	sd	s1,72(sp)
    80001140:	04a13823          	sd	a0,80(sp)
    80001144:	04b13c23          	sd	a1,88(sp)
    80001148:	06c13023          	sd	a2,96(sp)
    8000114c:	06d13423          	sd	a3,104(sp)
    80001150:	06e13823          	sd	a4,112(sp)
    80001154:	06f13c23          	sd	a5,120(sp)
    80001158:	09013023          	sd	a6,128(sp)
    8000115c:	09113423          	sd	a7,136(sp)
    80001160:	09213823          	sd	s2,144(sp)
    80001164:	09313c23          	sd	s3,152(sp)
    80001168:	0b413023          	sd	s4,160(sp)
    8000116c:	0b513423          	sd	s5,168(sp)
    80001170:	0b613823          	sd	s6,176(sp)
    80001174:	0b713c23          	sd	s7,184(sp)
    80001178:	0d813023          	sd	s8,192(sp)
    8000117c:	0d913423          	sd	s9,200(sp)
    80001180:	0da13823          	sd	s10,208(sp)
    80001184:	0db13c23          	sd	s11,216(sp)
    80001188:	0fc13023          	sd	t3,224(sp)
    8000118c:	0fd13423          	sd	t4,232(sp)
    80001190:	0fe13823          	sd	t5,240(sp)
    80001194:	0ff13c23          	sd	t6,248(sp)
    ret
    80001198:	00008067          	ret

000000008000119c <_ZN5Riscv12popRegistersEv>:
.global _ZN5Riscv12popRegistersEv
.type _ZN5Riscv12popRegistersEv, @function
_ZN5Riscv12popRegistersEv:
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    8000119c:	01813183          	ld	gp,24(sp)
    800011a0:	02013203          	ld	tp,32(sp)
    800011a4:	02813283          	ld	t0,40(sp)
    800011a8:	03013303          	ld	t1,48(sp)
    800011ac:	03813383          	ld	t2,56(sp)
    800011b0:	04013403          	ld	s0,64(sp)
    800011b4:	04813483          	ld	s1,72(sp)
    800011b8:	05013503          	ld	a0,80(sp)
    800011bc:	05813583          	ld	a1,88(sp)
    800011c0:	06013603          	ld	a2,96(sp)
    800011c4:	06813683          	ld	a3,104(sp)
    800011c8:	07013703          	ld	a4,112(sp)
    800011cc:	07813783          	ld	a5,120(sp)
    800011d0:	08013803          	ld	a6,128(sp)
    800011d4:	08813883          	ld	a7,136(sp)
    800011d8:	09013903          	ld	s2,144(sp)
    800011dc:	09813983          	ld	s3,152(sp)
    800011e0:	0a013a03          	ld	s4,160(sp)
    800011e4:	0a813a83          	ld	s5,168(sp)
    800011e8:	0b013b03          	ld	s6,176(sp)
    800011ec:	0b813b83          	ld	s7,184(sp)
    800011f0:	0c013c03          	ld	s8,192(sp)
    800011f4:	0c813c83          	ld	s9,200(sp)
    800011f8:	0d013d03          	ld	s10,208(sp)
    800011fc:	0d813d83          	ld	s11,216(sp)
    80001200:	0e013e03          	ld	t3,224(sp)
    80001204:	0e813e83          	ld	t4,232(sp)
    80001208:	0f013f03          	ld	t5,240(sp)
    8000120c:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001210:	10010113          	addi	sp,sp,256
    ret
    80001214:	00008067          	ret

0000000080001218 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3PCB13contextSwitchEPNS_7ContextES1_
.type _ZN3PCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3PCB13contextSwitchEPNS_7ContextES1_:
    #a0 - &old->Context
    #a1 - &running->Context
    sd sp, 0 * 8(a0)
    80001218:	00253023          	sd	sp,0(a0) # 1000 <_entry-0x7ffff000>
    sd ra, 1 * 8(a0)
    8000121c:	00153423          	sd	ra,8(a0)

    ld sp, 0 * 8(a1)
    80001220:	0005b103          	ld	sp,0(a1)
    ld ra, 1 * 8(a1)
    80001224:	0085b083          	ld	ra,8(a1)

    ret
    80001228:	00008067          	ret

000000008000122c <_ZN3PCB20contextSwitchExitingEPNS_7ContextE>:

.global _ZN3PCB20contextSwitchExitingEPNS_7ContextE
.type _ZN3PCB20contextSwitchExitingEPNS_7ContextE, @function
_ZN3PCB20contextSwitchExitingEPNS_7ContextE:
    #a0 - &running->Context
    ld sp, 0 * 8(a0)
    8000122c:	00053103          	ld	sp,0(a0)
    ld ra, 1 * 8(a0)
    80001230:	00853083          	ld	ra,8(a0)

    80001234:	00008067          	ret

0000000080001238 <_Z22thread_dispatch_kernelv>:
//
#include "../../h/syscall_c_kernel.hpp"


void thread_dispatch_kernel()
{
    80001238:	ff010113          	addi	sp,sp,-16
    8000123c:	00813423          	sd	s0,8(sp)
    80001240:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    80001244:	01300513          	li	a0,19
    __asm__ volatile("ecall");
    80001248:	00000073          	ecall
}
    8000124c:	00813403          	ld	s0,8(sp)
    80001250:	01010113          	addi	sp,sp,16
    80001254:	00008067          	ret

0000000080001258 <_Z20sysCallGetCharOutputv>:

char sysCallGetCharOutput()
{
    80001258:	ff010113          	addi	sp,sp,-16
    8000125c:	00813423          	sd	s0,8(sp)
    80001260:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x43");
    80001264:	04300513          	li	a0,67

    __asm__ volatile("ecall");
    80001268:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000126c:	00050513          	mv	a0,a0
    return (char)result;
}
    80001270:	0ff57513          	andi	a0,a0,255
    80001274:	00813403          	ld	s0,8(sp)
    80001278:	01010113          	addi	sp,sp,16
    8000127c:	00008067          	ret

0000000080001280 <_Z18thread_exit_kernelv>:


int thread_exit_kernel()
{
    80001280:	ff010113          	addi	sp,sp,-16
    80001284:	00813423          	sd	s0,8(sp)
    80001288:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x12");
    8000128c:	01200513          	li	a0,18

    __asm__ volatile("ecall");
    80001290:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001294:	00050513          	mv	a0,a0
    return result;
    80001298:	0005051b          	sext.w	a0,a0
    8000129c:	00813403          	ld	s0,8(sp)
    800012a0:	01010113          	addi	sp,sp,16
    800012a4:	00008067          	ret

00000000800012a8 <_Z6strcpyPKcPc>:
//singleton slab allocator
static slab_allocator_t* slabAllocator = nullptr;

//helping functions
void strcpy(const char* src, char* dst)
{
    800012a8:	ff010113          	addi	sp,sp,-16
    800012ac:	00813423          	sd	s0,8(sp)
    800012b0:	01010413          	addi	s0,sp,16
    while(*src != '\0')
    800012b4:	00054783          	lbu	a5,0(a0)
    800012b8:	00078a63          	beqz	a5,800012cc <_Z6strcpyPKcPc+0x24>
    {
        *dst = *src;
    800012bc:	00f58023          	sb	a5,0(a1)
        src++; dst++;
    800012c0:	00150513          	addi	a0,a0,1
    800012c4:	00158593          	addi	a1,a1,1
    while(*src != '\0')
    800012c8:	fedff06f          	j	800012b4 <_Z6strcpyPKcPc+0xc>
    }
    *dst = *src;
    800012cc:	00f58023          	sb	a5,0(a1)
}
    800012d0:	00813403          	ld	s0,8(sp)
    800012d4:	01010113          	addi	sp,sp,16
    800012d8:	00008067          	ret

00000000800012dc <_Z17destroy_slab_listPP6slab_s>:

int destroy_slab_list(slab_t** slab)
{
    800012dc:	fd010113          	addi	sp,sp,-48
    800012e0:	02113423          	sd	ra,40(sp)
    800012e4:	02813023          	sd	s0,32(sp)
    800012e8:	00913c23          	sd	s1,24(sp)
    800012ec:	01213823          	sd	s2,16(sp)
    800012f0:	01313423          	sd	s3,8(sp)
    800012f4:	01413023          	sd	s4,0(sp)
    800012f8:	03010413          	addi	s0,sp,48
    if(*slab == nullptr) return 0;
    800012fc:	00053783          	ld	a5,0(a0)
    80001300:	02078c63          	beqz	a5,80001338 <_Z17destroy_slab_listPP6slab_s+0x5c>
    80001304:	00050493          	mv	s1,a0
    size_t sz = (*slab)->owner->slab_size;
    80001308:	0107b783          	ld	a5,16(a5)
    8000130c:	0587b983          	ld	s3,88(a5)
    int totalBlocks = 0;
    80001310:	00000913          	li	s2,0
    while(*slab != nullptr)
    80001314:	0004b503          	ld	a0,0(s1)
    80001318:	02050263          	beqz	a0,8000133c <_Z17destroy_slab_listPP6slab_s+0x60>
    {
        slab_t* nextSlab = (*slab)->next;
    8000131c:	00853a03          	ld	s4,8(a0)
        buddy_free(*slab, sz);
    80001320:	00098593          	mv	a1,s3
    80001324:	00002097          	auipc	ra,0x2
    80001328:	c10080e7          	jalr	-1008(ra) # 80002f34 <_Z10buddy_freePvm>
        *slab = nextSlab;
    8000132c:	0144b023          	sd	s4,0(s1)
        totalBlocks+=sz;
    80001330:	0129893b          	addw	s2,s3,s2
    while(*slab != nullptr)
    80001334:	fe1ff06f          	j	80001314 <_Z17destroy_slab_listPP6slab_s+0x38>
    if(*slab == nullptr) return 0;
    80001338:	00000913          	li	s2,0
    }
    return totalBlocks;
}
    8000133c:	00090513          	mv	a0,s2
    80001340:	02813083          	ld	ra,40(sp)
    80001344:	02013403          	ld	s0,32(sp)
    80001348:	01813483          	ld	s1,24(sp)
    8000134c:	01013903          	ld	s2,16(sp)
    80001350:	00813983          	ld	s3,8(sp)
    80001354:	00013a03          	ld	s4,0(sp)
    80001358:	03010113          	addi	sp,sp,48
    8000135c:	00008067          	ret

0000000080001360 <_Z10init_cacheP12kmem_cache_sPKcmmPFvPvES5_>:

void init_cache(kmem_cache_t* cachep, const char* cache_name, size_t slab_size, size_t obj_size, void (*ctor)(void*),void (*dtor)(void*))
{
    80001360:	fc010113          	addi	sp,sp,-64
    80001364:	02113c23          	sd	ra,56(sp)
    80001368:	02813823          	sd	s0,48(sp)
    8000136c:	02913423          	sd	s1,40(sp)
    80001370:	03213023          	sd	s2,32(sp)
    80001374:	01313c23          	sd	s3,24(sp)
    80001378:	01413823          	sd	s4,16(sp)
    8000137c:	01513423          	sd	s5,8(sp)
    80001380:	04010413          	addi	s0,sp,64
    80001384:	00050493          	mv	s1,a0
    80001388:	00058513          	mv	a0,a1
    8000138c:	00060a93          	mv	s5,a2
    80001390:	00068a13          	mv	s4,a3
    80001394:	00070993          	mv	s3,a4
    80001398:	00078913          	mv	s2,a5
    strcpy(cache_name, cachep->cacheName);
    8000139c:	00048593          	mv	a1,s1
    800013a0:	00000097          	auipc	ra,0x0
    800013a4:	f08080e7          	jalr	-248(ra) # 800012a8 <_Z6strcpyPKcPc>
    cachep->slab_size = slab_size;
    800013a8:	0554bc23          	sd	s5,88(s1)
    cachep->obj_size = obj_size;
    800013ac:	0744b023          	sd	s4,96(s1)
    cachep->ctor = ctor;
    800013b0:	0734b423          	sd	s3,104(s1)
    cachep->dtor = dtor;
    800013b4:	0724b823          	sd	s2,112(s1)

    cachep->slabs_empty = cachep->slabs_partial = cachep->slabs_full = nullptr;
    800013b8:	0404b423          	sd	zero,72(s1)
    800013bc:	0404b823          	sd	zero,80(s1)
    800013c0:	0404b023          	sd	zero,64(s1)
    cachep->errors = NO_ERROR;
    800013c4:	0604ac23          	sw	zero,120(s1)
}
    800013c8:	03813083          	ld	ra,56(sp)
    800013cc:	03013403          	ld	s0,48(sp)
    800013d0:	02813483          	ld	s1,40(sp)
    800013d4:	02013903          	ld	s2,32(sp)
    800013d8:	01813983          	ld	s3,24(sp)
    800013dc:	01013a03          	ld	s4,16(sp)
    800013e0:	00813a83          	ld	s5,8(sp)
    800013e4:	04010113          	addi	sp,sp,64
    800013e8:	00008067          	ret

00000000800013ec <_Z19slab_allocator_initP14buddyAllocator>:

slab_allocator_t* slab_allocator_init(buddyAllocator *buddy)
{
    800013ec:	fe010113          	addi	sp,sp,-32
    800013f0:	00113c23          	sd	ra,24(sp)
    800013f4:	00813823          	sd	s0,16(sp)
    800013f8:	00913423          	sd	s1,8(sp)
    800013fc:	02010413          	addi	s0,sp,32
    slab_allocator_t* slabAllocatorLocal = (slab_allocator_t*)(buddy + 1);
    80001400:	12050493          	addi	s1,a0,288

    for(size_t i = 0; i < CACHE_BUFFER_SIZE;i++)
    80001404:	00000793          	li	a5,0
    80001408:	0140006f          	j	8000141c <_Z19slab_allocator_initP14buddyAllocator+0x30>
        slabAllocatorLocal->cachesBuffers[i] = nullptr;
    8000140c:	00379713          	slli	a4,a5,0x3
    80001410:	00e50733          	add	a4,a0,a4
    80001414:	12073023          	sd	zero,288(a4)
    for(size_t i = 0; i < CACHE_BUFFER_SIZE;i++)
    80001418:	00178793          	addi	a5,a5,1
    8000141c:	00c00713          	li	a4,12
    80001420:	fef776e3          	bgeu	a4,a5,8000140c <_Z19slab_allocator_initP14buddyAllocator+0x20>

    init_cache(&slabAllocatorLocal->cacheOfCaches, "Cache of caches", CACHE_OF_CACHES_SLAB_SIZE, sizeof(kmem_cache_t), nullptr,nullptr);
    80001424:	00000793          	li	a5,0
    80001428:	00000713          	li	a4,0
    8000142c:	08000693          	li	a3,128
    80001430:	00200613          	li	a2,2
    80001434:	00007597          	auipc	a1,0x7
    80001438:	bec58593          	addi	a1,a1,-1044 # 80008020 <CONSOLE_STATUS+0x10>
    8000143c:	18850513          	addi	a0,a0,392
    80001440:	00000097          	auipc	ra,0x0
    80001444:	f20080e7          	jalr	-224(ra) # 80001360 <_Z10init_cacheP12kmem_cache_sPKcmmPFvPvES5_>

    return slabAllocatorLocal;
}
    80001448:	00048513          	mv	a0,s1
    8000144c:	01813083          	ld	ra,24(sp)
    80001450:	01013403          	ld	s0,16(sp)
    80001454:	00813483          	ld	s1,8(sp)
    80001458:	02010113          	addi	sp,sp,32
    8000145c:	00008067          	ret

0000000080001460 <_Z13checkSetIndexP6slab_si>:

bool checkSetIndex(slab_t* slab, int index)
{
    80001460:	ff010113          	addi	sp,sp,-16
    80001464:	00813423          	sd	s0,8(sp)
    80001468:	01010413          	addi	s0,sp,16
    return (uint8)slab->allocated[index / 8] & (1 << (index%8));
    8000146c:	41f5d79b          	sraiw	a5,a1,0x1f
    80001470:	01d7d79b          	srliw	a5,a5,0x1d
    80001474:	00b785bb          	addw	a1,a5,a1
    80001478:	4035d71b          	sraiw	a4,a1,0x3
    8000147c:	00e50533          	add	a0,a0,a4
    80001480:	02854503          	lbu	a0,40(a0)
    80001484:	0075f593          	andi	a1,a1,7
    80001488:	40f585bb          	subw	a1,a1,a5
    8000148c:	40b5553b          	sraw	a0,a0,a1
}
    80001490:	00157513          	andi	a0,a0,1
    80001494:	00813403          	ld	s0,8(sp)
    80001498:	01010113          	addi	sp,sp,16
    8000149c:	00008067          	ret

00000000800014a0 <_Z17setAllocatedIndexP6slab_si>:

void setAllocatedIndex(slab_t* slab, int index)
{
    800014a0:	ff010113          	addi	sp,sp,-16
    800014a4:	00813423          	sd	s0,8(sp)
    800014a8:	01010413          	addi	s0,sp,16
    slab->allocated[index / 8]=(uint8)slab->allocated[index/8] | (1 << (index%8));
    800014ac:	41f5d79b          	sraiw	a5,a1,0x1f
    800014b0:	01d7d79b          	srliw	a5,a5,0x1d
    800014b4:	00b785bb          	addw	a1,a5,a1
    800014b8:	4035d71b          	sraiw	a4,a1,0x3
    800014bc:	00e50533          	add	a0,a0,a4
    800014c0:	02850703          	lb	a4,40(a0)
    800014c4:	0075f593          	andi	a1,a1,7
    800014c8:	40f585bb          	subw	a1,a1,a5
    800014cc:	00100793          	li	a5,1
    800014d0:	00b795bb          	sllw	a1,a5,a1
    800014d4:	00b765b3          	or	a1,a4,a1
    800014d8:	02b50423          	sb	a1,40(a0)
}
    800014dc:	00813403          	ld	s0,8(sp)
    800014e0:	01010113          	addi	sp,sp,16
    800014e4:	00008067          	ret

00000000800014e8 <_Z14allocateObjectP6slab_s>:

void* allocateObject(slab_t* slab)
{
    800014e8:	fd010113          	addi	sp,sp,-48
    800014ec:	02113423          	sd	ra,40(sp)
    800014f0:	02813023          	sd	s0,32(sp)
    800014f4:	00913c23          	sd	s1,24(sp)
    800014f8:	01213823          	sd	s2,16(sp)
    800014fc:	01313423          	sd	s3,8(sp)
    80001500:	03010413          	addi	s0,sp,48
    80001504:	00050913          	mv	s2,a0
    if(slab == nullptr)
    80001508:	08050863          	beqz	a0,80001598 <_Z14allocateObjectP6slab_s+0xb0>
        return nullptr;
    int index = -1;
    void* addr = nullptr;
    for(size_t i = 0;i < slab->numOfObjects;i++)
    8000150c:	00000493          	li	s1,0
    80001510:	01893783          	ld	a5,24(s2)
    80001514:	02f4fe63          	bgeu	s1,a5,80001550 <_Z14allocateObjectP6slab_s+0x68>
    {
        if(!checkSetIndex(slab, i))
    80001518:	0004899b          	sext.w	s3,s1
    8000151c:	00098593          	mv	a1,s3
    80001520:	00090513          	mv	a0,s2
    80001524:	00000097          	auipc	ra,0x0
    80001528:	f3c080e7          	jalr	-196(ra) # 80001460 <_Z13checkSetIndexP6slab_si>
    8000152c:	00050663          	beqz	a0,80001538 <_Z14allocateObjectP6slab_s+0x50>
    for(size_t i = 0;i < slab->numOfObjects;i++)
    80001530:	00148493          	addi	s1,s1,1
    80001534:	fddff06f          	j	80001510 <_Z14allocateObjectP6slab_s+0x28>
        {
            addr = (void*)((size_t)slab + sizeof(slab_t)+ i*slab->owner->obj_size);
    80001538:	01093783          	ld	a5,16(s2)
    8000153c:	0607b783          	ld	a5,96(a5)
    80001540:	029784b3          	mul	s1,a5,s1
    80001544:	009904b3          	add	s1,s2,s1
    80001548:	22848493          	addi	s1,s1,552
            index = i;
            break;
    8000154c:	00c0006f          	j	80001558 <_Z14allocateObjectP6slab_s+0x70>
    void* addr = nullptr;
    80001550:	00000493          	li	s1,0
    int index = -1;
    80001554:	fff00993          	li	s3,-1
        }
    }
    if(addr == nullptr)
    80001558:	02048063          	beqz	s1,80001578 <_Z14allocateObjectP6slab_s+0x90>
        return nullptr;

    setAllocatedIndex(slab, index);
    8000155c:	00098593          	mv	a1,s3
    80001560:	00090513          	mv	a0,s2
    80001564:	00000097          	auipc	ra,0x0
    80001568:	f3c080e7          	jalr	-196(ra) # 800014a0 <_Z17setAllocatedIndexP6slab_si>
    slab->numOfAllocatedObjects++;
    8000156c:	02093783          	ld	a5,32(s2)
    80001570:	00178793          	addi	a5,a5,1
    80001574:	02f93023          	sd	a5,32(s2)

    return addr;
}
    80001578:	00048513          	mv	a0,s1
    8000157c:	02813083          	ld	ra,40(sp)
    80001580:	02013403          	ld	s0,32(sp)
    80001584:	01813483          	ld	s1,24(sp)
    80001588:	01013903          	ld	s2,16(sp)
    8000158c:	00813983          	ld	s3,8(sp)
    80001590:	03010113          	addi	sp,sp,48
    80001594:	00008067          	ret
        return nullptr;
    80001598:	00050493          	mv	s1,a0
    8000159c:	fddff06f          	j	80001578 <_Z14allocateObjectP6slab_s+0x90>

00000000800015a0 <_Z4fullP6slab_s>:

bool full(slab_t* slab)
{
    800015a0:	ff010113          	addi	sp,sp,-16
    800015a4:	00813423          	sd	s0,8(sp)
    800015a8:	01010413          	addi	s0,sp,16
    return slab->numOfAllocatedObjects == slab->numOfObjects;
    800015ac:	02053783          	ld	a5,32(a0)
    800015b0:	01853503          	ld	a0,24(a0)
    800015b4:	40f50533          	sub	a0,a0,a5
}
    800015b8:	00153513          	seqz	a0,a0
    800015bc:	00813403          	ld	s0,8(sp)
    800015c0:	01010113          	addi	sp,sp,16
    800015c4:	00008067          	ret

00000000800015c8 <_Z5emptyP6slab_s>:

bool empty(slab_t* slab)
{
    800015c8:	ff010113          	addi	sp,sp,-16
    800015cc:	00813423          	sd	s0,8(sp)
    800015d0:	01010413          	addi	s0,sp,16
    return slab->numOfAllocatedObjects == 0;
    800015d4:	02053503          	ld	a0,32(a0)
}
    800015d8:	00153513          	seqz	a0,a0
    800015dc:	00813403          	ld	s0,8(sp)
    800015e0:	01010113          	addi	sp,sp,16
    800015e4:	00008067          	ret

00000000800015e8 <_Z18insertIntoSlabListP6slab_sPS0_>:

void insertIntoSlabList(slab_t* slab, slab_t** slab_head)
{
    800015e8:	ff010113          	addi	sp,sp,-16
    800015ec:	00813423          	sd	s0,8(sp)
    800015f0:	01010413          	addi	s0,sp,16
    if(slab == nullptr)
    800015f4:	00050e63          	beqz	a0,80001610 <_Z18insertIntoSlabListP6slab_sPS0_+0x28>
        return;
    slab->prev = nullptr;
    800015f8:	00053023          	sd	zero,0(a0)
    slab->next = *slab_head;
    800015fc:	0005b783          	ld	a5,0(a1)
    80001600:	00f53423          	sd	a5,8(a0)
    if(*slab_head != nullptr)
    80001604:	00078463          	beqz	a5,8000160c <_Z18insertIntoSlabListP6slab_sPS0_+0x24>
        (*slab_head)->prev = slab;
    80001608:	00a7b023          	sd	a0,0(a5)
    *slab_head = slab;
    8000160c:	00a5b023          	sd	a0,0(a1)
}
    80001610:	00813403          	ld	s0,8(sp)
    80001614:	01010113          	addi	sp,sp,16
    80001618:	00008067          	ret

000000008000161c <_Z18removeFromSlabListP6slab_sPS0_>:

void removeFromSlabList(slab_t* slab, slab_t** slab_head)
{
    8000161c:	ff010113          	addi	sp,sp,-16
    80001620:	00813423          	sd	s0,8(sp)
    80001624:	01010413          	addi	s0,sp,16
    if(slab->prev == nullptr) //same as slab == *slab_head
    80001628:	00053783          	ld	a5,0(a0)
    8000162c:	02078663          	beqz	a5,80001658 <_Z18removeFromSlabListP6slab_sPS0_+0x3c>
        (*slab_head) = slab->next;
        slab->next = slab->prev = nullptr;
    }
    else
    {
        slab->prev->next = slab->next;
    80001630:	00853703          	ld	a4,8(a0)
    80001634:	00e7b423          	sd	a4,8(a5)
        if(slab->next) slab->next->prev = slab->prev;
    80001638:	00070663          	beqz	a4,80001644 <_Z18removeFromSlabListP6slab_sPS0_+0x28>
    8000163c:	00053783          	ld	a5,0(a0)
    80001640:	00f73023          	sd	a5,0(a4)
        slab->next = slab->prev = nullptr;
    80001644:	00053023          	sd	zero,0(a0)
    80001648:	00053423          	sd	zero,8(a0)
    }
}
    8000164c:	00813403          	ld	s0,8(sp)
    80001650:	01010113          	addi	sp,sp,16
    80001654:	00008067          	ret
        if(slab->next) slab->next->prev = nullptr;
    80001658:	00853783          	ld	a5,8(a0)
    8000165c:	00078463          	beqz	a5,80001664 <_Z18removeFromSlabListP6slab_sPS0_+0x48>
    80001660:	0007b023          	sd	zero,0(a5)
        (*slab_head) = slab->next;
    80001664:	00853783          	ld	a5,8(a0)
    80001668:	00f5b023          	sd	a5,0(a1)
        slab->next = slab->prev = nullptr;
    8000166c:	00053023          	sd	zero,0(a0)
    80001670:	00053423          	sd	zero,8(a0)
    80001674:	fd9ff06f          	j	8000164c <_Z18removeFromSlabListP6slab_sPS0_+0x30>

0000000080001678 <_Z16putPartialToFullP12kmem_cache_s>:

void putPartialToFull(kmem_cache_t* cachep)
{
    80001678:	fe010113          	addi	sp,sp,-32
    8000167c:	00113c23          	sd	ra,24(sp)
    80001680:	00813823          	sd	s0,16(sp)
    80001684:	00913423          	sd	s1,8(sp)
    80001688:	01213023          	sd	s2,0(sp)
    8000168c:	02010413          	addi	s0,sp,32
    80001690:	00050493          	mv	s1,a0
    slab_t* slab = cachep->slabs_partial;
    80001694:	05053903          	ld	s2,80(a0)
    removeFromSlabList(slab, &cachep->slabs_partial);
    80001698:	05050593          	addi	a1,a0,80
    8000169c:	00090513          	mv	a0,s2
    800016a0:	00000097          	auipc	ra,0x0
    800016a4:	f7c080e7          	jalr	-132(ra) # 8000161c <_Z18removeFromSlabListP6slab_sPS0_>
    insertIntoSlabList(slab, &cachep->slabs_full);
    800016a8:	04848593          	addi	a1,s1,72
    800016ac:	00090513          	mv	a0,s2
    800016b0:	00000097          	auipc	ra,0x0
    800016b4:	f38080e7          	jalr	-200(ra) # 800015e8 <_Z18insertIntoSlabListP6slab_sPS0_>
}
    800016b8:	01813083          	ld	ra,24(sp)
    800016bc:	01013403          	ld	s0,16(sp)
    800016c0:	00813483          	ld	s1,8(sp)
    800016c4:	00013903          	ld	s2,0(sp)
    800016c8:	02010113          	addi	sp,sp,32
    800016cc:	00008067          	ret

00000000800016d0 <_Z17putEmptyToPartialP12kmem_cache_s>:

void putEmptyToPartial(kmem_cache_t* cachep)
{
    800016d0:	fe010113          	addi	sp,sp,-32
    800016d4:	00113c23          	sd	ra,24(sp)
    800016d8:	00813823          	sd	s0,16(sp)
    800016dc:	00913423          	sd	s1,8(sp)
    800016e0:	01213023          	sd	s2,0(sp)
    800016e4:	02010413          	addi	s0,sp,32
    800016e8:	00050493          	mv	s1,a0
    slab_t* slab = cachep->slabs_empty;
    800016ec:	04053903          	ld	s2,64(a0)
    removeFromSlabList(slab, &cachep->slabs_empty);
    800016f0:	04050593          	addi	a1,a0,64
    800016f4:	00090513          	mv	a0,s2
    800016f8:	00000097          	auipc	ra,0x0
    800016fc:	f24080e7          	jalr	-220(ra) # 8000161c <_Z18removeFromSlabListP6slab_sPS0_>
    insertIntoSlabList(slab, &cachep->slabs_partial);
    80001700:	05048593          	addi	a1,s1,80
    80001704:	00090513          	mv	a0,s2
    80001708:	00000097          	auipc	ra,0x0
    8000170c:	ee0080e7          	jalr	-288(ra) # 800015e8 <_Z18insertIntoSlabListP6slab_sPS0_>
}
    80001710:	01813083          	ld	ra,24(sp)
    80001714:	01013403          	ld	s0,16(sp)
    80001718:	00813483          	ld	s1,8(sp)
    8000171c:	00013903          	ld	s2,0(sp)
    80001720:	02010113          	addi	sp,sp,32
    80001724:	00008067          	ret

0000000080001728 <_Z14removeFullSlabP12kmem_cache_sP6slab_s>:

void removeFullSlab(kmem_cache_t* cachep, slab_t* slab)
{
    80001728:	fe010113          	addi	sp,sp,-32
    8000172c:	00113c23          	sd	ra,24(sp)
    80001730:	00813823          	sd	s0,16(sp)
    80001734:	00913423          	sd	s1,8(sp)
    80001738:	01213023          	sd	s2,0(sp)
    8000173c:	02010413          	addi	s0,sp,32
    80001740:	00050913          	mv	s2,a0
    80001744:	00058493          	mv	s1,a1
    removeFromSlabList(slab, &cachep->slabs_full);
    80001748:	04850593          	addi	a1,a0,72
    8000174c:	00048513          	mv	a0,s1
    80001750:	00000097          	auipc	ra,0x0
    80001754:	ecc080e7          	jalr	-308(ra) # 8000161c <_Z18removeFromSlabListP6slab_sPS0_>
    insertIntoSlabList(slab, &cachep->slabs_partial);
    80001758:	05090593          	addi	a1,s2,80
    8000175c:	00048513          	mv	a0,s1
    80001760:	00000097          	auipc	ra,0x0
    80001764:	e88080e7          	jalr	-376(ra) # 800015e8 <_Z18insertIntoSlabListP6slab_sPS0_>
}
    80001768:	01813083          	ld	ra,24(sp)
    8000176c:	01013403          	ld	s0,16(sp)
    80001770:	00813483          	ld	s1,8(sp)
    80001774:	00013903          	ld	s2,0(sp)
    80001778:	02010113          	addi	sp,sp,32
    8000177c:	00008067          	ret

0000000080001780 <_Z17removePartialSlabP12kmem_cache_sP6slab_s>:

void removePartialSlab(kmem_cache_t * cachep, slab_t* slab)
{
    80001780:	fe010113          	addi	sp,sp,-32
    80001784:	00113c23          	sd	ra,24(sp)
    80001788:	00813823          	sd	s0,16(sp)
    8000178c:	00913423          	sd	s1,8(sp)
    80001790:	01213023          	sd	s2,0(sp)
    80001794:	02010413          	addi	s0,sp,32
    80001798:	00050913          	mv	s2,a0
    8000179c:	00058493          	mv	s1,a1
    removeFromSlabList(slab, &cachep->slabs_partial);
    800017a0:	05050593          	addi	a1,a0,80
    800017a4:	00048513          	mv	a0,s1
    800017a8:	00000097          	auipc	ra,0x0
    800017ac:	e74080e7          	jalr	-396(ra) # 8000161c <_Z18removeFromSlabListP6slab_sPS0_>
    insertIntoSlabList(slab, &cachep->slabs_empty);
    800017b0:	04090593          	addi	a1,s2,64
    800017b4:	00048513          	mv	a0,s1
    800017b8:	00000097          	auipc	ra,0x0
    800017bc:	e30080e7          	jalr	-464(ra) # 800015e8 <_Z18insertIntoSlabListP6slab_sPS0_>
}
    800017c0:	01813083          	ld	ra,24(sp)
    800017c4:	01013403          	ld	s0,16(sp)
    800017c8:	00813483          	ld	s1,8(sp)
    800017cc:	00013903          	ld	s2,0(sp)
    800017d0:	02010113          	addi	sp,sp,32
    800017d4:	00008067          	ret

00000000800017d8 <_Z12allocateSlabP12kmem_cache_s>:

void allocateSlab(kmem_cache_t* cachep)
{
    800017d8:	fd010113          	addi	sp,sp,-48
    800017dc:	02113423          	sd	ra,40(sp)
    800017e0:	02813023          	sd	s0,32(sp)
    800017e4:	00913c23          	sd	s1,24(sp)
    800017e8:	01213823          	sd	s2,16(sp)
    800017ec:	01313423          	sd	s3,8(sp)
    800017f0:	03010413          	addi	s0,sp,48
    800017f4:	00050993          	mv	s3,a0
    slab_t* newSlab = (slab_t*)buddy_alloc(cachep->slab_size);
    800017f8:	05853503          	ld	a0,88(a0)
    800017fc:	00001097          	auipc	ra,0x1
    80001800:	444080e7          	jalr	1092(ra) # 80002c40 <_Z11buddy_allocm>
    if(newSlab == nullptr)
    80001804:	08050c63          	beqz	a0,8000189c <_Z12allocateSlabP12kmem_cache_s+0xc4>
    80001808:	00050493          	mv	s1,a0
        return;
    newSlab->next = cachep->slabs_empty;
    8000180c:	0409b783          	ld	a5,64(s3)
    80001810:	00f53423          	sd	a5,8(a0)
    if(cachep->slabs_empty != nullptr)
    80001814:	00078463          	beqz	a5,8000181c <_Z12allocateSlabP12kmem_cache_s+0x44>
        cachep->slabs_empty->prev = newSlab;
    80001818:	00a7b023          	sd	a0,0(a5)
    cachep->slabs_empty = newSlab;
    8000181c:	0499b023          	sd	s1,64(s3)
    newSlab->prev = nullptr;
    80001820:	0004b023          	sd	zero,0(s1)

    newSlab->numOfAllocatedObjects = 0;
    80001824:	0204b023          	sd	zero,32(s1)
    newSlab->owner = cachep;
    80001828:	0134b823          	sd	s3,16(s1)
    size_t sizeInBytes = cachep->slab_size*BLOCK_SIZE;
    8000182c:	0589b683          	ld	a3,88(s3)
    80001830:	00c69693          	slli	a3,a3,0xc
    newSlab->numOfObjects = (sizeInBytes - sizeof(slab_t)) / cachep->obj_size; // TODO can this param be in cache ?
    80001834:	dd868693          	addi	a3,a3,-552
    80001838:	0609b783          	ld	a5,96(s3)
    8000183c:	02f6d6b3          	divu	a3,a3,a5
    80001840:	00d4bc23          	sd	a3,24(s1)
    for(size_t i = 0; i < (newSlab->numOfObjects + 7) / 8;i++)
    80001844:	00000713          	li	a4,0
    80001848:	00768793          	addi	a5,a3,7
    8000184c:	0037d793          	srli	a5,a5,0x3
    80001850:	00f77a63          	bgeu	a4,a5,80001864 <_Z12allocateSlabP12kmem_cache_s+0x8c>
        newSlab->allocated[i] = 0;
    80001854:	00e487b3          	add	a5,s1,a4
    80001858:	02078423          	sb	zero,40(a5)
    for(size_t i = 0; i < (newSlab->numOfObjects + 7) / 8;i++)
    8000185c:	00170713          	addi	a4,a4,1
    80001860:	fe9ff06f          	j	80001848 <_Z12allocateSlabP12kmem_cache_s+0x70>

    if(cachep->ctor != nullptr)
    80001864:	0689b783          	ld	a5,104(s3)
    80001868:	02078a63          	beqz	a5,8000189c <_Z12allocateSlabP12kmem_cache_s+0xc4>
    {
        for(size_t i = 0;i < newSlab->numOfObjects;i++)
    8000186c:	00000913          	li	s2,0
    80001870:	0184b783          	ld	a5,24(s1)
    80001874:	02f97463          	bgeu	s2,a5,8000189c <_Z12allocateSlabP12kmem_cache_s+0xc4>
            cachep->ctor((void*)((size_t)newSlab + sizeof(slab_t) + i*newSlab->owner->obj_size));
    80001878:	0689b783          	ld	a5,104(s3)
    8000187c:	0104b703          	ld	a4,16(s1)
    80001880:	06073503          	ld	a0,96(a4)
    80001884:	03250533          	mul	a0,a0,s2
    80001888:	00a48533          	add	a0,s1,a0
    8000188c:	22850513          	addi	a0,a0,552
    80001890:	000780e7          	jalr	a5
        for(size_t i = 0;i < newSlab->numOfObjects;i++)
    80001894:	00190913          	addi	s2,s2,1
    80001898:	fd9ff06f          	j	80001870 <_Z12allocateSlabP12kmem_cache_s+0x98>
    }
}
    8000189c:	02813083          	ld	ra,40(sp)
    800018a0:	02013403          	ld	s0,32(sp)
    800018a4:	01813483          	ld	s1,24(sp)
    800018a8:	01013903          	ld	s2,16(sp)
    800018ac:	00813983          	ld	s3,8(sp)
    800018b0:	03010113          	addi	sp,sp,48
    800018b4:	00008067          	ret

00000000800018b8 <_Z18getOptimalSlabSizem>:

size_t getOptimalSlabSize(size_t obj_size)
{
    800018b8:	ff010113          	addi	sp,sp,-16
    800018bc:	00813423          	sd	s0,8(sp)
    800018c0:	01010413          	addi	s0,sp,16
    size_t bestSize = BLOCK_SIZE;
    800018c4:	00001737          	lui	a4,0x1
    while(bestSize < obj_size + sizeof(slab_t))
    800018c8:	22850793          	addi	a5,a0,552
    800018cc:	00f77663          	bgeu	a4,a5,800018d8 <_Z18getOptimalSlabSizem+0x20>
        bestSize<<=1;
    800018d0:	00171713          	slli	a4,a4,0x1
    while(bestSize < obj_size + sizeof(slab_t))
    800018d4:	ff5ff06f          	j	800018c8 <_Z18getOptimalSlabSizem+0x10>
    size_t optimalWaste = (bestSize - sizeof(slab_t)) % obj_size;
    800018d8:	dd870813          	addi	a6,a4,-552 # dd8 <_entry-0x7ffff228>
    800018dc:	02a87833          	remu	a6,a6,a0
    800018e0:	00070313          	mv	t1,a4
    size_t oldSize = bestSize;

    static size_t lowerConst = 1;
    static size_t highConst = 4;
    for(size_t i = lowerConst;i<=highConst;i++)
    800018e4:	00100693          	li	a3,1
    800018e8:	0080006f          	j	800018f0 <_Z18getOptimalSlabSizem+0x38>
    800018ec:	00168693          	addi	a3,a3,1
    800018f0:	00400793          	li	a5,4
    800018f4:	02d7e663          	bltu	a5,a3,80001920 <_Z18getOptimalSlabSizem+0x68>
    {
        size_t newSize = oldSize << i;
    800018f8:	00d71633          	sll	a2,a4,a3
        size_t newWaste = (newSize - sizeof(slab_t)) % obj_size;
    800018fc:	dd860793          	addi	a5,a2,-552
    80001900:	02a7f5b3          	remu	a1,a5,a0
        size_t numOfObjs = (newSize - sizeof(slab_t)) / obj_size;
    80001904:	02a7d7b3          	divu	a5,a5,a0
        if(newWaste < optimalWaste && numOfObjs <= MAX_NUM_OF_OBJS)
    80001908:	ff05f2e3          	bgeu	a1,a6,800018ec <_Z18getOptimalSlabSizem+0x34>
    8000190c:	000018b7          	lui	a7,0x1
    80001910:	fcf8eee3          	bltu	a7,a5,800018ec <_Z18getOptimalSlabSizem+0x34>
        {
            optimalWaste = newWaste;
    80001914:	00058813          	mv	a6,a1
            bestSize = newSize;
    80001918:	00060313          	mv	t1,a2
    8000191c:	fd1ff06f          	j	800018ec <_Z18getOptimalSlabSizem+0x34>
            bestSize = newSize;
        }
    }*/

    return bestSize / BLOCK_SIZE;
}
    80001920:	00c35513          	srli	a0,t1,0xc
    80001924:	00813403          	ld	s0,8(sp)
    80001928:	01010113          	addi	sp,sp,16
    8000192c:	00008067          	ret

0000000080001930 <_Z8findSlabP12kmem_cache_sPKv>:

//finds the slab where objp is
slab_t* findSlab(kmem_cache_t* cachep, const void* objp)
{
    80001930:	ff010113          	addi	sp,sp,-16
    80001934:	00813423          	sd	s0,8(sp)
    80001938:	01010413          	addi	s0,sp,16
    8000193c:	00050693          	mv	a3,a0
    if(cachep == nullptr || objp == nullptr)
    80001940:	02050c63          	beqz	a0,80001978 <_Z8findSlabP12kmem_cache_sPKv+0x48>
    80001944:	06058a63          	beqz	a1,800019b8 <_Z8findSlabP12kmem_cache_sPKv+0x88>
        return nullptr;
    slab_t* slab = cachep->slabs_full;
    80001948:	04853503          	ld	a0,72(a0)
    8000194c:	0080006f          	j	80001954 <_Z8findSlabP12kmem_cache_sPKv+0x24>
    while(slab != nullptr)
    {
        size_t endAddr = (size_t)slab + sizeof(slab_t) + slab->numOfObjects*slab->owner->obj_size;
        if((size_t)objp > (size_t)slab && (size_t)objp < endAddr)
            return slab;
        slab = slab->next;
    80001950:	00853503          	ld	a0,8(a0)
    while(slab != nullptr)
    80001954:	02050863          	beqz	a0,80001984 <_Z8findSlabP12kmem_cache_sPKv+0x54>
        size_t endAddr = (size_t)slab + sizeof(slab_t) + slab->numOfObjects*slab->owner->obj_size;
    80001958:	01853783          	ld	a5,24(a0)
    8000195c:	01053703          	ld	a4,16(a0)
    80001960:	06073703          	ld	a4,96(a4)
    80001964:	02e787b3          	mul	a5,a5,a4
    80001968:	00a787b3          	add	a5,a5,a0
    8000196c:	22878793          	addi	a5,a5,552
        if((size_t)objp > (size_t)slab && (size_t)objp < endAddr)
    80001970:	feb570e3          	bgeu	a0,a1,80001950 <_Z8findSlabP12kmem_cache_sPKv+0x20>
    80001974:	fcf5fee3          	bgeu	a1,a5,80001950 <_Z8findSlabP12kmem_cache_sPKv+0x20>
            return slab;
        slab = slab->next;
    }

    return nullptr;
}
    80001978:	00813403          	ld	s0,8(sp)
    8000197c:	01010113          	addi	sp,sp,16
    80001980:	00008067          	ret
    slab = cachep->slabs_partial;
    80001984:	0506b503          	ld	a0,80(a3)
    80001988:	0080006f          	j	80001990 <_Z8findSlabP12kmem_cache_sPKv+0x60>
        slab = slab->next;
    8000198c:	00853503          	ld	a0,8(a0)
    while(slab != nullptr)
    80001990:	fe0504e3          	beqz	a0,80001978 <_Z8findSlabP12kmem_cache_sPKv+0x48>
        size_t endAddr = (size_t)slab + sizeof(slab_t) + slab->numOfObjects*slab->owner->obj_size;
    80001994:	01853783          	ld	a5,24(a0)
    80001998:	01053703          	ld	a4,16(a0)
    8000199c:	06073703          	ld	a4,96(a4)
    800019a0:	02e787b3          	mul	a5,a5,a4
    800019a4:	00a787b3          	add	a5,a5,a0
    800019a8:	22878793          	addi	a5,a5,552
        if((size_t)objp > (size_t)slab && (size_t)objp < endAddr)
    800019ac:	feb570e3          	bgeu	a0,a1,8000198c <_Z8findSlabP12kmem_cache_sPKv+0x5c>
    800019b0:	fcf5fee3          	bgeu	a1,a5,8000198c <_Z8findSlabP12kmem_cache_sPKv+0x5c>
    800019b4:	fc5ff06f          	j	80001978 <_Z8findSlabP12kmem_cache_sPKv+0x48>
        return nullptr;
    800019b8:	00058513          	mv	a0,a1
    800019bc:	fbdff06f          	j	80001978 <_Z8findSlabP12kmem_cache_sPKv+0x48>

00000000800019c0 <_Z19resetAllocatedIndexP6slab_si>:

void resetAllocatedIndex(slab_t* slab, int index)
{
    800019c0:	ff010113          	addi	sp,sp,-16
    800019c4:	00813423          	sd	s0,8(sp)
    800019c8:	01010413          	addi	s0,sp,16
    slab->allocated[index / 8]=(uint8)slab->allocated[index/8] & ~(1 << (index%8));
    800019cc:	41f5d79b          	sraiw	a5,a1,0x1f
    800019d0:	01d7d79b          	srliw	a5,a5,0x1d
    800019d4:	00b785bb          	addw	a1,a5,a1
    800019d8:	4035d71b          	sraiw	a4,a1,0x3
    800019dc:	00e50533          	add	a0,a0,a4
    800019e0:	02850703          	lb	a4,40(a0)
    800019e4:	0075f593          	andi	a1,a1,7
    800019e8:	40f585bb          	subw	a1,a1,a5
    800019ec:	00100793          	li	a5,1
    800019f0:	00b795bb          	sllw	a1,a5,a1
    800019f4:	fff5c593          	not	a1,a1
    800019f8:	00b775b3          	and	a1,a4,a1
    800019fc:	02b50423          	sb	a1,40(a0)
}
    80001a00:	00813403          	ld	s0,8(sp)
    80001a04:	01010113          	addi	sp,sp,16
    80001a08:	00008067          	ret

0000000080001a0c <_Z13printSlabInfoP6slab_s>:

void printSlabInfo(slab_t* slab)
{
    80001a0c:	fe010113          	addi	sp,sp,-32
    80001a10:	00113c23          	sd	ra,24(sp)
    80001a14:	00813823          	sd	s0,16(sp)
    80001a18:	00913423          	sd	s1,8(sp)
    80001a1c:	02010413          	addi	s0,sp,32
    80001a20:	00050493          	mv	s1,a0
    KConsole::trapPrintString("One slab info---------\n");
    80001a24:	00006517          	auipc	a0,0x6
    80001a28:	60c50513          	addi	a0,a0,1548 # 80008030 <CONSOLE_STATUS+0x20>
    80001a2c:	00002097          	auipc	ra,0x2
    80001a30:	bb4080e7          	jalr	-1100(ra) # 800035e0 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintStringInt("Slab address ",(size_t)slab,16);
    80001a34:	01000613          	li	a2,16
    80001a38:	00048593          	mv	a1,s1
    80001a3c:	00006517          	auipc	a0,0x6
    80001a40:	60c50513          	addi	a0,a0,1548 # 80008048 <CONSOLE_STATUS+0x38>
    80001a44:	00002097          	auipc	ra,0x2
    80001a48:	c74080e7          	jalr	-908(ra) # 800036b8 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Number of allocated objects ",slab->numOfAllocatedObjects);
    80001a4c:	00a00613          	li	a2,10
    80001a50:	0204b583          	ld	a1,32(s1)
    80001a54:	00006517          	auipc	a0,0x6
    80001a58:	60450513          	addi	a0,a0,1540 # 80008058 <CONSOLE_STATUS+0x48>
    80001a5c:	00002097          	auipc	ra,0x2
    80001a60:	c5c080e7          	jalr	-932(ra) # 800036b8 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Number of objects ", slab->numOfObjects);
    80001a64:	00a00613          	li	a2,10
    80001a68:	0184b583          	ld	a1,24(s1)
    80001a6c:	00006517          	auipc	a0,0x6
    80001a70:	60c50513          	addi	a0,a0,1548 # 80008078 <CONSOLE_STATUS+0x68>
    80001a74:	00002097          	auipc	ra,0x2
    80001a78:	c44080e7          	jalr	-956(ra) # 800036b8 <_ZN8KConsole18trapPrintStringIntEPKcmi>
        KConsole::trapPrintInt(i);
        KConsole::trapPrintString(" : ");
        KConsole::trapPrintInt((size_t)slab->allocated[i], 16);
        KConsole::trapPrintString("\n");
    }*/
}
    80001a7c:	01813083          	ld	ra,24(sp)
    80001a80:	01013403          	ld	s0,16(sp)
    80001a84:	00813483          	ld	s1,8(sp)
    80001a88:	02010113          	addi	sp,sp,32
    80001a8c:	00008067          	ret

0000000080001a90 <_Z16free_slab_objectP6slab_sPKv>:

void free_slab_object(slab_t* slab, const void* objp)
{
    if(slab == nullptr || objp == nullptr)
    80001a90:	12050a63          	beqz	a0,80001bc4 <_Z16free_slab_objectP6slab_sPKv+0x134>
{
    80001a94:	fd010113          	addi	sp,sp,-48
    80001a98:	02113423          	sd	ra,40(sp)
    80001a9c:	02813023          	sd	s0,32(sp)
    80001aa0:	00913c23          	sd	s1,24(sp)
    80001aa4:	01213823          	sd	s2,16(sp)
    80001aa8:	01313423          	sd	s3,8(sp)
    80001aac:	01413023          	sd	s4,0(sp)
    80001ab0:	03010413          	addi	s0,sp,48
    80001ab4:	00050493          	mv	s1,a0
    80001ab8:	00058993          	mv	s3,a1
    if(slab == nullptr || objp == nullptr)
    80001abc:	08058463          	beqz	a1,80001b44 <_Z16free_slab_objectP6slab_sPKv+0xb4>
        return;
    int indexOfObject = ((size_t)objp - sizeof(slab_t) - (size_t)slab) / slab->owner->obj_size;
    80001ac0:	40a58933          	sub	s2,a1,a0
    80001ac4:	dd890913          	addi	s2,s2,-552
    80001ac8:	01053a03          	ld	s4,16(a0)
    80001acc:	060a3783          	ld	a5,96(s4)
    80001ad0:	02f95933          	divu	s2,s2,a5
    80001ad4:	0009091b          	sext.w	s2,s2
    if((size_t)objp != (size_t)slab + sizeof(slab_t) + indexOfObject*slab->owner->obj_size) //address not allocated, random address
    80001ad8:	032787b3          	mul	a5,a5,s2
    80001adc:	00f507b3          	add	a5,a0,a5
    80001ae0:	22878793          	addi	a5,a5,552
    80001ae4:	06f59063          	bne	a1,a5,80001b44 <_Z16free_slab_objectP6slab_sPKv+0xb4>
        return;

    if(!checkSetIndex(slab, indexOfObject))
    80001ae8:	00090593          	mv	a1,s2
    80001aec:	00000097          	auipc	ra,0x0
    80001af0:	974080e7          	jalr	-1676(ra) # 80001460 <_Z13checkSetIndexP6slab_si>
    80001af4:	04050863          	beqz	a0,80001b44 <_Z16free_slab_objectP6slab_sPKv+0xb4>
        return;

    kmem_cache_t* cachep = slab->owner;
    if(cachep->dtor != nullptr)
    80001af8:	070a3783          	ld	a5,112(s4)
    80001afc:	00078663          	beqz	a5,80001b08 <_Z16free_slab_objectP6slab_sPKv+0x78>
        cachep->dtor((void*)objp);
    80001b00:	00098513          	mv	a0,s3
    80001b04:	000780e7          	jalr	a5
    if(cachep->ctor != nullptr)
    80001b08:	068a3783          	ld	a5,104(s4)
    80001b0c:	00078663          	beqz	a5,80001b18 <_Z16free_slab_objectP6slab_sPKv+0x88>
        cachep->ctor((void*)objp);
    80001b10:	00098513          	mv	a0,s3
    80001b14:	000780e7          	jalr	a5

    resetAllocatedIndex(slab, indexOfObject);
    80001b18:	00090593          	mv	a1,s2
    80001b1c:	00048513          	mv	a0,s1
    80001b20:	00000097          	auipc	ra,0x0
    80001b24:	ea0080e7          	jalr	-352(ra) # 800019c0 <_Z19resetAllocatedIndexP6slab_si>
    if(slab->numOfObjects == slab->numOfAllocatedObjects)
    80001b28:	0184b703          	ld	a4,24(s1)
    80001b2c:	0204b783          	ld	a5,32(s1)
    80001b30:	02f70a63          	beq	a4,a5,80001b64 <_Z16free_slab_objectP6slab_sPKv+0xd4>
        removeFullSlab(slab->owner, slab);
        slab->numOfAllocatedObjects--;
        if(empty(slab))
            removePartialSlab(slab->owner, slab);
    }
    else if(slab->numOfAllocatedObjects == 1)
    80001b34:	00100713          	li	a4,1
    80001b38:	06e78663          	beq	a5,a4,80001ba4 <_Z16free_slab_objectP6slab_sPKv+0x114>
    {
        removePartialSlab(slab->owner, slab);
        slab->numOfAllocatedObjects--;
    }
    else
        slab->numOfAllocatedObjects--;
    80001b3c:	fff78793          	addi	a5,a5,-1
    80001b40:	02f4b023          	sd	a5,32(s1)
}
    80001b44:	02813083          	ld	ra,40(sp)
    80001b48:	02013403          	ld	s0,32(sp)
    80001b4c:	01813483          	ld	s1,24(sp)
    80001b50:	01013903          	ld	s2,16(sp)
    80001b54:	00813983          	ld	s3,8(sp)
    80001b58:	00013a03          	ld	s4,0(sp)
    80001b5c:	03010113          	addi	sp,sp,48
    80001b60:	00008067          	ret
        removeFullSlab(slab->owner, slab);
    80001b64:	00048593          	mv	a1,s1
    80001b68:	0104b503          	ld	a0,16(s1)
    80001b6c:	00000097          	auipc	ra,0x0
    80001b70:	bbc080e7          	jalr	-1092(ra) # 80001728 <_Z14removeFullSlabP12kmem_cache_sP6slab_s>
        slab->numOfAllocatedObjects--;
    80001b74:	0204b783          	ld	a5,32(s1)
    80001b78:	fff78793          	addi	a5,a5,-1
    80001b7c:	02f4b023          	sd	a5,32(s1)
        if(empty(slab))
    80001b80:	00048513          	mv	a0,s1
    80001b84:	00000097          	auipc	ra,0x0
    80001b88:	a44080e7          	jalr	-1468(ra) # 800015c8 <_Z5emptyP6slab_s>
    80001b8c:	fa050ce3          	beqz	a0,80001b44 <_Z16free_slab_objectP6slab_sPKv+0xb4>
            removePartialSlab(slab->owner, slab);
    80001b90:	00048593          	mv	a1,s1
    80001b94:	0104b503          	ld	a0,16(s1)
    80001b98:	00000097          	auipc	ra,0x0
    80001b9c:	be8080e7          	jalr	-1048(ra) # 80001780 <_Z17removePartialSlabP12kmem_cache_sP6slab_s>
    80001ba0:	fa5ff06f          	j	80001b44 <_Z16free_slab_objectP6slab_sPKv+0xb4>
        removePartialSlab(slab->owner, slab);
    80001ba4:	00048593          	mv	a1,s1
    80001ba8:	0104b503          	ld	a0,16(s1)
    80001bac:	00000097          	auipc	ra,0x0
    80001bb0:	bd4080e7          	jalr	-1068(ra) # 80001780 <_Z17removePartialSlabP12kmem_cache_sP6slab_s>
        slab->numOfAllocatedObjects--;
    80001bb4:	0204b783          	ld	a5,32(s1)
    80001bb8:	fff78793          	addi	a5,a5,-1
    80001bbc:	02f4b023          	sd	a5,32(s1)
    80001bc0:	f85ff06f          	j	80001b44 <_Z16free_slab_objectP6slab_sPKv+0xb4>
    80001bc4:	00008067          	ret

0000000080001bc8 <_Z9kmem_initPvi>:
    kmem_cache_shrink(cacheOfCaches);
}

//slab allocator public interface-----------------------------------------------------------------------------
void kmem_init(void *space, int block_num)
{
    80001bc8:	ff010113          	addi	sp,sp,-16
    80001bcc:	00113423          	sd	ra,8(sp)
    80001bd0:	00813023          	sd	s0,0(sp)
    80001bd4:	01010413          	addi	s0,sp,16
    buddyAllocator* buddy = buddy_init(space, block_num);
    80001bd8:	00001097          	auipc	ra,0x1
    80001bdc:	268080e7          	jalr	616(ra) # 80002e40 <_Z10buddy_initPvm>
    slabAllocator = slab_allocator_init(buddy);
    80001be0:	00000097          	auipc	ra,0x0
    80001be4:	80c080e7          	jalr	-2036(ra) # 800013ec <_Z19slab_allocator_initP14buddyAllocator>
    80001be8:	00007797          	auipc	a5,0x7
    80001bec:	dea7b423          	sd	a0,-536(a5) # 800089d0 <_ZL13slabAllocator>
}
    80001bf0:	00813083          	ld	ra,8(sp)
    80001bf4:	00013403          	ld	s0,0(sp)
    80001bf8:	01010113          	addi	sp,sp,16
    80001bfc:	00008067          	ret

0000000080001c00 <_Z16kmem_cache_allocP12kmem_cache_s>:
    init_cache(newCache, name, getOptimalSlabSize(size), size, ctor,dtor);
    return newCache;
}

void *kmem_cache_alloc(kmem_cache_t *cachep)
{
    80001c00:	fe010113          	addi	sp,sp,-32
    80001c04:	00113c23          	sd	ra,24(sp)
    80001c08:	00813823          	sd	s0,16(sp)
    80001c0c:	00913423          	sd	s1,8(sp)
    80001c10:	01213023          	sd	s2,0(sp)
    80001c14:	02010413          	addi	s0,sp,32
    80001c18:	00050493          	mv	s1,a0
    if(cachep == nullptr)
    80001c1c:	10050a63          	beqz	a0,80001d30 <_Z16kmem_cache_allocP12kmem_cache_s+0x130>
        return nullptr;

    if(cachep->slabs_partial != nullptr)
    80001c20:	05053503          	ld	a0,80(a0)
    80001c24:	04051a63          	bnez	a0,80001c78 <_Z16kmem_cache_allocP12kmem_cache_s+0x78>
        void* allocatedAddr = allocateObject(cachep->slabs_partial);
        if(full(cachep->slabs_partial))
            putPartialToFull(cachep);
        return allocatedAddr;
    }
    else if(cachep->slabs_empty != nullptr)
    80001c28:	0404b503          	ld	a0,64(s1)
    80001c2c:	08050a63          	beqz	a0,80001cc0 <_Z16kmem_cache_allocP12kmem_cache_s+0xc0>
    {
        void* allocatedAddr = allocateObject(cachep->slabs_empty);
    80001c30:	00000097          	auipc	ra,0x0
    80001c34:	8b8080e7          	jalr	-1864(ra) # 800014e8 <_Z14allocateObjectP6slab_s>
    80001c38:	00050913          	mv	s2,a0
        if(!empty(cachep->slabs_empty))
    80001c3c:	0404b503          	ld	a0,64(s1)
    80001c40:	00000097          	auipc	ra,0x0
    80001c44:	988080e7          	jalr	-1656(ra) # 800015c8 <_Z5emptyP6slab_s>
    80001c48:	04051663          	bnez	a0,80001c94 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
        {
            putEmptyToPartial(cachep);
    80001c4c:	00048513          	mv	a0,s1
    80001c50:	00000097          	auipc	ra,0x0
    80001c54:	a80080e7          	jalr	-1408(ra) # 800016d0 <_Z17putEmptyToPartialP12kmem_cache_s>
            if(full(cachep->slabs_partial))
    80001c58:	0504b503          	ld	a0,80(s1)
    80001c5c:	00000097          	auipc	ra,0x0
    80001c60:	944080e7          	jalr	-1724(ra) # 800015a0 <_Z4fullP6slab_s>
    80001c64:	02050863          	beqz	a0,80001c94 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
                putPartialToFull(cachep);
    80001c68:	00048513          	mv	a0,s1
    80001c6c:	00000097          	auipc	ra,0x0
    80001c70:	a0c080e7          	jalr	-1524(ra) # 80001678 <_Z16putPartialToFullP12kmem_cache_s>
        }
        return allocatedAddr;
    80001c74:	0200006f          	j	80001c94 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
        void* allocatedAddr = allocateObject(cachep->slabs_partial);
    80001c78:	00000097          	auipc	ra,0x0
    80001c7c:	870080e7          	jalr	-1936(ra) # 800014e8 <_Z14allocateObjectP6slab_s>
    80001c80:	00050913          	mv	s2,a0
        if(full(cachep->slabs_partial))
    80001c84:	0504b503          	ld	a0,80(s1)
    80001c88:	00000097          	auipc	ra,0x0
    80001c8c:	918080e7          	jalr	-1768(ra) # 800015a0 <_Z4fullP6slab_s>
    80001c90:	02051063          	bnez	a0,80001cb0 <_Z16kmem_cache_allocP12kmem_cache_s+0xb0>
                putPartialToFull(cachep);
        }
        return allocatedAddr;
    }
    return nullptr;
}
    80001c94:	00090513          	mv	a0,s2
    80001c98:	01813083          	ld	ra,24(sp)
    80001c9c:	01013403          	ld	s0,16(sp)
    80001ca0:	00813483          	ld	s1,8(sp)
    80001ca4:	00013903          	ld	s2,0(sp)
    80001ca8:	02010113          	addi	sp,sp,32
    80001cac:	00008067          	ret
            putPartialToFull(cachep);
    80001cb0:	00048513          	mv	a0,s1
    80001cb4:	00000097          	auipc	ra,0x0
    80001cb8:	9c4080e7          	jalr	-1596(ra) # 80001678 <_Z16putPartialToFullP12kmem_cache_s>
        return allocatedAddr;
    80001cbc:	fd9ff06f          	j	80001c94 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
        allocateSlab(cachep);
    80001cc0:	00048513          	mv	a0,s1
    80001cc4:	00000097          	auipc	ra,0x0
    80001cc8:	b14080e7          	jalr	-1260(ra) # 800017d8 <_Z12allocateSlabP12kmem_cache_s>
        if(cachep->slabs_empty == nullptr)
    80001ccc:	0404b903          	ld	s2,64(s1)
    80001cd0:	04090863          	beqz	s2,80001d20 <_Z16kmem_cache_allocP12kmem_cache_s+0x120>
        void* allocatedAddr = allocateObject(cachep->slabs_empty);
    80001cd4:	00090513          	mv	a0,s2
    80001cd8:	00000097          	auipc	ra,0x0
    80001cdc:	810080e7          	jalr	-2032(ra) # 800014e8 <_Z14allocateObjectP6slab_s>
    80001ce0:	00050913          	mv	s2,a0
        if(!empty(cachep->slabs_empty))
    80001ce4:	0404b503          	ld	a0,64(s1)
    80001ce8:	00000097          	auipc	ra,0x0
    80001cec:	8e0080e7          	jalr	-1824(ra) # 800015c8 <_Z5emptyP6slab_s>
    80001cf0:	fa0512e3          	bnez	a0,80001c94 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
            putEmptyToPartial(cachep);
    80001cf4:	00048513          	mv	a0,s1
    80001cf8:	00000097          	auipc	ra,0x0
    80001cfc:	9d8080e7          	jalr	-1576(ra) # 800016d0 <_Z17putEmptyToPartialP12kmem_cache_s>
            if(full(cachep->slabs_partial))
    80001d00:	0504b503          	ld	a0,80(s1)
    80001d04:	00000097          	auipc	ra,0x0
    80001d08:	89c080e7          	jalr	-1892(ra) # 800015a0 <_Z4fullP6slab_s>
    80001d0c:	f80504e3          	beqz	a0,80001c94 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
                putPartialToFull(cachep);
    80001d10:	00048513          	mv	a0,s1
    80001d14:	00000097          	auipc	ra,0x0
    80001d18:	964080e7          	jalr	-1692(ra) # 80001678 <_Z16putPartialToFullP12kmem_cache_s>
        return allocatedAddr;
    80001d1c:	f79ff06f          	j	80001c94 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
            cachep->errors|=EXPAND_ERROR;
    80001d20:	0784a783          	lw	a5,120(s1)
    80001d24:	0017e793          	ori	a5,a5,1
    80001d28:	06f4ac23          	sw	a5,120(s1)
            return nullptr;
    80001d2c:	f69ff06f          	j	80001c94 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
        return nullptr;
    80001d30:	00050913          	mv	s2,a0
    80001d34:	f61ff06f          	j	80001c94 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>

0000000080001d38 <_Z17kmem_cache_createPKcmPFvPvES3_>:
{
    80001d38:	fc010113          	addi	sp,sp,-64
    80001d3c:	02113c23          	sd	ra,56(sp)
    80001d40:	02813823          	sd	s0,48(sp)
    80001d44:	02913423          	sd	s1,40(sp)
    80001d48:	03213023          	sd	s2,32(sp)
    80001d4c:	01313c23          	sd	s3,24(sp)
    80001d50:	01413823          	sd	s4,16(sp)
    80001d54:	01513423          	sd	s5,8(sp)
    80001d58:	04010413          	addi	s0,sp,64
    80001d5c:	00050993          	mv	s3,a0
    80001d60:	00058913          	mv	s2,a1
    80001d64:	00060a13          	mv	s4,a2
    80001d68:	00068a93          	mv	s5,a3
    kmem_cache_t* newCache = (kmem_cache_t*)kmem_cache_alloc(&slabAllocator->cacheOfCaches);
    80001d6c:	00007517          	auipc	a0,0x7
    80001d70:	c6453503          	ld	a0,-924(a0) # 800089d0 <_ZL13slabAllocator>
    80001d74:	06850513          	addi	a0,a0,104
    80001d78:	00000097          	auipc	ra,0x0
    80001d7c:	e88080e7          	jalr	-376(ra) # 80001c00 <_Z16kmem_cache_allocP12kmem_cache_s>
    80001d80:	00050493          	mv	s1,a0
    if(newCache == nullptr)
    80001d84:	02050863          	beqz	a0,80001db4 <_Z17kmem_cache_createPKcmPFvPvES3_+0x7c>
    init_cache(newCache, name, getOptimalSlabSize(size), size, ctor,dtor);
    80001d88:	00090513          	mv	a0,s2
    80001d8c:	00000097          	auipc	ra,0x0
    80001d90:	b2c080e7          	jalr	-1236(ra) # 800018b8 <_Z18getOptimalSlabSizem>
    80001d94:	00050613          	mv	a2,a0
    80001d98:	000a8793          	mv	a5,s5
    80001d9c:	000a0713          	mv	a4,s4
    80001da0:	00090693          	mv	a3,s2
    80001da4:	00098593          	mv	a1,s3
    80001da8:	00048513          	mv	a0,s1
    80001dac:	fffff097          	auipc	ra,0xfffff
    80001db0:	5b4080e7          	jalr	1460(ra) # 80001360 <_Z10init_cacheP12kmem_cache_sPKcmmPFvPvES5_>
}
    80001db4:	00048513          	mv	a0,s1
    80001db8:	03813083          	ld	ra,56(sp)
    80001dbc:	03013403          	ld	s0,48(sp)
    80001dc0:	02813483          	ld	s1,40(sp)
    80001dc4:	02013903          	ld	s2,32(sp)
    80001dc8:	01813983          	ld	s3,24(sp)
    80001dcc:	01013a03          	ld	s4,16(sp)
    80001dd0:	00813a83          	ld	s5,8(sp)
    80001dd4:	04010113          	addi	sp,sp,64
    80001dd8:	00008067          	ret

0000000080001ddc <_Z15kmem_cache_freeP12kmem_cache_sPv>:

void kmem_cache_free(kmem_cache_t *cachep, void *objp)
{
    if(cachep == nullptr || objp == nullptr)
    80001ddc:	04050663          	beqz	a0,80001e28 <_Z15kmem_cache_freeP12kmem_cache_sPv+0x4c>
{
    80001de0:	fe010113          	addi	sp,sp,-32
    80001de4:	00113c23          	sd	ra,24(sp)
    80001de8:	00813823          	sd	s0,16(sp)
    80001dec:	00913423          	sd	s1,8(sp)
    80001df0:	02010413          	addi	s0,sp,32
    80001df4:	00058493          	mv	s1,a1
    if(cachep == nullptr || objp == nullptr)
    80001df8:	00058e63          	beqz	a1,80001e14 <_Z15kmem_cache_freeP12kmem_cache_sPv+0x38>
        return;
    slab_t* slab = findSlab(cachep, objp);
    80001dfc:	00000097          	auipc	ra,0x0
    80001e00:	b34080e7          	jalr	-1228(ra) # 80001930 <_Z8findSlabP12kmem_cache_sPKv>
    if(slab == nullptr) return;
    80001e04:	00050863          	beqz	a0,80001e14 <_Z15kmem_cache_freeP12kmem_cache_sPv+0x38>

    free_slab_object(slab, objp);
    80001e08:	00048593          	mv	a1,s1
    80001e0c:	00000097          	auipc	ra,0x0
    80001e10:	c84080e7          	jalr	-892(ra) # 80001a90 <_Z16free_slab_objectP6slab_sPKv>
}
    80001e14:	01813083          	ld	ra,24(sp)
    80001e18:	01013403          	ld	s0,16(sp)
    80001e1c:	00813483          	ld	s1,8(sp)
    80001e20:	02010113          	addi	sp,sp,32
    80001e24:	00008067          	ret
    80001e28:	00008067          	ret

0000000080001e2c <_Z15kmem_cache_infoP12kmem_cache_s>:

//TODO what needs to be printed
void kmem_cache_info(kmem_cache_t *cachep)
{
    if(cachep == nullptr)
    80001e2c:	14050c63          	beqz	a0,80001f84 <_Z15kmem_cache_infoP12kmem_cache_s+0x158>
{
    80001e30:	fe010113          	addi	sp,sp,-32
    80001e34:	00113c23          	sd	ra,24(sp)
    80001e38:	00813823          	sd	s0,16(sp)
    80001e3c:	00913423          	sd	s1,8(sp)
    80001e40:	01213023          	sd	s2,0(sp)
    80001e44:	02010413          	addi	s0,sp,32
    80001e48:	00050913          	mv	s2,a0
        return;
    KConsole::trapPrintString("\n\n\n\n\n");
    80001e4c:	00006517          	auipc	a0,0x6
    80001e50:	24450513          	addi	a0,a0,580 # 80008090 <CONSOLE_STATUS+0x80>
    80001e54:	00001097          	auipc	ra,0x1
    80001e58:	78c080e7          	jalr	1932(ra) # 800035e0 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Kmem Cache Info-------------------------------------\n");
    80001e5c:	00006517          	auipc	a0,0x6
    80001e60:	23c50513          	addi	a0,a0,572 # 80008098 <CONSOLE_STATUS+0x88>
    80001e64:	00001097          	auipc	ra,0x1
    80001e68:	77c080e7          	jalr	1916(ra) # 800035e0 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Cache Name ");
    80001e6c:	00006517          	auipc	a0,0x6
    80001e70:	26450513          	addi	a0,a0,612 # 800080d0 <CONSOLE_STATUS+0xc0>
    80001e74:	00001097          	auipc	ra,0x1
    80001e78:	76c080e7          	jalr	1900(ra) # 800035e0 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString(cachep->cacheName); KConsole::trapPrintString("\n");
    80001e7c:	00090513          	mv	a0,s2
    80001e80:	00001097          	auipc	ra,0x1
    80001e84:	760080e7          	jalr	1888(ra) # 800035e0 <_ZN8KConsole15trapPrintStringEPKc>
    80001e88:	00006517          	auipc	a0,0x6
    80001e8c:	2f050513          	addi	a0,a0,752 # 80008178 <CONSOLE_STATUS+0x168>
    80001e90:	00001097          	auipc	ra,0x1
    80001e94:	750080e7          	jalr	1872(ra) # 800035e0 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintStringInt("Cache slab size in blocks ", cachep->slab_size);
    80001e98:	00a00613          	li	a2,10
    80001e9c:	05893583          	ld	a1,88(s2)
    80001ea0:	00006517          	auipc	a0,0x6
    80001ea4:	24050513          	addi	a0,a0,576 # 800080e0 <CONSOLE_STATUS+0xd0>
    80001ea8:	00002097          	auipc	ra,0x2
    80001eac:	810080e7          	jalr	-2032(ra) # 800036b8 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Cache obj size in bytes ", cachep->obj_size);
    80001eb0:	00a00613          	li	a2,10
    80001eb4:	06093583          	ld	a1,96(s2)
    80001eb8:	00006517          	auipc	a0,0x6
    80001ebc:	24850513          	addi	a0,a0,584 # 80008100 <CONSOLE_STATUS+0xf0>
    80001ec0:	00001097          	auipc	ra,0x1
    80001ec4:	7f8080e7          	jalr	2040(ra) # 800036b8 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    
    KConsole::trapPrintString("Slabs info-------------------\n");
    80001ec8:	00006517          	auipc	a0,0x6
    80001ecc:	25850513          	addi	a0,a0,600 # 80008120 <CONSOLE_STATUS+0x110>
    80001ed0:	00001097          	auipc	ra,0x1
    80001ed4:	710080e7          	jalr	1808(ra) # 800035e0 <_ZN8KConsole15trapPrintStringEPKc>

    KConsole::trapPrintString("Full slabs\n");
    80001ed8:	00006517          	auipc	a0,0x6
    80001edc:	26850513          	addi	a0,a0,616 # 80008140 <CONSOLE_STATUS+0x130>
    80001ee0:	00001097          	auipc	ra,0x1
    80001ee4:	700080e7          	jalr	1792(ra) # 800035e0 <_ZN8KConsole15trapPrintStringEPKc>
    slab_t* slab = cachep->slabs_full;
    80001ee8:	04893483          	ld	s1,72(s2)
    while(slab != nullptr)
    80001eec:	00048c63          	beqz	s1,80001f04 <_Z15kmem_cache_infoP12kmem_cache_s+0xd8>
    {
        printSlabInfo(slab);
    80001ef0:	00048513          	mv	a0,s1
    80001ef4:	00000097          	auipc	ra,0x0
    80001ef8:	b18080e7          	jalr	-1256(ra) # 80001a0c <_Z13printSlabInfoP6slab_s>
        slab = slab->next;
    80001efc:	0084b483          	ld	s1,8(s1)
    while(slab != nullptr)
    80001f00:	fedff06f          	j	80001eec <_Z15kmem_cache_infoP12kmem_cache_s+0xc0>
    }

    KConsole::trapPrintString("Partial slabs\n");
    80001f04:	00006517          	auipc	a0,0x6
    80001f08:	24c50513          	addi	a0,a0,588 # 80008150 <CONSOLE_STATUS+0x140>
    80001f0c:	00001097          	auipc	ra,0x1
    80001f10:	6d4080e7          	jalr	1748(ra) # 800035e0 <_ZN8KConsole15trapPrintStringEPKc>
    slab = cachep->slabs_partial;
    80001f14:	05093483          	ld	s1,80(s2)
    while(slab != nullptr)
    80001f18:	00048c63          	beqz	s1,80001f30 <_Z15kmem_cache_infoP12kmem_cache_s+0x104>
    {
        printSlabInfo(slab);
    80001f1c:	00048513          	mv	a0,s1
    80001f20:	00000097          	auipc	ra,0x0
    80001f24:	aec080e7          	jalr	-1300(ra) # 80001a0c <_Z13printSlabInfoP6slab_s>
        slab = slab->next;
    80001f28:	0084b483          	ld	s1,8(s1)
    while(slab != nullptr)
    80001f2c:	fedff06f          	j	80001f18 <_Z15kmem_cache_infoP12kmem_cache_s+0xec>
    }

    KConsole::trapPrintString("Empty slabs\n");
    80001f30:	00006517          	auipc	a0,0x6
    80001f34:	23050513          	addi	a0,a0,560 # 80008160 <CONSOLE_STATUS+0x150>
    80001f38:	00001097          	auipc	ra,0x1
    80001f3c:	6a8080e7          	jalr	1704(ra) # 800035e0 <_ZN8KConsole15trapPrintStringEPKc>
    slab = cachep->slabs_empty;
    80001f40:	04093483          	ld	s1,64(s2)
    while(slab != nullptr)
    80001f44:	00048c63          	beqz	s1,80001f5c <_Z15kmem_cache_infoP12kmem_cache_s+0x130>
    {
        printSlabInfo(slab);
    80001f48:	00048513          	mv	a0,s1
    80001f4c:	00000097          	auipc	ra,0x0
    80001f50:	ac0080e7          	jalr	-1344(ra) # 80001a0c <_Z13printSlabInfoP6slab_s>
        slab = slab->next;
    80001f54:	0084b483          	ld	s1,8(s1)
    while(slab != nullptr)
    80001f58:	fedff06f          	j	80001f44 <_Z15kmem_cache_infoP12kmem_cache_s+0x118>
    }

    KConsole::trapPrintString("\n\n\n\n\n");
    80001f5c:	00006517          	auipc	a0,0x6
    80001f60:	13450513          	addi	a0,a0,308 # 80008090 <CONSOLE_STATUS+0x80>
    80001f64:	00001097          	auipc	ra,0x1
    80001f68:	67c080e7          	jalr	1660(ra) # 800035e0 <_ZN8KConsole15trapPrintStringEPKc>
}
    80001f6c:	01813083          	ld	ra,24(sp)
    80001f70:	01013403          	ld	s0,16(sp)
    80001f74:	00813483          	ld	s1,8(sp)
    80001f78:	00013903          	ld	s2,0(sp)
    80001f7c:	02010113          	addi	sp,sp,32
    80001f80:	00008067          	ret
    80001f84:	00008067          	ret

0000000080001f88 <_Z22printSlabAllocatorInfov>:
{
    80001f88:	fe010113          	addi	sp,sp,-32
    80001f8c:	00113c23          	sd	ra,24(sp)
    80001f90:	00813823          	sd	s0,16(sp)
    80001f94:	00913423          	sd	s1,8(sp)
    80001f98:	02010413          	addi	s0,sp,32
    KConsole::trapPrintString("\n\n\n\n\n\n\n\n\n");
    80001f9c:	00006517          	auipc	a0,0x6
    80001fa0:	1d450513          	addi	a0,a0,468 # 80008170 <CONSOLE_STATUS+0x160>
    80001fa4:	00001097          	auipc	ra,0x1
    80001fa8:	63c080e7          	jalr	1596(ra) # 800035e0 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Slab allocator info----------------------------------------------------------\n");
    80001fac:	00006517          	auipc	a0,0x6
    80001fb0:	1d450513          	addi	a0,a0,468 # 80008180 <CONSOLE_STATUS+0x170>
    80001fb4:	00001097          	auipc	ra,0x1
    80001fb8:	62c080e7          	jalr	1580(ra) # 800035e0 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintStringInt("Slab allocator address ", (size_t)slabAllocator, 16);
    80001fbc:	00007497          	auipc	s1,0x7
    80001fc0:	a1448493          	addi	s1,s1,-1516 # 800089d0 <_ZL13slabAllocator>
    80001fc4:	01000613          	li	a2,16
    80001fc8:	0004b583          	ld	a1,0(s1)
    80001fcc:	00006517          	auipc	a0,0x6
    80001fd0:	20450513          	addi	a0,a0,516 # 800081d0 <CONSOLE_STATUS+0x1c0>
    80001fd4:	00001097          	auipc	ra,0x1
    80001fd8:	6e4080e7          	jalr	1764(ra) # 800036b8 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintString("Cache of caches info\n");
    80001fdc:	00006517          	auipc	a0,0x6
    80001fe0:	20c50513          	addi	a0,a0,524 # 800081e8 <CONSOLE_STATUS+0x1d8>
    80001fe4:	00001097          	auipc	ra,0x1
    80001fe8:	5fc080e7          	jalr	1532(ra) # 800035e0 <_ZN8KConsole15trapPrintStringEPKc>
    kmem_cache_info(&slabAllocator->cacheOfCaches);
    80001fec:	0004b503          	ld	a0,0(s1)
    80001ff0:	06850513          	addi	a0,a0,104
    80001ff4:	00000097          	auipc	ra,0x0
    80001ff8:	e38080e7          	jalr	-456(ra) # 80001e2c <_Z15kmem_cache_infoP12kmem_cache_s>
    KConsole::trapPrintString("Caches for buffers\n");
    80001ffc:	00006517          	auipc	a0,0x6
    80002000:	20450513          	addi	a0,a0,516 # 80008200 <CONSOLE_STATUS+0x1f0>
    80002004:	00001097          	auipc	ra,0x1
    80002008:	5dc080e7          	jalr	1500(ra) # 800035e0 <_ZN8KConsole15trapPrintStringEPKc>
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    8000200c:	00000493          	li	s1,0
    80002010:	0100006f          	j	80002020 <_Z22printSlabAllocatorInfov+0x98>
            kmem_cache_info(slabAllocator->cachesBuffers[i]);
    80002014:	00000097          	auipc	ra,0x0
    80002018:	e18080e7          	jalr	-488(ra) # 80001e2c <_Z15kmem_cache_infoP12kmem_cache_s>
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    8000201c:	00148493          	addi	s1,s1,1
    80002020:	00c00793          	li	a5,12
    80002024:	0297e063          	bltu	a5,s1,80002044 <_Z22printSlabAllocatorInfov+0xbc>
        if(slabAllocator->cachesBuffers[i] != nullptr)
    80002028:	00349793          	slli	a5,s1,0x3
    8000202c:	00007717          	auipc	a4,0x7
    80002030:	9a473703          	ld	a4,-1628(a4) # 800089d0 <_ZL13slabAllocator>
    80002034:	00f707b3          	add	a5,a4,a5
    80002038:	0007b503          	ld	a0,0(a5)
    8000203c:	fc051ce3          	bnez	a0,80002014 <_Z22printSlabAllocatorInfov+0x8c>
    80002040:	fddff06f          	j	8000201c <_Z22printSlabAllocatorInfov+0x94>
    KConsole::trapPrintString("\n\n\n\n\n\n\n\n\n");
    80002044:	00006517          	auipc	a0,0x6
    80002048:	12c50513          	addi	a0,a0,300 # 80008170 <CONSOLE_STATUS+0x160>
    8000204c:	00001097          	auipc	ra,0x1
    80002050:	594080e7          	jalr	1428(ra) # 800035e0 <_ZN8KConsole15trapPrintStringEPKc>
    printBuddyInfo();
    80002054:	00001097          	auipc	ra,0x1
    80002058:	f50080e7          	jalr	-176(ra) # 80002fa4 <_Z14printBuddyInfov>
}
    8000205c:	01813083          	ld	ra,24(sp)
    80002060:	01013403          	ld	s0,16(sp)
    80002064:	00813483          	ld	s1,8(sp)
    80002068:	02010113          	addi	sp,sp,32
    8000206c:	00008067          	ret

0000000080002070 <_Z7kmallocm>:

void *kmalloc(size_t size)
{
    80002070:	fd010113          	addi	sp,sp,-48
    80002074:	02113423          	sd	ra,40(sp)
    80002078:	02813023          	sd	s0,32(sp)
    8000207c:	00913c23          	sd	s1,24(sp)
    80002080:	01213823          	sd	s2,16(sp)
    80002084:	01313423          	sd	s3,8(sp)
    80002088:	03010413          	addi	s0,sp,48
    size_t level = getDeg2Ceil(size);
    8000208c:	00001097          	auipc	ra,0x1
    80002090:	a40080e7          	jalr	-1472(ra) # 80002acc <_Z11getDeg2Ceilm>
    if(level < CACHE_BUFFER_SMALL)
    80002094:	00400793          	li	a5,4
    80002098:	00a7fa63          	bgeu	a5,a0,800020ac <_Z7kmallocm+0x3c>
        level = CACHE_BUFFER_SMALL;
    if(level > CACHE_BUFFER_BIG)
    8000209c:	01100793          	li	a5,17
    800020a0:	00a7f863          	bgeu	a5,a0,800020b0 <_Z7kmallocm+0x40>
        return nullptr;
    800020a4:	00000913          	li	s2,0
    800020a8:	04c0006f          	j	800020f4 <_Z7kmallocm+0x84>
        level = CACHE_BUFFER_SMALL;
    800020ac:	00500513          	li	a0,5
    size = (1 << level);
    800020b0:	00100693          	li	a3,1
    800020b4:	00a699bb          	sllw	s3,a3,a0
    size_t index = level - CACHE_BUFFER_SMALL;
    800020b8:	ffb50493          	addi	s1,a0,-5
    if(slabAllocator->cachesBuffers[index] == nullptr)
    800020bc:	00007917          	auipc	s2,0x7
    800020c0:	91493903          	ld	s2,-1772(s2) # 800089d0 <_ZL13slabAllocator>
    800020c4:	00349793          	slli	a5,s1,0x3
    800020c8:	00f907b3          	add	a5,s2,a5
    800020cc:	0007b783          	ld	a5,0(a5)
    800020d0:	04078263          	beqz	a5,80002114 <_Z7kmallocm+0xa4>
        if(slabAllocator->cachesBuffers[index] == nullptr)
            return nullptr;
        init_cache(slabAllocator->cachesBuffers[index], "Cache for small buffers", getOptimalSlabSize(size), size, nullptr,nullptr);
    }

    return kmem_cache_alloc(slabAllocator->cachesBuffers[index]);
    800020d4:	00349513          	slli	a0,s1,0x3
    800020d8:	00007497          	auipc	s1,0x7
    800020dc:	8f84b483          	ld	s1,-1800(s1) # 800089d0 <_ZL13slabAllocator>
    800020e0:	00a48533          	add	a0,s1,a0
    800020e4:	00053503          	ld	a0,0(a0)
    800020e8:	00000097          	auipc	ra,0x0
    800020ec:	b18080e7          	jalr	-1256(ra) # 80001c00 <_Z16kmem_cache_allocP12kmem_cache_s>
    800020f0:	00050913          	mv	s2,a0
}
    800020f4:	00090513          	mv	a0,s2
    800020f8:	02813083          	ld	ra,40(sp)
    800020fc:	02013403          	ld	s0,32(sp)
    80002100:	01813483          	ld	s1,24(sp)
    80002104:	01013903          	ld	s2,16(sp)
    80002108:	00813983          	ld	s3,8(sp)
    8000210c:	03010113          	addi	sp,sp,48
    80002110:	00008067          	ret
        slabAllocator->cachesBuffers[index] = (kmem_cache_t*)kmem_cache_alloc(&slabAllocator->cacheOfCaches);
    80002114:	06890513          	addi	a0,s2,104
    80002118:	00000097          	auipc	ra,0x0
    8000211c:	ae8080e7          	jalr	-1304(ra) # 80001c00 <_Z16kmem_cache_allocP12kmem_cache_s>
    80002120:	00349713          	slli	a4,s1,0x3
    80002124:	00e90933          	add	s2,s2,a4
    80002128:	00a93023          	sd	a0,0(s2)
        if(slabAllocator->cachesBuffers[index] == nullptr)
    8000212c:	00007797          	auipc	a5,0x7
    80002130:	8a47b783          	ld	a5,-1884(a5) # 800089d0 <_ZL13slabAllocator>
    80002134:	00e787b3          	add	a5,a5,a4
    80002138:	0007b903          	ld	s2,0(a5)
    8000213c:	fa090ce3          	beqz	s2,800020f4 <_Z7kmallocm+0x84>
        init_cache(slabAllocator->cachesBuffers[index], "Cache for small buffers", getOptimalSlabSize(size), size, nullptr,nullptr);
    80002140:	00098513          	mv	a0,s3
    80002144:	fffff097          	auipc	ra,0xfffff
    80002148:	774080e7          	jalr	1908(ra) # 800018b8 <_Z18getOptimalSlabSizem>
    8000214c:	00050613          	mv	a2,a0
    80002150:	00000793          	li	a5,0
    80002154:	00000713          	li	a4,0
    80002158:	00098693          	mv	a3,s3
    8000215c:	00006597          	auipc	a1,0x6
    80002160:	0bc58593          	addi	a1,a1,188 # 80008218 <CONSOLE_STATUS+0x208>
    80002164:	00090513          	mv	a0,s2
    80002168:	fffff097          	auipc	ra,0xfffff
    8000216c:	1f8080e7          	jalr	504(ra) # 80001360 <_Z10init_cacheP12kmem_cache_sPKcmmPFvPvES5_>
    80002170:	f65ff06f          	j	800020d4 <_Z7kmallocm+0x64>

0000000080002174 <_Z5kfreePKv>:

void kfree(const void *objp)
{
    if(objp == nullptr)
    80002174:	0a050263          	beqz	a0,80002218 <_Z5kfreePKv+0xa4>
{
    80002178:	fd010113          	addi	sp,sp,-48
    8000217c:	02113423          	sd	ra,40(sp)
    80002180:	02813023          	sd	s0,32(sp)
    80002184:	00913c23          	sd	s1,24(sp)
    80002188:	01213823          	sd	s2,16(sp)
    8000218c:	01313423          	sd	s3,8(sp)
    80002190:	03010413          	addi	s0,sp,48
    80002194:	00050993          	mv	s3,a0
        return;
    slab_t* slab = nullptr;
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    80002198:	00000913          	li	s2,0
    slab_t* slab = nullptr;
    8000219c:	00000493          	li	s1,0
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    800021a0:	00c00793          	li	a5,12
    800021a4:	0327ea63          	bltu	a5,s2,800021d8 <_Z5kfreePKv+0x64>
    {
        slab = findSlab(slabAllocator->cachesBuffers[i], objp);
    800021a8:	00391793          	slli	a5,s2,0x3
    800021ac:	00007717          	auipc	a4,0x7
    800021b0:	82473703          	ld	a4,-2012(a4) # 800089d0 <_ZL13slabAllocator>
    800021b4:	00f707b3          	add	a5,a4,a5
    800021b8:	00098593          	mv	a1,s3
    800021bc:	0007b503          	ld	a0,0(a5)
    800021c0:	fffff097          	auipc	ra,0xfffff
    800021c4:	770080e7          	jalr	1904(ra) # 80001930 <_Z8findSlabP12kmem_cache_sPKv>
    800021c8:	00050493          	mv	s1,a0
        if(slab != nullptr) break;
    800021cc:	00051663          	bnez	a0,800021d8 <_Z5kfreePKv+0x64>
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    800021d0:	00190913          	addi	s2,s2,1
    800021d4:	fcdff06f          	j	800021a0 <_Z5kfreePKv+0x2c>
    }
    if(slab != nullptr)
    800021d8:	02048263          	beqz	s1,800021fc <_Z5kfreePKv+0x88>
    {
        free_slab_object(slab, objp);
    800021dc:	00098593          	mv	a1,s3
    800021e0:	00048513          	mv	a0,s1
    800021e4:	00000097          	auipc	ra,0x0
    800021e8:	8ac080e7          	jalr	-1876(ra) # 80001a90 <_Z16free_slab_objectP6slab_sPKv>
        destroy_slab_list(&(slab->owner->slabs_empty));
    800021ec:	0104b503          	ld	a0,16(s1)
    800021f0:	04050513          	addi	a0,a0,64
    800021f4:	fffff097          	auipc	ra,0xfffff
    800021f8:	0e8080e7          	jalr	232(ra) # 800012dc <_Z17destroy_slab_listPP6slab_s>
    }
}
    800021fc:	02813083          	ld	ra,40(sp)
    80002200:	02013403          	ld	s0,32(sp)
    80002204:	01813483          	ld	s1,24(sp)
    80002208:	01013903          	ld	s2,16(sp)
    8000220c:	00813983          	ld	s3,8(sp)
    80002210:	03010113          	addi	sp,sp,48
    80002214:	00008067          	ret
    80002218:	00008067          	ret

000000008000221c <_Z18kmem_cache_destroyP12kmem_cache_s>:

void kmem_cache_destroy(kmem_cache_t *cachep)
{
    8000221c:	fe010113          	addi	sp,sp,-32
    80002220:	00113c23          	sd	ra,24(sp)
    80002224:	00813823          	sd	s0,16(sp)
    80002228:	00913423          	sd	s1,8(sp)
    8000222c:	02010413          	addi	s0,sp,32
    80002230:	00050493          	mv	s1,a0
    if(cachep->slabs_partial != nullptr || cachep->slabs_full != nullptr) {
    80002234:	05053783          	ld	a5,80(a0)
    80002238:	02078263          	beqz	a5,8000225c <_Z18kmem_cache_destroyP12kmem_cache_s+0x40>
        cachep->errors |= DESTROY_ERROR;
    8000223c:	0784a783          	lw	a5,120(s1)
    80002240:	0027e793          	ori	a5,a5,2
    80002244:	06f4ac23          	sw	a5,120(s1)
    }
    destroy_slab_list(&cachep->slabs_empty);
    destroy_slab_list(&cachep->slabs_partial);
    destroy_slab_list(&cachep->slabs_full);
    kmem_cache_free(&slabAllocator->cacheOfCaches,cachep);
}
    80002248:	01813083          	ld	ra,24(sp)
    8000224c:	01013403          	ld	s0,16(sp)
    80002250:	00813483          	ld	s1,8(sp)
    80002254:	02010113          	addi	sp,sp,32
    80002258:	00008067          	ret
    if(cachep->slabs_partial != nullptr || cachep->slabs_full != nullptr) {
    8000225c:	04853783          	ld	a5,72(a0)
    80002260:	fc079ee3          	bnez	a5,8000223c <_Z18kmem_cache_destroyP12kmem_cache_s+0x20>
    destroy_slab_list(&cachep->slabs_empty);
    80002264:	04050513          	addi	a0,a0,64
    80002268:	fffff097          	auipc	ra,0xfffff
    8000226c:	074080e7          	jalr	116(ra) # 800012dc <_Z17destroy_slab_listPP6slab_s>
    destroy_slab_list(&cachep->slabs_partial);
    80002270:	05048513          	addi	a0,s1,80
    80002274:	fffff097          	auipc	ra,0xfffff
    80002278:	068080e7          	jalr	104(ra) # 800012dc <_Z17destroy_slab_listPP6slab_s>
    destroy_slab_list(&cachep->slabs_full);
    8000227c:	04848513          	addi	a0,s1,72
    80002280:	fffff097          	auipc	ra,0xfffff
    80002284:	05c080e7          	jalr	92(ra) # 800012dc <_Z17destroy_slab_listPP6slab_s>
    kmem_cache_free(&slabAllocator->cacheOfCaches,cachep);
    80002288:	00048593          	mv	a1,s1
    8000228c:	00006517          	auipc	a0,0x6
    80002290:	74453503          	ld	a0,1860(a0) # 800089d0 <_ZL13slabAllocator>
    80002294:	06850513          	addi	a0,a0,104
    80002298:	00000097          	auipc	ra,0x0
    8000229c:	b44080e7          	jalr	-1212(ra) # 80001ddc <_Z15kmem_cache_freeP12kmem_cache_sPv>
    800022a0:	fa9ff06f          	j	80002248 <_Z18kmem_cache_destroyP12kmem_cache_s+0x2c>

00000000800022a4 <_Z17kmem_cache_shrinkP12kmem_cache_s>:

int kmem_cache_shrink(kmem_cache_t *cachep)
{
    if(cachep == nullptr)
    800022a4:	02050863          	beqz	a0,800022d4 <_Z17kmem_cache_shrinkP12kmem_cache_s+0x30>
{
    800022a8:	ff010113          	addi	sp,sp,-16
    800022ac:	00113423          	sd	ra,8(sp)
    800022b0:	00813023          	sd	s0,0(sp)
    800022b4:	01010413          	addi	s0,sp,16
        return 0;
    int totalBlocks = destroy_slab_list(&cachep->slabs_empty);
    800022b8:	04050513          	addi	a0,a0,64
    800022bc:	fffff097          	auipc	ra,0xfffff
    800022c0:	020080e7          	jalr	32(ra) # 800012dc <_Z17destroy_slab_listPP6slab_s>
    return totalBlocks;
}
    800022c4:	00813083          	ld	ra,8(sp)
    800022c8:	00013403          	ld	s0,0(sp)
    800022cc:	01010113          	addi	sp,sp,16
    800022d0:	00008067          	ret
        return 0;
    800022d4:	00000513          	li	a0,0
}
    800022d8:	00008067          	ret

00000000800022dc <_Z21shrink_caches_on_slabP6slab_s>:
{
    800022dc:	fe010113          	addi	sp,sp,-32
    800022e0:	00113c23          	sd	ra,24(sp)
    800022e4:	00813823          	sd	s0,16(sp)
    800022e8:	00913423          	sd	s1,8(sp)
    800022ec:	01213023          	sd	s2,0(sp)
    800022f0:	02010413          	addi	s0,sp,32
    800022f4:	00050913          	mv	s2,a0
    for(size_t i = 0; i < slab->numOfObjects;i++)
    800022f8:	00000493          	li	s1,0
    800022fc:	0240006f          	j	80002320 <_Z21shrink_caches_on_slabP6slab_s+0x44>
            void* addr = (void*)((size_t)slab + sizeof(slab) + i*slab->owner->obj_size);
    80002300:	01093783          	ld	a5,16(s2)
    80002304:	0607b503          	ld	a0,96(a5)
    80002308:	02950533          	mul	a0,a0,s1
    8000230c:	00a90533          	add	a0,s2,a0
            kmem_cache_shrink((kmem_cache_t*)addr);
    80002310:	00850513          	addi	a0,a0,8
    80002314:	00000097          	auipc	ra,0x0
    80002318:	f90080e7          	jalr	-112(ra) # 800022a4 <_Z17kmem_cache_shrinkP12kmem_cache_s>
    for(size_t i = 0; i < slab->numOfObjects;i++)
    8000231c:	00148493          	addi	s1,s1,1
    80002320:	01893783          	ld	a5,24(s2)
    80002324:	00f4fe63          	bgeu	s1,a5,80002340 <_Z21shrink_caches_on_slabP6slab_s+0x64>
        if(checkSetIndex(slab, i))
    80002328:	0004859b          	sext.w	a1,s1
    8000232c:	00090513          	mv	a0,s2
    80002330:	fffff097          	auipc	ra,0xfffff
    80002334:	130080e7          	jalr	304(ra) # 80001460 <_Z13checkSetIndexP6slab_si>
    80002338:	fe0502e3          	beqz	a0,8000231c <_Z21shrink_caches_on_slabP6slab_s+0x40>
    8000233c:	fc5ff06f          	j	80002300 <_Z21shrink_caches_on_slabP6slab_s+0x24>
}
    80002340:	01813083          	ld	ra,24(sp)
    80002344:	01013403          	ld	s0,16(sp)
    80002348:	00813483          	ld	s1,8(sp)
    8000234c:	00013903          	ld	s2,0(sp)
    80002350:	02010113          	addi	sp,sp,32
    80002354:	00008067          	ret

0000000080002358 <_Z17shrink_all_cachesv>:
{
    80002358:	fd010113          	addi	sp,sp,-48
    8000235c:	02113423          	sd	ra,40(sp)
    80002360:	02813023          	sd	s0,32(sp)
    80002364:	00913c23          	sd	s1,24(sp)
    80002368:	01213823          	sd	s2,16(sp)
    8000236c:	01313423          	sd	s3,8(sp)
    80002370:	03010413          	addi	s0,sp,48
    kmem_cache_t* cacheOfCaches = &slabAllocator->cacheOfCaches;
    80002374:	00006917          	auipc	s2,0x6
    80002378:	65c93903          	ld	s2,1628(s2) # 800089d0 <_ZL13slabAllocator>
    8000237c:	06890993          	addi	s3,s2,104
    slab_t* slab = cacheOfCaches->slabs_full;
    80002380:	0b093483          	ld	s1,176(s2)
    while(slab != nullptr)
    80002384:	00048c63          	beqz	s1,8000239c <_Z17shrink_all_cachesv+0x44>
        shrink_caches_on_slab(slab);
    80002388:	00048513          	mv	a0,s1
    8000238c:	00000097          	auipc	ra,0x0
    80002390:	f50080e7          	jalr	-176(ra) # 800022dc <_Z21shrink_caches_on_slabP6slab_s>
        slab = slab->next;
    80002394:	0084b483          	ld	s1,8(s1)
    while(slab != nullptr)
    80002398:	fedff06f          	j	80002384 <_Z17shrink_all_cachesv+0x2c>
    slab = cacheOfCaches->slabs_partial;
    8000239c:	0b893483          	ld	s1,184(s2)
    while(slab != nullptr)
    800023a0:	00048c63          	beqz	s1,800023b8 <_Z17shrink_all_cachesv+0x60>
        shrink_caches_on_slab(slab);
    800023a4:	00048513          	mv	a0,s1
    800023a8:	00000097          	auipc	ra,0x0
    800023ac:	f34080e7          	jalr	-204(ra) # 800022dc <_Z21shrink_caches_on_slabP6slab_s>
        slab = slab->next;
    800023b0:	0084b483          	ld	s1,8(s1)
    while(slab != nullptr)
    800023b4:	fedff06f          	j	800023a0 <_Z17shrink_all_cachesv+0x48>
    kmem_cache_shrink(cacheOfCaches);
    800023b8:	00098513          	mv	a0,s3
    800023bc:	00000097          	auipc	ra,0x0
    800023c0:	ee8080e7          	jalr	-280(ra) # 800022a4 <_Z17kmem_cache_shrinkP12kmem_cache_s>
}
    800023c4:	02813083          	ld	ra,40(sp)
    800023c8:	02013403          	ld	s0,32(sp)
    800023cc:	01813483          	ld	s1,24(sp)
    800023d0:	01013903          	ld	s2,16(sp)
    800023d4:	00813983          	ld	s3,8(sp)
    800023d8:	03010113          	addi	sp,sp,48
    800023dc:	00008067          	ret

00000000800023e0 <_Z16kmem_cache_errorP12kmem_cache_s>:

int kmem_cache_error(kmem_cache_t *cachep)
{
    if(cachep == nullptr)
    800023e0:	06050c63          	beqz	a0,80002458 <_Z16kmem_cache_errorP12kmem_cache_s+0x78>
{
    800023e4:	fe010113          	addi	sp,sp,-32
    800023e8:	00113c23          	sd	ra,24(sp)
    800023ec:	00813823          	sd	s0,16(sp)
    800023f0:	00913423          	sd	s1,8(sp)
    800023f4:	02010413          	addi	s0,sp,32
    800023f8:	00050493          	mv	s1,a0
        return 0;

    if(cachep->errors & EXPAND_ERROR)
    800023fc:	07852783          	lw	a5,120(a0)
    80002400:	0017f793          	andi	a5,a5,1
    80002404:	02079663          	bnez	a5,80002430 <_Z16kmem_cache_errorP12kmem_cache_s+0x50>
        KConsole::trapPrintString("EXPAND ERROR\n");
    if(cachep->errors & DESTROY_ERROR)
    80002408:	0784a783          	lw	a5,120(s1)
    8000240c:	0027f793          	andi	a5,a5,2
    80002410:	02079a63          	bnez	a5,80002444 <_Z16kmem_cache_errorP12kmem_cache_s+0x64>
        KConsole::trapPrintString("DESTROY ERROR");

    cachep->errors = NO_ERROR;
    80002414:	0604ac23          	sw	zero,120(s1)

    return cachep->errors;
}
    80002418:	00000513          	li	a0,0
    8000241c:	01813083          	ld	ra,24(sp)
    80002420:	01013403          	ld	s0,16(sp)
    80002424:	00813483          	ld	s1,8(sp)
    80002428:	02010113          	addi	sp,sp,32
    8000242c:	00008067          	ret
        KConsole::trapPrintString("EXPAND ERROR\n");
    80002430:	00006517          	auipc	a0,0x6
    80002434:	e0050513          	addi	a0,a0,-512 # 80008230 <CONSOLE_STATUS+0x220>
    80002438:	00001097          	auipc	ra,0x1
    8000243c:	1a8080e7          	jalr	424(ra) # 800035e0 <_ZN8KConsole15trapPrintStringEPKc>
    80002440:	fc9ff06f          	j	80002408 <_Z16kmem_cache_errorP12kmem_cache_s+0x28>
        KConsole::trapPrintString("DESTROY ERROR");
    80002444:	00006517          	auipc	a0,0x6
    80002448:	dfc50513          	addi	a0,a0,-516 # 80008240 <CONSOLE_STATUS+0x230>
    8000244c:	00001097          	auipc	ra,0x1
    80002450:	194080e7          	jalr	404(ra) # 800035e0 <_ZN8KConsole15trapPrintStringEPKc>
    80002454:	fc1ff06f          	j	80002414 <_Z16kmem_cache_errorP12kmem_cache_s+0x34>
}
    80002458:	00000513          	li	a0,0
    8000245c:	00008067          	ret

0000000080002460 <_ZN3PCB6runnerEv>:
{
    Scheduler::put(this);
}

void PCB::runner()
{
    80002460:	ff010113          	addi	sp,sp,-16
    80002464:	00113423          	sd	ra,8(sp)
    80002468:	00813023          	sd	s0,0(sp)
    8000246c:	01010413          	addi	s0,sp,16
    Riscv::popSppSpie();
    80002470:	00002097          	auipc	ra,0x2
    80002474:	8e0080e7          	jalr	-1824(ra) # 80003d50 <_ZN5Riscv10popSppSpieEv>
    running->body(running->args);
    80002478:	00006797          	auipc	a5,0x6
    8000247c:	5607b783          	ld	a5,1376(a5) # 800089d8 <_ZN3PCB7runningE>
    80002480:	0287b703          	ld	a4,40(a5)
    80002484:	0307b503          	ld	a0,48(a5)
    80002488:	000700e7          	jalr	a4

    thread_exit_kernel();
    8000248c:	fffff097          	auipc	ra,0xfffff
    80002490:	df4080e7          	jalr	-524(ra) # 80001280 <_Z18thread_exit_kernelv>
}
    80002494:	00813083          	ld	ra,8(sp)
    80002498:	00013403          	ld	s0,0(sp)
    8000249c:	01010113          	addi	sp,sp,16
    800024a0:	00008067          	ret

00000000800024a4 <_ZN3PCBC1EPFvPvES0_S0_m>:
PCB::PCB(Body body, void *args, void* stack_space, uint64 timeSlice) :
    800024a4:	ff010113          	addi	sp,sp,-16
    800024a8:	00813423          	sd	s0,8(sp)
    800024ac:	01010413          	addi	s0,sp,16
    })
    800024b0:	00050023          	sb	zero,0(a0)
    800024b4:	00e53c23          	sd	a4,24(a0)
    800024b8:	02053023          	sd	zero,32(a0)
    800024bc:	02b53423          	sd	a1,40(a0)
    800024c0:	02c53823          	sd	a2,48(a0)
    800024c4:	02d53c23          	sd	a3,56(a0)
        (uint64)((char*)stack_space + DEFAULT_STACK_SIZE),
    800024c8:	000017b7          	lui	a5,0x1
    800024cc:	00f686b3          	add	a3,a3,a5
    })
    800024d0:	04d53423          	sd	a3,72(a0)
    800024d4:	00000797          	auipc	a5,0x0
    800024d8:	f8c78793          	addi	a5,a5,-116 # 80002460 <_ZN3PCB6runnerEv>
    800024dc:	04f53823          	sd	a5,80(a0)
    800024e0:	04050c23          	sb	zero,88(a0)
    nextPCB = 0;
    800024e4:	00053423          	sd	zero,8(a0)
}
    800024e8:	00813403          	ld	s0,8(sp)
    800024ec:	01010113          	addi	sp,sp,16
    800024f0:	00008067          	ret

00000000800024f4 <_ZN3PCB5startEv>:
{
    800024f4:	ff010113          	addi	sp,sp,-16
    800024f8:	00113423          	sd	ra,8(sp)
    800024fc:	00813023          	sd	s0,0(sp)
    80002500:	01010413          	addi	s0,sp,16
    Scheduler::put(this);
    80002504:	00001097          	auipc	ra,0x1
    80002508:	394080e7          	jalr	916(ra) # 80003898 <_ZN9Scheduler3putEP3PCB>
}
    8000250c:	00813083          	ld	ra,8(sp)
    80002510:	00013403          	ld	s0,0(sp)
    80002514:	01010113          	addi	sp,sp,16
    80002518:	00008067          	ret

000000008000251c <_ZN3PCB8dispatchEv>:

void PCB::dispatch()
{
    8000251c:	fe010113          	addi	sp,sp,-32
    80002520:	00113c23          	sd	ra,24(sp)
    80002524:	00813823          	sd	s0,16(sp)
    80002528:	00913423          	sd	s1,8(sp)
    8000252c:	01213023          	sd	s2,0(sp)
    80002530:	02010413          	addi	s0,sp,32
    PCB* old = running;
    80002534:	00006497          	auipc	s1,0x6
    80002538:	4a44b483          	ld	s1,1188(s1) # 800089d8 <_ZN3PCB7runningE>

    void* operator new(size_t size);
    void operator delete(void *p);

    enum State{READY, RUNNING, SUSPENDED, FINISHED, EXITING, SLEEPING};
    State getState() {return state;}
    8000253c:	0404a703          	lw	a4,64(s1)
    if(old->getState() == PCB::RUNNING)
    80002540:	00100793          	li	a5,1
    80002544:	04f70a63          	beq	a4,a5,80002598 <_ZN3PCB8dispatchEv+0x7c>
        Scheduler::put(old);

    PCB::running = Scheduler::get();
    80002548:	00001097          	auipc	ra,0x1
    8000254c:	3a4080e7          	jalr	932(ra) # 800038ec <_ZN9Scheduler3getEv>
    80002550:	00006917          	auipc	s2,0x6
    80002554:	48890913          	addi	s2,s2,1160 # 800089d8 <_ZN3PCB7runningE>
    80002558:	00a93023          	sd	a0,0(s2)
    void setState(State s) {state = s;}
    8000255c:	00100793          	li	a5,1
    80002560:	04f52023          	sw	a5,64(a0)
    PCB::running->setState(PCB::RUNNING);

    Riscv::changePrivMode();
    80002564:	00002097          	auipc	ra,0x2
    80002568:	da4080e7          	jalr	-604(ra) # 80004308 <_ZN5Riscv14changePrivModeEv>

    PCB::contextSwitch(&old->context, &running->context);
    8000256c:	00093583          	ld	a1,0(s2)
    80002570:	04858593          	addi	a1,a1,72
    80002574:	04848513          	addi	a0,s1,72
    80002578:	fffff097          	auipc	ra,0xfffff
    8000257c:	ca0080e7          	jalr	-864(ra) # 80001218 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
}
    80002580:	01813083          	ld	ra,24(sp)
    80002584:	01013403          	ld	s0,16(sp)
    80002588:	00813483          	ld	s1,8(sp)
    8000258c:	00013903          	ld	s2,0(sp)
    80002590:	02010113          	addi	sp,sp,32
    80002594:	00008067          	ret
        Scheduler::put(old);
    80002598:	00048513          	mv	a0,s1
    8000259c:	00001097          	auipc	ra,0x1
    800025a0:	2fc080e7          	jalr	764(ra) # 80003898 <_ZN9Scheduler3putEP3PCB>
    800025a4:	fa5ff06f          	j	80002548 <_ZN3PCB8dispatchEv+0x2c>

00000000800025a8 <_ZN3PCBnwEm>:

void *PCB::operator new(size_t size) {
    800025a8:	ff010113          	addi	sp,sp,-16
    800025ac:	00113423          	sd	ra,8(sp)
    800025b0:	00813023          	sd	s0,0(sp)
    800025b4:	01010413          	addi	s0,sp,16
    return kmem_cache_alloc(Riscv::pcbCache);
    800025b8:	00006797          	auipc	a5,0x6
    800025bc:	3b07b783          	ld	a5,944(a5) # 80008968 <_GLOBAL_OFFSET_TABLE_+0xa0>
    800025c0:	0007b503          	ld	a0,0(a5)
    800025c4:	fffff097          	auipc	ra,0xfffff
    800025c8:	63c080e7          	jalr	1596(ra) # 80001c00 <_Z16kmem_cache_allocP12kmem_cache_s>
    //return MemoryAllocator::kmalloc(size);
}
    800025cc:	00813083          	ld	ra,8(sp)
    800025d0:	00013403          	ld	s0,0(sp)
    800025d4:	01010113          	addi	sp,sp,16
    800025d8:	00008067          	ret

00000000800025dc <_ZN3PCBdlEPv>:

void PCB::operator delete(void *p) {
    800025dc:	ff010113          	addi	sp,sp,-16
    800025e0:	00113423          	sd	ra,8(sp)
    800025e4:	00813023          	sd	s0,0(sp)
    800025e8:	01010413          	addi	s0,sp,16
    800025ec:	00050593          	mv	a1,a0
    kmem_cache_free(Riscv::pcbCache, p);
    800025f0:	00006797          	auipc	a5,0x6
    800025f4:	3787b783          	ld	a5,888(a5) # 80008968 <_GLOBAL_OFFSET_TABLE_+0xa0>
    800025f8:	0007b503          	ld	a0,0(a5)
    800025fc:	fffff097          	auipc	ra,0xfffff
    80002600:	7e0080e7          	jalr	2016(ra) # 80001ddc <_Z15kmem_cache_freeP12kmem_cache_sPv>
    //MemoryAllocator::kfree(p);
}
    80002604:	00813083          	ld	ra,8(sp)
    80002608:	00013403          	ld	s0,0(sp)
    8000260c:	01010113          	addi	sp,sp,16
    80002610:	00008067          	ret

0000000080002614 <_ZN3PCBD1Ev>:

PCB::~PCB()
    80002614:	ff010113          	addi	sp,sp,-16
    80002618:	00113423          	sd	ra,8(sp)
    8000261c:	00813023          	sd	s0,0(sp)
    80002620:	01010413          	addi	s0,sp,16
{
    MemoryAllocator::kfree(beginSP);
    80002624:	03853503          	ld	a0,56(a0)
    80002628:	00002097          	auipc	ra,0x2
    8000262c:	44c080e7          	jalr	1100(ra) # 80004a74 <_ZN15MemoryAllocator5kfreeEPv>
}
    80002630:	00813083          	ld	ra,8(sp)
    80002634:	00013403          	ld	s0,0(sp)
    80002638:	01010113          	addi	sp,sp,16
    8000263c:	00008067          	ret

0000000080002640 <_ZN3PCB10initializeEv>:

void PCB::initialize()
{
    80002640:	fe010113          	addi	sp,sp,-32
    80002644:	00113c23          	sd	ra,24(sp)
    80002648:	00813823          	sd	s0,16(sp)
    8000264c:	00913423          	sd	s1,8(sp)
    80002650:	01213023          	sd	s2,0(sp)
    80002654:	02010413          	addi	s0,sp,32
    PCB* mainSystem = new PCB(0, 0, 0, 0);
    80002658:	06000513          	li	a0,96
    8000265c:	00000097          	auipc	ra,0x0
    80002660:	f4c080e7          	jalr	-180(ra) # 800025a8 <_ZN3PCBnwEm>
    80002664:	00050493          	mv	s1,a0
    80002668:	00050e63          	beqz	a0,80002684 <_ZN3PCB10initializeEv+0x44>
    8000266c:	00000713          	li	a4,0
    80002670:	00000693          	li	a3,0
    80002674:	00000613          	li	a2,0
    80002678:	00000593          	li	a1,0
    8000267c:	00000097          	auipc	ra,0x0
    80002680:	e28080e7          	jalr	-472(ra) # 800024a4 <_ZN3PCBC1EPFvPvES0_S0_m>
    mainSystem->systemThread = true;
    80002684:	00100793          	li	a5,1
    80002688:	00f48023          	sb	a5,0(s1)
    PCB::running = mainSystem;
    8000268c:	00006797          	auipc	a5,0x6
    80002690:	3497b623          	sd	s1,844(a5) # 800089d8 <_ZN3PCB7runningE>
    80002694:	00100793          	li	a5,1
    80002698:	04f4a023          	sw	a5,64(s1)
    PCB::running->setState(PCB::RUNNING);
    PCB::consolePCB = new PCB(&KConsole::sendCharactersToConsole, 0,
                              kmalloc(DEFAULT_STACK_SIZE),
    8000269c:	00001537          	lui	a0,0x1
    800026a0:	00000097          	auipc	ra,0x0
    800026a4:	9d0080e7          	jalr	-1584(ra) # 80002070 <_Z7kmallocm>
    800026a8:	00050913          	mv	s2,a0
//                              MemoryAllocator::kmalloc(DEFAULT_STACK_SIZE),
                              DEFAULT_TIME_SLICE);
    800026ac:	06000513          	li	a0,96
    800026b0:	00000097          	auipc	ra,0x0
    800026b4:	ef8080e7          	jalr	-264(ra) # 800025a8 <_ZN3PCBnwEm>
    800026b8:	00050493          	mv	s1,a0
    800026bc:	02050063          	beqz	a0,800026dc <_ZN3PCB10initializeEv+0x9c>
    800026c0:	00200713          	li	a4,2
    800026c4:	00090693          	mv	a3,s2
    800026c8:	00000613          	li	a2,0
    800026cc:	00006597          	auipc	a1,0x6
    800026d0:	2645b583          	ld	a1,612(a1) # 80008930 <_GLOBAL_OFFSET_TABLE_+0x68>
    800026d4:	00000097          	auipc	ra,0x0
    800026d8:	dd0080e7          	jalr	-560(ra) # 800024a4 <_ZN3PCBC1EPFvPvES0_S0_m>
    PCB::consolePCB = new PCB(&KConsole::sendCharactersToConsole, 0,
    800026dc:	00006797          	auipc	a5,0x6
    800026e0:	2fc78793          	addi	a5,a5,764 # 800089d8 <_ZN3PCB7runningE>
    800026e4:	0097b423          	sd	s1,8(a5)
    PCB::consolePCB->systemThread = true;
    800026e8:	00100713          	li	a4,1
    800026ec:	00e48023          	sb	a4,0(s1)
    PCB::consolePCB->start();
    800026f0:	0087b503          	ld	a0,8(a5)
    800026f4:	00000097          	auipc	ra,0x0
    800026f8:	e00080e7          	jalr	-512(ra) # 800024f4 <_ZN3PCB5startEv>
    PCB::userPCB = new PCB(&PCBWrapperUser::userMainWrapper, 0,
//                           kmalloc(DEFAULT_STACK_SIZE),
                           MemoryAllocator::kmalloc(DEFAULT_STACK_SIZE),
    800026fc:	00001537          	lui	a0,0x1
    80002700:	00002097          	auipc	ra,0x2
    80002704:	304080e7          	jalr	772(ra) # 80004a04 <_ZN15MemoryAllocator7kmallocEm>
    80002708:	00050913          	mv	s2,a0
                           DEFAULT_TIME_SLICE);
    8000270c:	06000513          	li	a0,96
    80002710:	00000097          	auipc	ra,0x0
    80002714:	e98080e7          	jalr	-360(ra) # 800025a8 <_ZN3PCBnwEm>
    80002718:	00050493          	mv	s1,a0
    8000271c:	02050063          	beqz	a0,8000273c <_ZN3PCB10initializeEv+0xfc>
    80002720:	00200713          	li	a4,2
    80002724:	00090693          	mv	a3,s2
    80002728:	00000613          	li	a2,0
    8000272c:	00006597          	auipc	a1,0x6
    80002730:	20c5b583          	ld	a1,524(a1) # 80008938 <_GLOBAL_OFFSET_TABLE_+0x70>
    80002734:	00000097          	auipc	ra,0x0
    80002738:	d70080e7          	jalr	-656(ra) # 800024a4 <_ZN3PCBC1EPFvPvES0_S0_m>
    PCB::userPCB = new PCB(&PCBWrapperUser::userMainWrapper, 0,
    8000273c:	00006797          	auipc	a5,0x6
    80002740:	2a97b623          	sd	s1,684(a5) # 800089e8 <_ZN3PCB7userPCBE>
    PCB::userPCB->start();
    80002744:	00048513          	mv	a0,s1
    80002748:	00000097          	auipc	ra,0x0
    8000274c:	dac080e7          	jalr	-596(ra) # 800024f4 <_ZN3PCB5startEv>
}
    80002750:	01813083          	ld	ra,24(sp)
    80002754:	01013403          	ld	s0,16(sp)
    80002758:	00813483          	ld	s1,8(sp)
    8000275c:	00013903          	ld	s2,0(sp)
    80002760:	02010113          	addi	sp,sp,32
    80002764:	00008067          	ret

0000000080002768 <_ZN3PCB10isFinishedEv>:

bool PCB::isFinished()
{
    80002768:	ff010113          	addi	sp,sp,-16
    8000276c:	00813423          	sd	s0,8(sp)
    80002770:	01010413          	addi	s0,sp,16
    return state == PCB::FINISHED;
    80002774:	04052503          	lw	a0,64(a0) # 1040 <_entry-0x7fffefc0>
    80002778:	ffd50513          	addi	a0,a0,-3
}
    8000277c:	00153513          	seqz	a0,a0
    80002780:	00813403          	ld	s0,8(sp)
    80002784:	01010113          	addi	sp,sp,16
    80002788:	00008067          	ret

000000008000278c <_ZN3PCB17threadExitHandlerEv>:

void PCB::threadExitHandler()
{
    8000278c:	ff010113          	addi	sp,sp,-16
    80002790:	00113423          	sd	ra,8(sp)
    80002794:	00813023          	sd	s0,0(sp)
    80002798:	01010413          	addi	s0,sp,16
    PCB::timeSliceCounter = 0;
    8000279c:	00006797          	auipc	a5,0x6
    800027a0:	23c78793          	addi	a5,a5,572 # 800089d8 <_ZN3PCB7runningE>
    800027a4:	0007bc23          	sd	zero,24(a5)
    PCB::running->setState(PCB::FINISHED);
    800027a8:	0007b783          	ld	a5,0(a5)
    800027ac:	00300713          	li	a4,3
    800027b0:	04e7a023          	sw	a4,64(a5)
    PCB::dispatch();
    800027b4:	00000097          	auipc	ra,0x0
    800027b8:	d68080e7          	jalr	-664(ra) # 8000251c <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0");
    800027bc:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    800027c0:	00002097          	auipc	ra,0x2
    800027c4:	b10080e7          	jalr	-1264(ra) # 800042d0 <_ZN5Riscv13w_a0_sscratchEv>
}
    800027c8:	00813083          	ld	ra,8(sp)
    800027cc:	00013403          	ld	s0,0(sp)
    800027d0:	01010113          	addi	sp,sp,16
    800027d4:	00008067          	ret

00000000800027d8 <_ZN3PCB21threadDispatchHandlerEv>:

void PCB::threadDispatchHandler()
{
    800027d8:	ff010113          	addi	sp,sp,-16
    800027dc:	00113423          	sd	ra,8(sp)
    800027e0:	00813023          	sd	s0,0(sp)
    800027e4:	01010413          	addi	s0,sp,16
    PCB::timeSliceCounter = 0;
    800027e8:	00006797          	auipc	a5,0x6
    800027ec:	2007b423          	sd	zero,520(a5) # 800089f0 <_ZN3PCB16timeSliceCounterE>
    PCB::dispatch();
    800027f0:	00000097          	auipc	ra,0x0
    800027f4:	d2c080e7          	jalr	-724(ra) # 8000251c <_ZN3PCB8dispatchEv>
}
    800027f8:	00813083          	ld	ra,8(sp)
    800027fc:	00013403          	ld	s0,0(sp)
    80002800:	01010113          	addi	sp,sp,16
    80002804:	00008067          	ret

0000000080002808 <_ZN3PCB18threadSleepHandlerEv>:

void PCB::threadSleepHandler()
{
    80002808:	ff010113          	addi	sp,sp,-16
    8000280c:	00113423          	sd	ra,8(sp)
    80002810:	00813023          	sd	s0,0(sp)
    80002814:	01010413          	addi	s0,sp,16
    uint64 time;
    __asm__ volatile("mv %0, a1" : "=r"(time));
    80002818:	00058793          	mv	a5,a1
    PCB::timeSliceCounter = 0;
    8000281c:	00006717          	auipc	a4,0x6
    80002820:	1bc70713          	addi	a4,a4,444 # 800089d8 <_ZN3PCB7runningE>
    80002824:	00073c23          	sd	zero,24(a4)
    PCB::running->setTimeToSleep(time + Riscv::totalTime);
    80002828:	00073703          	ld	a4,0(a4)
    8000282c:	00006697          	auipc	a3,0x6
    80002830:	0fc6b683          	ld	a3,252(a3) # 80008928 <_GLOBAL_OFFSET_TABLE_+0x60>
    80002834:	0006b683          	ld	a3,0(a3)
    80002838:	00d787b3          	add	a5,a5,a3
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    8000283c:	02f73023          	sd	a5,32(a4)
    SleepPCBList::insertSleepingPCB();
    80002840:	00001097          	auipc	ra,0x1
    80002844:	edc080e7          	jalr	-292(ra) # 8000371c <_ZN12SleepPCBList17insertSleepingPCBEv>
    PCB::dispatch();
    80002848:	00000097          	auipc	ra,0x0
    8000284c:	cd4080e7          	jalr	-812(ra) # 8000251c <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0x0");
    80002850:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80002854:	00002097          	auipc	ra,0x2
    80002858:	a7c080e7          	jalr	-1412(ra) # 800042d0 <_ZN5Riscv13w_a0_sscratchEv>
}
    8000285c:	00813083          	ld	ra,8(sp)
    80002860:	00013403          	ld	s0,0(sp)
    80002864:	01010113          	addi	sp,sp,16
    80002868:	00008067          	ret

000000008000286c <_ZN3PCB19threadCreateHandlerEv>:

void PCB::threadCreateHandler()
{
    8000286c:	fd010113          	addi	sp,sp,-48
    80002870:	02113423          	sd	ra,40(sp)
    80002874:	02813023          	sd	s0,32(sp)
    80002878:	00913c23          	sd	s1,24(sp)
    8000287c:	01213823          	sd	s2,16(sp)
    80002880:	01313423          	sd	s3,8(sp)
    80002884:	01413023          	sd	s4,0(sp)
    80002888:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    8000288c:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    80002890:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    80002894:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args,
                          //stack_space,
                          (void *) PCB::savedRegA4,
                          DEFAULT_TIME_SLICE);
    80002898:	06000513          	li	a0,96
    8000289c:	00000097          	auipc	ra,0x0
    800028a0:	d0c080e7          	jalr	-756(ra) # 800025a8 <_ZN3PCBnwEm>
    800028a4:	00050493          	mv	s1,a0
    800028a8:	02050063          	beqz	a0,800028c8 <_ZN3PCB19threadCreateHandlerEv+0x5c>
    800028ac:	00200713          	li	a4,2
    800028b0:	00006697          	auipc	a3,0x6
    800028b4:	1486b683          	ld	a3,328(a3) # 800089f8 <_ZN3PCB10savedRegA4E>
    800028b8:	000a0613          	mv	a2,s4
    800028bc:	00098593          	mv	a1,s3
    800028c0:	00000097          	auipc	ra,0x0
    800028c4:	be4080e7          	jalr	-1052(ra) # 800024a4 <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    800028c8:	00993023          	sd	s1,0(s2)

    if (newPCB == nullptr) {
    800028cc:	02048e63          	beqz	s1,80002908 <_ZN3PCB19threadCreateHandlerEv+0x9c>
        __asm__ volatile("li a0, 0x01");
    }
    else
    {
        newPCB->start();
    800028d0:	00048513          	mv	a0,s1
    800028d4:	00000097          	auipc	ra,0x0
    800028d8:	c20080e7          	jalr	-992(ra) # 800024f4 <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    800028dc:	00000513          	li	a0,0
    }
    Riscv::w_a0_sscratch();
    800028e0:	00002097          	auipc	ra,0x2
    800028e4:	9f0080e7          	jalr	-1552(ra) # 800042d0 <_ZN5Riscv13w_a0_sscratchEv>
}
    800028e8:	02813083          	ld	ra,40(sp)
    800028ec:	02013403          	ld	s0,32(sp)
    800028f0:	01813483          	ld	s1,24(sp)
    800028f4:	01013903          	ld	s2,16(sp)
    800028f8:	00813983          	ld	s3,8(sp)
    800028fc:	00013a03          	ld	s4,0(sp)
    80002900:	03010113          	addi	sp,sp,48
    80002904:	00008067          	ret
        __asm__ volatile("li a0, 0x01");
    80002908:	00100513          	li	a0,1
    8000290c:	fd5ff06f          	j	800028e0 <_ZN3PCB19threadCreateHandlerEv+0x74>

0000000080002910 <_ZN3PCB18threadStartHandlerEv>:

void PCB::threadStartHandler()
{
    80002910:	ff010113          	addi	sp,sp,-16
    80002914:	00113423          	sd	ra,8(sp)
    80002918:	00813023          	sd	s0,0(sp)
    8000291c:	01010413          	addi	s0,sp,16
    PCB* pcb;
    __asm__ volatile("mv %0, a1" : "=r"(pcb));
    80002920:	00058513          	mv	a0,a1
    if(pcb != nullptr)
    80002924:	02050463          	beqz	a0,8000294c <_ZN3PCB18threadStartHandlerEv+0x3c>
    {
        pcb->start();
    80002928:	00000097          	auipc	ra,0x0
    8000292c:	bcc080e7          	jalr	-1076(ra) # 800024f4 <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    80002930:	00000513          	li	a0,0
    }
    else
    {
        __asm__ volatile("li a0, 0x01");
    }
    Riscv::w_a0_sscratch();
    80002934:	00002097          	auipc	ra,0x2
    80002938:	99c080e7          	jalr	-1636(ra) # 800042d0 <_ZN5Riscv13w_a0_sscratchEv>
}
    8000293c:	00813083          	ld	ra,8(sp)
    80002940:	00013403          	ld	s0,0(sp)
    80002944:	01010113          	addi	sp,sp,16
    80002948:	00008067          	ret
        __asm__ volatile("li a0, 0x01");
    8000294c:	00100513          	li	a0,1
    80002950:	fe5ff06f          	j	80002934 <_ZN3PCB18threadStartHandlerEv+0x24>

0000000080002954 <_ZN3PCB20threadMakePCBHandlerEv>:

void PCB::threadMakePCBHandler()
{
    80002954:	fd010113          	addi	sp,sp,-48
    80002958:	02113423          	sd	ra,40(sp)
    8000295c:	02813023          	sd	s0,32(sp)
    80002960:	00913c23          	sd	s1,24(sp)
    80002964:	01213823          	sd	s2,16(sp)
    80002968:	01313423          	sd	s3,8(sp)
    8000296c:	01413023          	sd	s4,0(sp)
    80002970:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80002974:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    80002978:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    8000297c:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args,
                          //stack_space,
                          (void *) PCB::savedRegA4,
                          DEFAULT_TIME_SLICE);
    80002980:	06000513          	li	a0,96
    80002984:	00000097          	auipc	ra,0x0
    80002988:	c24080e7          	jalr	-988(ra) # 800025a8 <_ZN3PCBnwEm>
    8000298c:	00050493          	mv	s1,a0
    80002990:	02050063          	beqz	a0,800029b0 <_ZN3PCB20threadMakePCBHandlerEv+0x5c>
    80002994:	00200713          	li	a4,2
    80002998:	00006697          	auipc	a3,0x6
    8000299c:	0606b683          	ld	a3,96(a3) # 800089f8 <_ZN3PCB10savedRegA4E>
    800029a0:	000a0613          	mv	a2,s4
    800029a4:	00098593          	mv	a1,s3
    800029a8:	00000097          	auipc	ra,0x0
    800029ac:	afc080e7          	jalr	-1284(ra) # 800024a4 <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    800029b0:	00993023          	sd	s1,0(s2)

    if (newPCB == nullptr)
    800029b4:	02048863          	beqz	s1,800029e4 <_ZN3PCB20threadMakePCBHandlerEv+0x90>
    {
        __asm__ volatile("li a0, 0x01");
    }
    else
        __asm__ volatile("li a0, 0");
    800029b8:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    800029bc:	00002097          	auipc	ra,0x2
    800029c0:	914080e7          	jalr	-1772(ra) # 800042d0 <_ZN5Riscv13w_a0_sscratchEv>
}
    800029c4:	02813083          	ld	ra,40(sp)
    800029c8:	02013403          	ld	s0,32(sp)
    800029cc:	01813483          	ld	s1,24(sp)
    800029d0:	01013903          	ld	s2,16(sp)
    800029d4:	00813983          	ld	s3,8(sp)
    800029d8:	00013a03          	ld	s4,0(sp)
    800029dc:	03010113          	addi	sp,sp,48
    800029e0:	00008067          	ret
        __asm__ volatile("li a0, 0x01");
    800029e4:	00100513          	li	a0,1
    800029e8:	fd5ff06f          	j	800029bc <_ZN3PCB20threadMakePCBHandlerEv+0x68>

00000000800029ec <_ZN3PCB19threadDelPCBHandlerEv>:

void PCB::threadDelPCBHandler()
{
    800029ec:	fe010113          	addi	sp,sp,-32
    800029f0:	00113c23          	sd	ra,24(sp)
    800029f4:	00813823          	sd	s0,16(sp)
    800029f8:	00913423          	sd	s1,8(sp)
    800029fc:	02010413          	addi	s0,sp,32
    PCB* pcb;
    __asm__ volatile("mv %0, a1" : "=r"(pcb));
    80002a00:	00058493          	mv	s1,a1
    if(pcb != nullptr)
    80002a04:	02048e63          	beqz	s1,80002a40 <_ZN3PCB19threadDelPCBHandlerEv+0x54>
    {
        delete pcb;
    80002a08:	00048513          	mv	a0,s1
    80002a0c:	00000097          	auipc	ra,0x0
    80002a10:	c08080e7          	jalr	-1016(ra) # 80002614 <_ZN3PCBD1Ev>
    80002a14:	00048513          	mv	a0,s1
    80002a18:	00000097          	auipc	ra,0x0
    80002a1c:	bc4080e7          	jalr	-1084(ra) # 800025dc <_ZN3PCBdlEPv>
        __asm__ volatile("li a0, 0x0");
    80002a20:	00000513          	li	a0,0
    }
    else
    {
        __asm__ volatile("li a0, 0x1");
    }
    Riscv::w_a0_sscratch();
    80002a24:	00002097          	auipc	ra,0x2
    80002a28:	8ac080e7          	jalr	-1876(ra) # 800042d0 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002a2c:	01813083          	ld	ra,24(sp)
    80002a30:	01013403          	ld	s0,16(sp)
    80002a34:	00813483          	ld	s1,8(sp)
    80002a38:	02010113          	addi	sp,sp,32
    80002a3c:	00008067          	ret
        __asm__ volatile("li a0, 0x1");
    80002a40:	00100513          	li	a0,1
    80002a44:	fe1ff06f          	j	80002a24 <_ZN3PCB19threadDelPCBHandlerEv+0x38>

0000000080002a48 <_Z12getBlockAddrm>:
    addBlocks(addr, level); //adds free blocks
    buddy->numOfFreeBlocks += (1 << level);
}

size_t getBlockAddr(size_t addr)
{
    80002a48:	ff010113          	addi	sp,sp,-16
    80002a4c:	00813423          	sd	s0,8(sp)
    80002a50:	01010413          	addi	s0,sp,16
    size_t mask = ((size_t)-1) << BLOCK_SIZE_POWER_2;
    return addr & mask;
}
    80002a54:	fffff7b7          	lui	a5,0xfffff
    80002a58:	00f57533          	and	a0,a0,a5
    80002a5c:	00813403          	ld	s0,8(sp)
    80002a60:	01010113          	addi	sp,sp,16
    80002a64:	00008067          	ret

0000000080002a68 <_Z16getNextBlockAddrm>:
size_t getNextBlockAddr(size_t addr)
{
    80002a68:	ff010113          	addi	sp,sp,-16
    80002a6c:	00113423          	sd	ra,8(sp)
    80002a70:	00813023          	sd	s0,0(sp)
    80002a74:	01010413          	addi	s0,sp,16
    size_t currBlock = getBlockAddr(addr);
    80002a78:	00000097          	auipc	ra,0x0
    80002a7c:	fd0080e7          	jalr	-48(ra) # 80002a48 <_Z12getBlockAddrm>
    return currBlock + BLOCK_SIZE;
}
    80002a80:	000017b7          	lui	a5,0x1
    80002a84:	00f50533          	add	a0,a0,a5
    80002a88:	00813083          	ld	ra,8(sp)
    80002a8c:	00013403          	ld	s0,0(sp)
    80002a90:	01010113          	addi	sp,sp,16
    80002a94:	00008067          	ret

0000000080002a98 <_Z12getDeg2Floorm>:

size_t getDeg2Floor(size_t num)
{
    80002a98:	ff010113          	addi	sp,sp,-16
    80002a9c:	00813423          	sd	s0,8(sp)
    80002aa0:	01010413          	addi	s0,sp,16
    size_t x = 1;
    size_t deg = 0;
    80002aa4:	00000713          	li	a4,0
    size_t x = 1;
    80002aa8:	00100793          	li	a5,1
    while(x <= num)
    80002aac:	00f56863          	bltu	a0,a5,80002abc <_Z12getDeg2Floorm+0x24>
    {
        deg++;
    80002ab0:	00170713          	addi	a4,a4,1
        x<<=1;
    80002ab4:	00179793          	slli	a5,a5,0x1
    while(x <= num)
    80002ab8:	ff5ff06f          	j	80002aac <_Z12getDeg2Floorm+0x14>
    }
    return deg - 1;
}
    80002abc:	fff70513          	addi	a0,a4,-1
    80002ac0:	00813403          	ld	s0,8(sp)
    80002ac4:	01010113          	addi	sp,sp,16
    80002ac8:	00008067          	ret

0000000080002acc <_Z11getDeg2Ceilm>:

size_t getDeg2Ceil(size_t num)
{
    80002acc:	ff010113          	addi	sp,sp,-16
    80002ad0:	00813423          	sd	s0,8(sp)
    80002ad4:	01010413          	addi	s0,sp,16
    80002ad8:	00050713          	mv	a4,a0
    size_t x = 1;
    size_t deg = 0;
    80002adc:	00000513          	li	a0,0
    size_t x = 1;
    80002ae0:	00100793          	li	a5,1
    while(x < num)
    80002ae4:	00e7f863          	bgeu	a5,a4,80002af4 <_Z11getDeg2Ceilm+0x28>
    {
        deg++;
    80002ae8:	00150513          	addi	a0,a0,1
        x<<=1;
    80002aec:	00179793          	slli	a5,a5,0x1
    while(x < num)
    80002af0:	ff5ff06f          	j	80002ae4 <_Z11getDeg2Ceilm+0x18>
    }
    return deg;
}
    80002af4:	00813403          	ld	s0,8(sp)
    80002af8:	01010113          	addi	sp,sp,16
    80002afc:	00008067          	ret

0000000080002b00 <_Z15addBlockToLevelPvm>:
    addBlockToLevel(addr, level);
}

//adds free block to level
void addBlockToLevel(void* addr, size_t level)
{
    80002b00:	ff010113          	addi	sp,sp,-16
    80002b04:	00813423          	sd	s0,8(sp)
    80002b08:	01010413          	addi	s0,sp,16
    buddyBlock* newBlock = (buddyBlock*)addr;
    newBlock->next = nullptr;
    80002b0c:	00053023          	sd	zero,0(a0)
    if(buddy->bucket[level].first == nullptr)
    80002b10:	00006717          	auipc	a4,0x6
    80002b14:	ef073703          	ld	a4,-272(a4) # 80008a00 <_ZL5buddy>
    80002b18:	00258793          	addi	a5,a1,2
    80002b1c:	00479793          	slli	a5,a5,0x4
    80002b20:	00f707b3          	add	a5,a4,a5
    80002b24:	0007b783          	ld	a5,0(a5) # 1000 <_entry-0x7ffff000>
    80002b28:	02078463          	beqz	a5,80002b50 <_Z15addBlockToLevelPvm+0x50>
    {
        buddy->bucket[level].first = buddy->bucket[level].last = newBlock;
    }
    else
    {
        buddy->bucket[level].last->next = newBlock;
    80002b2c:	00258593          	addi	a1,a1,2
    80002b30:	00459593          	slli	a1,a1,0x4
    80002b34:	00b705b3          	add	a1,a4,a1
    80002b38:	0085b783          	ld	a5,8(a1)
    80002b3c:	00a7b023          	sd	a0,0(a5)
        buddy->bucket[level].last = newBlock;
    80002b40:	00a5b423          	sd	a0,8(a1)
    }
}
    80002b44:	00813403          	ld	s0,8(sp)
    80002b48:	01010113          	addi	sp,sp,16
    80002b4c:	00008067          	ret
        buddy->bucket[level].first = buddy->bucket[level].last = newBlock;
    80002b50:	00258593          	addi	a1,a1,2
    80002b54:	00459793          	slli	a5,a1,0x4
    80002b58:	00f707b3          	add	a5,a4,a5
    80002b5c:	00a7b423          	sd	a0,8(a5)
    80002b60:	00a7b023          	sd	a0,0(a5)
    80002b64:	fe1ff06f          	j	80002b44 <_Z15addBlockToLevelPvm+0x44>

0000000080002b68 <_Z17getBuddyBlockAddrPvm>:

size_t getBuddyBlockAddr(void* addr, size_t level)
{
    80002b68:	ff010113          	addi	sp,sp,-16
    80002b6c:	00813423          	sd	s0,8(sp)
    80002b70:	01010413          	addi	s0,sp,16
    size_t diff = BLOCK_SIZE << level;
    80002b74:	000017b7          	lui	a5,0x1
    80002b78:	00b795bb          	sllw	a1,a5,a1
    size_t off = (size_t)addr - (size_t)buddy->startAddr;
    80002b7c:	00006797          	auipc	a5,0x6
    80002b80:	e847b783          	ld	a5,-380(a5) # 80008a00 <_ZL5buddy>
    80002b84:	0087b783          	ld	a5,8(a5)
    80002b88:	40f507b3          	sub	a5,a0,a5
    if(diff & off)
    80002b8c:	00f5f7b3          	and	a5,a1,a5
    80002b90:	00078a63          	beqz	a5,80002ba4 <_Z17getBuddyBlockAddrPvm+0x3c>
        return (size_t)addr - diff;
    80002b94:	40b50533          	sub	a0,a0,a1
    else
        return (size_t)addr + diff;
}
    80002b98:	00813403          	ld	s0,8(sp)
    80002b9c:	01010113          	addi	sp,sp,16
    80002ba0:	00008067          	ret
        return (size_t)addr + diff;
    80002ba4:	00b50533          	add	a0,a0,a1
    80002ba8:	ff1ff06f          	j	80002b98 <_Z17getBuddyBlockAddrPvm+0x30>

0000000080002bac <_Z5splitPvmmb>:
{
    80002bac:	fd010113          	addi	sp,sp,-48
    80002bb0:	02113423          	sd	ra,40(sp)
    80002bb4:	02813023          	sd	s0,32(sp)
    80002bb8:	00913c23          	sd	s1,24(sp)
    80002bbc:	01213823          	sd	s2,16(sp)
    80002bc0:	01313423          	sd	s3,8(sp)
    80002bc4:	03010413          	addi	s0,sp,48
    80002bc8:	00050993          	mv	s3,a0
    if(!splitMore)
    80002bcc:	06068263          	beqz	a3,80002c30 <_Z5splitPvmmb+0x84>
    80002bd0:	00058913          	mv	s2,a1
        if(currLevel == finalLevel)
    80002bd4:	04b60063          	beq	a2,a1,80002c14 <_Z5splitPvmmb+0x68>
        size_t buddyBlock = getBuddyBlockAddr(addr, currLevel - 1); // currLevel - 1 for next step
    80002bd8:	fff60493          	addi	s1,a2,-1
    80002bdc:	00048593          	mv	a1,s1
    80002be0:	00000097          	auipc	ra,0x0
    80002be4:	f88080e7          	jalr	-120(ra) # 80002b68 <_Z17getBuddyBlockAddrPvm>
        split((void*)buddyBlock, finalLevel, currLevel - 1, false); // continue splitting
    80002be8:	00000693          	li	a3,0
    80002bec:	00048613          	mv	a2,s1
    80002bf0:	00090593          	mv	a1,s2
    80002bf4:	00000097          	auipc	ra,0x0
    80002bf8:	fb8080e7          	jalr	-72(ra) # 80002bac <_Z5splitPvmmb>
        split(addr, finalLevel, currLevel - 1, true); // continue splitting
    80002bfc:	00100693          	li	a3,1
    80002c00:	00048613          	mv	a2,s1
    80002c04:	00090593          	mv	a1,s2
    80002c08:	00098513          	mv	a0,s3
    80002c0c:	00000097          	auipc	ra,0x0
    80002c10:	fa0080e7          	jalr	-96(ra) # 80002bac <_Z5splitPvmmb>
}
    80002c14:	02813083          	ld	ra,40(sp)
    80002c18:	02013403          	ld	s0,32(sp)
    80002c1c:	01813483          	ld	s1,24(sp)
    80002c20:	01013903          	ld	s2,16(sp)
    80002c24:	00813983          	ld	s3,8(sp)
    80002c28:	03010113          	addi	sp,sp,48
    80002c2c:	00008067          	ret
        addBlockToLevel(addr, currLevel);
    80002c30:	00060593          	mv	a1,a2
    80002c34:	00000097          	auipc	ra,0x0
    80002c38:	ecc080e7          	jalr	-308(ra) # 80002b00 <_Z15addBlockToLevelPvm>
    80002c3c:	fd9ff06f          	j	80002c14 <_Z5splitPvmmb+0x68>

0000000080002c40 <_Z11buddy_allocm>:
{
    80002c40:	fe010113          	addi	sp,sp,-32
    80002c44:	00113c23          	sd	ra,24(sp)
    80002c48:	00813823          	sd	s0,16(sp)
    80002c4c:	00913423          	sd	s1,8(sp)
    80002c50:	01213023          	sd	s2,0(sp)
    80002c54:	02010413          	addi	s0,sp,32
    size_t level = getDeg2Ceil(numOfBlocks);
    80002c58:	00000097          	auipc	ra,0x0
    80002c5c:	e74080e7          	jalr	-396(ra) # 80002acc <_Z11getDeg2Ceilm>
    80002c60:	00050913          	mv	s2,a0
    for(size_t i = level; i <= buddy->maxLevel;i++)
    80002c64:	00050613          	mv	a2,a0
    80002c68:	00006717          	auipc	a4,0x6
    80002c6c:	d9873703          	ld	a4,-616(a4) # 80008a00 <_ZL5buddy>
    80002c70:	01873783          	ld	a5,24(a4)
    80002c74:	08c7e063          	bltu	a5,a2,80002cf4 <_Z11buddy_allocm+0xb4>
        if(buddy->bucket[i].first != nullptr)
    80002c78:	00260793          	addi	a5,a2,2
    80002c7c:	00479793          	slli	a5,a5,0x4
    80002c80:	00f707b3          	add	a5,a4,a5
    80002c84:	0007b483          	ld	s1,0(a5)
    80002c88:	00049663          	bnez	s1,80002c94 <_Z11buddy_allocm+0x54>
    for(size_t i = level; i <= buddy->maxLevel;i++)
    80002c8c:	00160613          	addi	a2,a2,1
    80002c90:	fd9ff06f          	j	80002c68 <_Z11buddy_allocm+0x28>
            buddy->bucket[i].first = ret->next;
    80002c94:	0004b683          	ld	a3,0(s1)
    80002c98:	00260793          	addi	a5,a2,2
    80002c9c:	00479793          	slli	a5,a5,0x4
    80002ca0:	00f707b3          	add	a5,a4,a5
    80002ca4:	00d7b023          	sd	a3,0(a5)
            if(buddy->bucket[i].first == nullptr)
    80002ca8:	02068c63          	beqz	a3,80002ce0 <_Z11buddy_allocm+0xa0>
            split((void*)ret, level, i, true);
    80002cac:	00100693          	li	a3,1
    80002cb0:	00090593          	mv	a1,s2
    80002cb4:	00048513          	mv	a0,s1
    80002cb8:	00000097          	auipc	ra,0x0
    80002cbc:	ef4080e7          	jalr	-268(ra) # 80002bac <_Z5splitPvmmb>
            buddy->numOfFreeBlocks-= (1 << level);
    80002cc0:	00006797          	auipc	a5,0x6
    80002cc4:	d407b783          	ld	a5,-704(a5) # 80008a00 <_ZL5buddy>
    80002cc8:	00100513          	li	a0,1
    80002ccc:	0125153b          	sllw	a0,a0,s2
    80002cd0:	0107b903          	ld	s2,16(a5)
    80002cd4:	40a90933          	sub	s2,s2,a0
    80002cd8:	0127b823          	sd	s2,16(a5)
            return ret;
    80002cdc:	01c0006f          	j	80002cf8 <_Z11buddy_allocm+0xb8>
                buddy->bucket[i].last = nullptr;
    80002ce0:	00260793          	addi	a5,a2,2
    80002ce4:	00479793          	slli	a5,a5,0x4
    80002ce8:	00f70733          	add	a4,a4,a5
    80002cec:	00073423          	sd	zero,8(a4)
    80002cf0:	fbdff06f          	j	80002cac <_Z11buddy_allocm+0x6c>
    return nullptr;
    80002cf4:	00000493          	li	s1,0
}
    80002cf8:	00048513          	mv	a0,s1
    80002cfc:	01813083          	ld	ra,24(sp)
    80002d00:	01013403          	ld	s0,16(sp)
    80002d04:	00813483          	ld	s1,8(sp)
    80002d08:	00013903          	ld	s2,0(sp)
    80002d0c:	02010113          	addi	sp,sp,32
    80002d10:	00008067          	ret

0000000080002d14 <_Z9addBlocksPvm>:
{
    80002d14:	fd010113          	addi	sp,sp,-48
    80002d18:	02113423          	sd	ra,40(sp)
    80002d1c:	02813023          	sd	s0,32(sp)
    80002d20:	00913c23          	sd	s1,24(sp)
    80002d24:	01213823          	sd	s2,16(sp)
    80002d28:	01313423          	sd	s3,8(sp)
    80002d2c:	03010413          	addi	s0,sp,48
    80002d30:	00050913          	mv	s2,a0
    80002d34:	00058493          	mv	s1,a1
    if(level == buddy->maxLevel)
    80002d38:	00006997          	auipc	s3,0x6
    80002d3c:	cc89b983          	ld	s3,-824(s3) # 80008a00 <_ZL5buddy>
    80002d40:	0189b783          	ld	a5,24(s3)
    80002d44:	02b78a63          	beq	a5,a1,80002d78 <_Z9addBlocksPvm+0x64>
    size_t buddyBlockAddr = getBuddyBlockAddr(addr,level);
    80002d48:	00000097          	auipc	ra,0x0
    80002d4c:	e20080e7          	jalr	-480(ra) # 80002b68 <_Z17getBuddyBlockAddrPvm>
    buddyBlock* curr = buddy->bucket[level].first;
    80002d50:	00248793          	addi	a5,s1,2
    80002d54:	00479793          	slli	a5,a5,0x4
    80002d58:	00f987b3          	add	a5,s3,a5
    80002d5c:	0007b783          	ld	a5,0(a5)
    buddyBlock* prev = nullptr;
    80002d60:	00000713          	li	a4,0
    while(curr != nullptr)
    80002d64:	0a078863          	beqz	a5,80002e14 <_Z9addBlocksPvm+0x100>
        if((size_t)curr == buddyBlockAddr)
    80002d68:	00a78e63          	beq	a5,a0,80002d84 <_Z9addBlocksPvm+0x70>
        prev = curr;
    80002d6c:	00078713          	mv	a4,a5
        curr = curr->next;
    80002d70:	0007b783          	ld	a5,0(a5)
    while(curr != nullptr)
    80002d74:	ff1ff06f          	j	80002d64 <_Z9addBlocksPvm+0x50>
        addBlockToLevel(addr, level);
    80002d78:	00000097          	auipc	ra,0x0
    80002d7c:	d88080e7          	jalr	-632(ra) # 80002b00 <_Z15addBlockToLevelPvm>
        return;
    80002d80:	0a40006f          	j	80002e24 <_Z9addBlocksPvm+0x110>
            if(prev != nullptr)
    80002d84:	04070663          	beqz	a4,80002dd0 <_Z9addBlocksPvm+0xbc>
                prev->next = curr->next;
    80002d88:	0007b683          	ld	a3,0(a5)
    80002d8c:	00d73023          	sd	a3,0(a4)
                if(curr == buddy->bucket[level].last)
    80002d90:	00248693          	addi	a3,s1,2
    80002d94:	00469693          	slli	a3,a3,0x4
    80002d98:	00d986b3          	add	a3,s3,a3
    80002d9c:	0086b683          	ld	a3,8(a3)
    80002da0:	00f68e63          	beq	a3,a5,80002dbc <_Z9addBlocksPvm+0xa8>
            if((size_t)addr < buddyBlockAddr) addBlocks(addr, level + 1); //merge two chunks
    80002da4:	06a97063          	bgeu	s2,a0,80002e04 <_Z9addBlocksPvm+0xf0>
    80002da8:	00148593          	addi	a1,s1,1
    80002dac:	00090513          	mv	a0,s2
    80002db0:	00000097          	auipc	ra,0x0
    80002db4:	f64080e7          	jalr	-156(ra) # 80002d14 <_Z9addBlocksPvm>
    80002db8:	06c0006f          	j	80002e24 <_Z9addBlocksPvm+0x110>
                    buddy->bucket[level].last = prev;
    80002dbc:	00248793          	addi	a5,s1,2
    80002dc0:	00479793          	slli	a5,a5,0x4
    80002dc4:	00f989b3          	add	s3,s3,a5
    80002dc8:	00e9b423          	sd	a4,8(s3)
    80002dcc:	fd9ff06f          	j	80002da4 <_Z9addBlocksPvm+0x90>
                if(curr->next == nullptr)
    80002dd0:	0007b783          	ld	a5,0(a5)
    80002dd4:	00078c63          	beqz	a5,80002dec <_Z9addBlocksPvm+0xd8>
                    buddy->bucket[level].first = curr->next;
    80002dd8:	00248713          	addi	a4,s1,2
    80002ddc:	00471713          	slli	a4,a4,0x4
    80002de0:	00e989b3          	add	s3,s3,a4
    80002de4:	00f9b023          	sd	a5,0(s3)
    80002de8:	fbdff06f          	j	80002da4 <_Z9addBlocksPvm+0x90>
                    buddy->bucket[level].first = buddy->bucket[level].last = nullptr;
    80002dec:	00248793          	addi	a5,s1,2
    80002df0:	00479793          	slli	a5,a5,0x4
    80002df4:	00f989b3          	add	s3,s3,a5
    80002df8:	0009b423          	sd	zero,8(s3)
    80002dfc:	0009b023          	sd	zero,0(s3)
    80002e00:	fa5ff06f          	j	80002da4 <_Z9addBlocksPvm+0x90>
            else addBlocks((void*)buddyBlockAddr, level + 1); //merge two chunks
    80002e04:	00148593          	addi	a1,s1,1
    80002e08:	00000097          	auipc	ra,0x0
    80002e0c:	f0c080e7          	jalr	-244(ra) # 80002d14 <_Z9addBlocksPvm>
            return;
    80002e10:	0140006f          	j	80002e24 <_Z9addBlocksPvm+0x110>
    addBlockToLevel(addr, level);
    80002e14:	00048593          	mv	a1,s1
    80002e18:	00090513          	mv	a0,s2
    80002e1c:	00000097          	auipc	ra,0x0
    80002e20:	ce4080e7          	jalr	-796(ra) # 80002b00 <_Z15addBlockToLevelPvm>
}
    80002e24:	02813083          	ld	ra,40(sp)
    80002e28:	02013403          	ld	s0,32(sp)
    80002e2c:	01813483          	ld	s1,24(sp)
    80002e30:	01013903          	ld	s2,16(sp)
    80002e34:	00813983          	ld	s3,8(sp)
    80002e38:	03010113          	addi	sp,sp,48
    80002e3c:	00008067          	ret

0000000080002e40 <_Z10buddy_initPvm>:
{
    80002e40:	fd010113          	addi	sp,sp,-48
    80002e44:	02113423          	sd	ra,40(sp)
    80002e48:	02813023          	sd	s0,32(sp)
    80002e4c:	00913c23          	sd	s1,24(sp)
    80002e50:	01213823          	sd	s2,16(sp)
    80002e54:	01313423          	sd	s3,8(sp)
    80002e58:	03010413          	addi	s0,sp,48
    80002e5c:	00058913          	mv	s2,a1
    size_t blockAddr = getBlockAddr((size_t)addr); //alling the address
    80002e60:	00050993          	mv	s3,a0
    80002e64:	00000097          	auipc	ra,0x0
    80002e68:	be4080e7          	jalr	-1052(ra) # 80002a48 <_Z12getBlockAddrm>
    if((size_t)addr != blockAddr) // if start address not aligned
    80002e6c:	00a98a63          	beq	s3,a0,80002e80 <_Z10buddy_initPvm+0x40>
        buddyAddr = getNextBlockAddr(blockAddr);
    80002e70:	00000097          	auipc	ra,0x0
    80002e74:	bf8080e7          	jalr	-1032(ra) # 80002a68 <_Z16getNextBlockAddrm>
    80002e78:	00050993          	mv	s3,a0
        numOfBlocks--; //have to discard one block
    80002e7c:	fff90913          	addi	s2,s2,-1
    numOfBlocks--; // take one block for buddy metadata
    80002e80:	fff90913          	addi	s2,s2,-1
    buddy = (buddyAllocator*)buddyAddr;
    80002e84:	00098493          	mv	s1,s3
    80002e88:	00006797          	auipc	a5,0x6
    80002e8c:	b737bc23          	sd	s3,-1160(a5) # 80008a00 <_ZL5buddy>
    buddy->startAddr = (void*)getNextBlockAddr(buddyAddr);
    80002e90:	00098513          	mv	a0,s3
    80002e94:	00000097          	auipc	ra,0x0
    80002e98:	bd4080e7          	jalr	-1068(ra) # 80002a68 <_Z16getNextBlockAddrm>
    80002e9c:	00a9b423          	sd	a0,8(s3)
    buddy->numOfBlocks = numOfBlocks;
    80002ea0:	0129b023          	sd	s2,0(s3)
    buddy->numOfFreeBlocks = numOfBlocks;
    80002ea4:	0129b823          	sd	s2,16(s3)
    buddy->maxLevel = getDeg2Floor(numOfBlocks);
    80002ea8:	00090513          	mv	a0,s2
    80002eac:	00000097          	auipc	ra,0x0
    80002eb0:	bec080e7          	jalr	-1044(ra) # 80002a98 <_Z12getDeg2Floorm>
    80002eb4:	00a9bc23          	sd	a0,24(s3)
    for(size_t i = 0; i <= buddy->maxLevel;i++)
    80002eb8:	00000713          	li	a4,0
    80002ebc:	0184b783          	ld	a5,24(s1)
    80002ec0:	02e7e063          	bltu	a5,a4,80002ee0 <_Z10buddy_initPvm+0xa0>
        buddy->bucket[i].first = buddy->bucket[i].last = nullptr;
    80002ec4:	00270793          	addi	a5,a4,2
    80002ec8:	00479793          	slli	a5,a5,0x4
    80002ecc:	00f487b3          	add	a5,s1,a5
    80002ed0:	0007b423          	sd	zero,8(a5)
    80002ed4:	0007b023          	sd	zero,0(a5)
    for(size_t i = 0; i <= buddy->maxLevel;i++)
    80002ed8:	00170713          	addi	a4,a4,1
    80002edc:	fe1ff06f          	j	80002ebc <_Z10buddy_initPvm+0x7c>
    for(size_t i = 0;i < numOfBlocks;i++)
    80002ee0:	00000493          	li	s1,0
    80002ee4:	0324f663          	bgeu	s1,s2,80002f10 <_Z10buddy_initPvm+0xd0>
        addBlocks((block*)buddy->startAddr + i, 0);
    80002ee8:	00006797          	auipc	a5,0x6
    80002eec:	b187b783          	ld	a5,-1256(a5) # 80008a00 <_ZL5buddy>
    80002ef0:	0087b503          	ld	a0,8(a5)
    80002ef4:	00c49793          	slli	a5,s1,0xc
    80002ef8:	00000593          	li	a1,0
    80002efc:	00f50533          	add	a0,a0,a5
    80002f00:	00000097          	auipc	ra,0x0
    80002f04:	e14080e7          	jalr	-492(ra) # 80002d14 <_Z9addBlocksPvm>
    for(size_t i = 0;i < numOfBlocks;i++)
    80002f08:	00148493          	addi	s1,s1,1
    80002f0c:	fd9ff06f          	j	80002ee4 <_Z10buddy_initPvm+0xa4>
}
    80002f10:	00006517          	auipc	a0,0x6
    80002f14:	af053503          	ld	a0,-1296(a0) # 80008a00 <_ZL5buddy>
    80002f18:	02813083          	ld	ra,40(sp)
    80002f1c:	02013403          	ld	s0,32(sp)
    80002f20:	01813483          	ld	s1,24(sp)
    80002f24:	01013903          	ld	s2,16(sp)
    80002f28:	00813983          	ld	s3,8(sp)
    80002f2c:	03010113          	addi	sp,sp,48
    80002f30:	00008067          	ret

0000000080002f34 <_Z10buddy_freePvm>:
{
    80002f34:	fe010113          	addi	sp,sp,-32
    80002f38:	00113c23          	sd	ra,24(sp)
    80002f3c:	00813823          	sd	s0,16(sp)
    80002f40:	00913423          	sd	s1,8(sp)
    80002f44:	01213023          	sd	s2,0(sp)
    80002f48:	02010413          	addi	s0,sp,32
    80002f4c:	00050913          	mv	s2,a0
    size_t level = getDeg2Ceil(numOfBlocks);
    80002f50:	00058513          	mv	a0,a1
    80002f54:	00000097          	auipc	ra,0x0
    80002f58:	b78080e7          	jalr	-1160(ra) # 80002acc <_Z11getDeg2Ceilm>
    80002f5c:	00050493          	mv	s1,a0
    addBlocks(addr, level); //adds free blocks
    80002f60:	00050593          	mv	a1,a0
    80002f64:	00090513          	mv	a0,s2
    80002f68:	00000097          	auipc	ra,0x0
    80002f6c:	dac080e7          	jalr	-596(ra) # 80002d14 <_Z9addBlocksPvm>
    buddy->numOfFreeBlocks += (1 << level);
    80002f70:	00006797          	auipc	a5,0x6
    80002f74:	a907b783          	ld	a5,-1392(a5) # 80008a00 <_ZL5buddy>
    80002f78:	00100513          	li	a0,1
    80002f7c:	0095153b          	sllw	a0,a0,s1
    80002f80:	0107b483          	ld	s1,16(a5)
    80002f84:	00a484b3          	add	s1,s1,a0
    80002f88:	0097b823          	sd	s1,16(a5)
}
    80002f8c:	01813083          	ld	ra,24(sp)
    80002f90:	01013403          	ld	s0,16(sp)
    80002f94:	00813483          	ld	s1,8(sp)
    80002f98:	00013903          	ld	s2,0(sp)
    80002f9c:	02010113          	addi	sp,sp,32
    80002fa0:	00008067          	ret

0000000080002fa4 <_Z14printBuddyInfov>:

void printBuddyInfo()
{
    80002fa4:	fe010113          	addi	sp,sp,-32
    80002fa8:	00113c23          	sd	ra,24(sp)
    80002fac:	00813823          	sd	s0,16(sp)
    80002fb0:	00913423          	sd	s1,8(sp)
    80002fb4:	01213023          	sd	s2,0(sp)
    80002fb8:	02010413          	addi	s0,sp,32
    KConsole::trapPrintString("Buddy info-------------------------------------------\n");
    80002fbc:	00005517          	auipc	a0,0x5
    80002fc0:	29450513          	addi	a0,a0,660 # 80008250 <CONSOLE_STATUS+0x240>
    80002fc4:	00000097          	auipc	ra,0x0
    80002fc8:	61c080e7          	jalr	1564(ra) # 800035e0 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintStringInt("Buddy starting address ", (size_t)buddy->startAddr, 16);
    80002fcc:	00006497          	auipc	s1,0x6
    80002fd0:	a3448493          	addi	s1,s1,-1484 # 80008a00 <_ZL5buddy>
    80002fd4:	0004b783          	ld	a5,0(s1)
    80002fd8:	01000613          	li	a2,16
    80002fdc:	0087b583          	ld	a1,8(a5)
    80002fe0:	00005517          	auipc	a0,0x5
    80002fe4:	2a850513          	addi	a0,a0,680 # 80008288 <CONSOLE_STATUS+0x278>
    80002fe8:	00000097          	auipc	ra,0x0
    80002fec:	6d0080e7          	jalr	1744(ra) # 800036b8 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Buddy number of blocks ", buddy->numOfBlocks);
    80002ff0:	0004b783          	ld	a5,0(s1)
    80002ff4:	00a00613          	li	a2,10
    80002ff8:	0007b583          	ld	a1,0(a5)
    80002ffc:	00005517          	auipc	a0,0x5
    80003000:	2a450513          	addi	a0,a0,676 # 800082a0 <CONSOLE_STATUS+0x290>
    80003004:	00000097          	auipc	ra,0x0
    80003008:	6b4080e7          	jalr	1716(ra) # 800036b8 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Buddy number of free blocks ", buddy->numOfFreeBlocks);
    8000300c:	0004b783          	ld	a5,0(s1)
    80003010:	00a00613          	li	a2,10
    80003014:	0107b583          	ld	a1,16(a5)
    80003018:	00005517          	auipc	a0,0x5
    8000301c:	2a050513          	addi	a0,a0,672 # 800082b8 <CONSOLE_STATUS+0x2a8>
    80003020:	00000097          	auipc	ra,0x0
    80003024:	698080e7          	jalr	1688(ra) # 800036b8 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    for(int i = buddy->maxLevel;i>=0;i--)
    80003028:	0004b783          	ld	a5,0(s1)
    8000302c:	0187a903          	lw	s2,24(a5)
    80003030:	0080006f          	j	80003038 <_Z14printBuddyInfov+0x94>
    80003034:	fff9091b          	addiw	s2,s2,-1
    80003038:	06094a63          	bltz	s2,800030ac <_Z14printBuddyInfov+0x108>
    {
        KConsole::trapPrintStringInt("Level ",i);
    8000303c:	00a00613          	li	a2,10
    80003040:	00090593          	mv	a1,s2
    80003044:	00005517          	auipc	a0,0x5
    80003048:	29450513          	addi	a0,a0,660 # 800082d8 <CONSOLE_STATUS+0x2c8>
    8000304c:	00000097          	auipc	ra,0x0
    80003050:	66c080e7          	jalr	1644(ra) # 800036b8 <_ZN8KConsole18trapPrintStringIntEPKcmi>
        KConsole::trapPrintString("Free blocks on this level\n");
    80003054:	00005517          	auipc	a0,0x5
    80003058:	28c50513          	addi	a0,a0,652 # 800082e0 <CONSOLE_STATUS+0x2d0>
    8000305c:	00000097          	auipc	ra,0x0
    80003060:	584080e7          	jalr	1412(ra) # 800035e0 <_ZN8KConsole15trapPrintStringEPKc>
        buddyBlock* curr = buddy->bucket[i].first;
    80003064:	00290793          	addi	a5,s2,2
    80003068:	00479713          	slli	a4,a5,0x4
    8000306c:	00006797          	auipc	a5,0x6
    80003070:	9947b783          	ld	a5,-1644(a5) # 80008a00 <_ZL5buddy>
    80003074:	00e787b3          	add	a5,a5,a4
    80003078:	0007b483          	ld	s1,0(a5)
        while(curr != 0)
    8000307c:	fa048ce3          	beqz	s1,80003034 <_Z14printBuddyInfov+0x90>
        {
            KConsole::trapPrintInt((size_t)curr, 16);
    80003080:	00000613          	li	a2,0
    80003084:	01000593          	li	a1,16
    80003088:	00048513          	mv	a0,s1
    8000308c:	00000097          	auipc	ra,0x0
    80003090:	598080e7          	jalr	1432(ra) # 80003624 <_ZN8KConsole12trapPrintIntEmii>
            KConsole::trapPrintString("\n");
    80003094:	00005517          	auipc	a0,0x5
    80003098:	0e450513          	addi	a0,a0,228 # 80008178 <CONSOLE_STATUS+0x168>
    8000309c:	00000097          	auipc	ra,0x0
    800030a0:	544080e7          	jalr	1348(ra) # 800035e0 <_ZN8KConsole15trapPrintStringEPKc>
            curr = curr->next;
    800030a4:	0004b483          	ld	s1,0(s1)
        while(curr != 0)
    800030a8:	fd5ff06f          	j	8000307c <_Z14printBuddyInfov+0xd8>
        }
    }
    KConsole::trapPrintString("End of buddy info-------------------------------------------\n");
    800030ac:	00005517          	auipc	a0,0x5
    800030b0:	25450513          	addi	a0,a0,596 # 80008300 <CONSOLE_STATUS+0x2f0>
    800030b4:	00000097          	auipc	ra,0x0
    800030b8:	52c080e7          	jalr	1324(ra) # 800035e0 <_ZN8KConsole15trapPrintStringEPKc>
}
    800030bc:	01813083          	ld	ra,24(sp)
    800030c0:	01013403          	ld	s0,16(sp)
    800030c4:	00813483          	ld	s1,8(sp)
    800030c8:	00013903          	ld	s2,0(sp)
    800030cc:	02010113          	addi	sp,sp,32
    800030d0:	00008067          	ret

00000000800030d4 <_Z8getBuddyv>:

void* getBuddy()
{
    800030d4:	ff010113          	addi	sp,sp,-16
    800030d8:	00813423          	sd	s0,8(sp)
    800030dc:	01010413          	addi	s0,sp,16
    return (void*)buddy;
    800030e0:	00006517          	auipc	a0,0x6
    800030e4:	92053503          	ld	a0,-1760(a0) # 80008a00 <_ZL5buddy>
    800030e8:	00813403          	ld	s0,8(sp)
    800030ec:	01010113          	addi	sp,sp,16
    800030f0:	00008067          	ret

00000000800030f4 <_ZN8KConsole10initializeEv>:
char* KConsole::outputBuffer = nullptr;
uint64 KConsole::pendingPutc = 0;
bool KConsole::finished = false;

void KConsole::initialize()
{
    800030f4:	fe010113          	addi	sp,sp,-32
    800030f8:	00113c23          	sd	ra,24(sp)
    800030fc:	00813823          	sd	s0,16(sp)
    80003100:	00913423          	sd	s1,8(sp)
    80003104:	01213023          	sd	s2,0(sp)
    80003108:	02010413          	addi	s0,sp,32
    hasCharactersInput = new KSemaphore(0);
    8000310c:	01800513          	li	a0,24
    80003110:	00002097          	auipc	ra,0x2
    80003114:	244080e7          	jalr	580(ra) # 80005354 <_ZN10KSemaphorenwEm>
    80003118:	00050493          	mv	s1,a0
    8000311c:	00050863          	beqz	a0,8000312c <_ZN8KConsole10initializeEv+0x38>
    80003120:	00000593          	li	a1,0
    80003124:	00002097          	auipc	ra,0x2
    80003128:	fcc080e7          	jalr	-52(ra) # 800050f0 <_ZN10KSemaphoreC1Ei>
    8000312c:	00006797          	auipc	a5,0x6
    80003130:	8c97be23          	sd	s1,-1828(a5) # 80008a08 <_ZN8KConsole18hasCharactersInputE>
    hasCharactersOutput = new KSemaphore(0);
    80003134:	01800513          	li	a0,24
    80003138:	00002097          	auipc	ra,0x2
    8000313c:	21c080e7          	jalr	540(ra) # 80005354 <_ZN10KSemaphorenwEm>
    80003140:	00050493          	mv	s1,a0
    80003144:	00050863          	beqz	a0,80003154 <_ZN8KConsole10initializeEv+0x60>
    80003148:	00000593          	li	a1,0
    8000314c:	00002097          	auipc	ra,0x2
    80003150:	fa4080e7          	jalr	-92(ra) # 800050f0 <_ZN10KSemaphoreC1Ei>
    80003154:	00006917          	auipc	s2,0x6
    80003158:	8b490913          	addi	s2,s2,-1868 # 80008a08 <_ZN8KConsole18hasCharactersInputE>
    8000315c:	00993423          	sd	s1,8(s2)
    inputBuffer = (char*)kmalloc(bufferSize);
    80003160:	00004537          	lui	a0,0x4
    80003164:	fffff097          	auipc	ra,0xfffff
    80003168:	f0c080e7          	jalr	-244(ra) # 80002070 <_Z7kmallocm>
    8000316c:	00a93823          	sd	a0,16(s2)
    outputBuffer = (char*)kmalloc(bufferSize);
    80003170:	00004537          	lui	a0,0x4
    80003174:	fffff097          	auipc	ra,0xfffff
    80003178:	efc080e7          	jalr	-260(ra) # 80002070 <_Z7kmallocm>
    8000317c:	00a93c23          	sd	a0,24(s2)
}
    80003180:	01813083          	ld	ra,24(sp)
    80003184:	01013403          	ld	s0,16(sp)
    80003188:	00813483          	ld	s1,8(sp)
    8000318c:	00013903          	ld	s2,0(sp)
    80003190:	02010113          	addi	sp,sp,32
    80003194:	00008067          	ret
    80003198:	00050913          	mv	s2,a0
    hasCharactersInput = new KSemaphore(0);
    8000319c:	00048513          	mv	a0,s1
    800031a0:	00002097          	auipc	ra,0x2
    800031a4:	264080e7          	jalr	612(ra) # 80005404 <_ZN10KSemaphoredlEPv>
    800031a8:	00090513          	mv	a0,s2
    800031ac:	00007097          	auipc	ra,0x7
    800031b0:	9dc080e7          	jalr	-1572(ra) # 80009b88 <_Unwind_Resume>
    800031b4:	00050913          	mv	s2,a0
    hasCharactersOutput = new KSemaphore(0);
    800031b8:	00048513          	mv	a0,s1
    800031bc:	00002097          	auipc	ra,0x2
    800031c0:	248080e7          	jalr	584(ra) # 80005404 <_ZN10KSemaphoredlEPv>
    800031c4:	00090513          	mv	a0,s2
    800031c8:	00007097          	auipc	ra,0x7
    800031cc:	9c0080e7          	jalr	-1600(ra) # 80009b88 <_Unwind_Resume>

00000000800031d0 <_ZN8KConsole17putCharacterInputEc>:
    }
}

void KConsole::putCharacterInput(char c)
{
    if((inputTail+1)%bufferSize == inputHead)
    800031d0:	00006697          	auipc	a3,0x6
    800031d4:	83868693          	addi	a3,a3,-1992 # 80008a08 <_ZN8KConsole18hasCharactersInputE>
    800031d8:	0206b603          	ld	a2,32(a3)
    800031dc:	00160793          	addi	a5,a2,1
    800031e0:	00004737          	lui	a4,0x4
    800031e4:	fff70713          	addi	a4,a4,-1 # 3fff <_entry-0x7fffc001>
    800031e8:	00e7f7b3          	and	a5,a5,a4
    800031ec:	0286b703          	ld	a4,40(a3)
    800031f0:	04e78c63          	beq	a5,a4,80003248 <_ZN8KConsole17putCharacterInputEc+0x78>
{
    800031f4:	ff010113          	addi	sp,sp,-16
    800031f8:	00113423          	sd	ra,8(sp)
    800031fc:	00813023          	sd	s0,0(sp)
    80003200:	01010413          	addi	s0,sp,16
        return;
    inputBuffer[inputTail] = c;
    80003204:	00068713          	mv	a4,a3
    80003208:	0106b783          	ld	a5,16(a3)
    8000320c:	00c78633          	add	a2,a5,a2
    80003210:	00a60023          	sb	a0,0(a2)
    inputTail = (inputTail+1)%bufferSize;
    80003214:	0206b783          	ld	a5,32(a3)
    80003218:	00178793          	addi	a5,a5,1
    8000321c:	000046b7          	lui	a3,0x4
    80003220:	fff68693          	addi	a3,a3,-1 # 3fff <_entry-0x7fffc001>
    80003224:	00d7f7b3          	and	a5,a5,a3
    80003228:	02f73023          	sd	a5,32(a4)
    hasCharactersInput->signal();
    8000322c:	00073503          	ld	a0,0(a4)
    80003230:	00002097          	auipc	ra,0x2
    80003234:	0dc080e7          	jalr	220(ra) # 8000530c <_ZN10KSemaphore6signalEv>
}
    80003238:	00813083          	ld	ra,8(sp)
    8000323c:	00013403          	ld	s0,0(sp)
    80003240:	01010113          	addi	sp,sp,16
    80003244:	00008067          	ret
    80003248:	00008067          	ret

000000008000324c <_ZN8KConsole24getCharactersFromConsoleEv>:
    uint64 operation = *(uint8*)CONSOLE_STATUS;
    8000324c:	00005797          	auipc	a5,0x5
    80003250:	68c7b783          	ld	a5,1676(a5) # 800088d8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80003254:	0007b783          	ld	a5,0(a5)
    80003258:	0007c783          	lbu	a5,0(a5)
    if(operation & KConsole::STATUS_READ_MASK)
    8000325c:	0017f793          	andi	a5,a5,1
    80003260:	02078063          	beqz	a5,80003280 <_ZN8KConsole24getCharactersFromConsoleEv+0x34>
        char c = *(uint8*)CONSOLE_TX_DATA;
    80003264:	00005797          	auipc	a5,0x5
    80003268:	6ac7b783          	ld	a5,1708(a5) # 80008910 <_GLOBAL_OFFSET_TABLE_+0x48>
    8000326c:	0007b783          	ld	a5,0(a5)
    80003270:	0007c503          	lbu	a0,0(a5)
        if(KConsole::pendingGetc > 0)
    80003274:	00005797          	auipc	a5,0x5
    80003278:	7c47b783          	ld	a5,1988(a5) # 80008a38 <_ZN8KConsole11pendingGetcE>
    8000327c:	00079463          	bnez	a5,80003284 <_ZN8KConsole24getCharactersFromConsoleEv+0x38>
    80003280:	00008067          	ret
{
    80003284:	ff010113          	addi	sp,sp,-16
    80003288:	00113423          	sd	ra,8(sp)
    8000328c:	00813023          	sd	s0,0(sp)
    80003290:	01010413          	addi	s0,sp,16
            KConsole::pendingGetc--;
    80003294:	fff78793          	addi	a5,a5,-1
    80003298:	00005717          	auipc	a4,0x5
    8000329c:	7af73023          	sd	a5,1952(a4) # 80008a38 <_ZN8KConsole11pendingGetcE>
            KConsole::putCharacterInput(c);
    800032a0:	00000097          	auipc	ra,0x0
    800032a4:	f30080e7          	jalr	-208(ra) # 800031d0 <_ZN8KConsole17putCharacterInputEc>
}
    800032a8:	00813083          	ld	ra,8(sp)
    800032ac:	00013403          	ld	s0,0(sp)
    800032b0:	01010113          	addi	sp,sp,16
    800032b4:	00008067          	ret

00000000800032b8 <_ZN8KConsole17getCharacterInputEv>:

char KConsole::getCharacterInput()
{
    800032b8:	fe010113          	addi	sp,sp,-32
    800032bc:	00113c23          	sd	ra,24(sp)
    800032c0:	00813823          	sd	s0,16(sp)
    800032c4:	00913423          	sd	s1,8(sp)
    800032c8:	02010413          	addi	s0,sp,32
    hasCharactersInput->wait();
    800032cc:	00005497          	auipc	s1,0x5
    800032d0:	73c48493          	addi	s1,s1,1852 # 80008a08 <_ZN8KConsole18hasCharactersInputE>
    800032d4:	0004b503          	ld	a0,0(s1)
    800032d8:	00002097          	auipc	ra,0x2
    800032dc:	ebc080e7          	jalr	-324(ra) # 80005194 <_ZN10KSemaphore4waitEv>
    if(inputHead == inputTail)
    800032e0:	0284b783          	ld	a5,40(s1)
    800032e4:	0204b703          	ld	a4,32(s1)
    800032e8:	02e78c63          	beq	a5,a4,80003320 <_ZN8KConsole17getCharacterInputEv+0x68>
        return -1;
    char c = inputBuffer[inputHead];
    800032ec:	0104b703          	ld	a4,16(s1)
    800032f0:	00f70733          	add	a4,a4,a5
    800032f4:	00074503          	lbu	a0,0(a4)
    inputHead = (inputHead+1)%bufferSize;
    800032f8:	00178793          	addi	a5,a5,1
    800032fc:	00004737          	lui	a4,0x4
    80003300:	fff70713          	addi	a4,a4,-1 # 3fff <_entry-0x7fffc001>
    80003304:	00e7f7b3          	and	a5,a5,a4
    80003308:	02f4b423          	sd	a5,40(s1)
    return c;
}
    8000330c:	01813083          	ld	ra,24(sp)
    80003310:	01013403          	ld	s0,16(sp)
    80003314:	00813483          	ld	s1,8(sp)
    80003318:	02010113          	addi	sp,sp,32
    8000331c:	00008067          	ret
        return -1;
    80003320:	0ff00513          	li	a0,255
    80003324:	fe9ff06f          	j	8000330c <_ZN8KConsole17getCharacterInputEv+0x54>

0000000080003328 <_ZN8KConsole18putCharacterOutputEc>:

void KConsole::putCharacterOutput(char c)
{
    if((outputTail+1)%bufferSize == outputHead)
    80003328:	00005697          	auipc	a3,0x5
    8000332c:	6e068693          	addi	a3,a3,1760 # 80008a08 <_ZN8KConsole18hasCharactersInputE>
    80003330:	0386b603          	ld	a2,56(a3)
    80003334:	00160793          	addi	a5,a2,1
    80003338:	00004737          	lui	a4,0x4
    8000333c:	fff70713          	addi	a4,a4,-1 # 3fff <_entry-0x7fffc001>
    80003340:	00e7f7b3          	and	a5,a5,a4
    80003344:	0406b703          	ld	a4,64(a3)
    80003348:	06e78263          	beq	a5,a4,800033ac <_ZN8KConsole18putCharacterOutputEc+0x84>
{
    8000334c:	ff010113          	addi	sp,sp,-16
    80003350:	00113423          	sd	ra,8(sp)
    80003354:	00813023          	sd	s0,0(sp)
    80003358:	01010413          	addi	s0,sp,16
        return;
    pendingPutc++;
    8000335c:	00068793          	mv	a5,a3
    80003360:	0486b703          	ld	a4,72(a3)
    80003364:	00170713          	addi	a4,a4,1
    80003368:	04e6b423          	sd	a4,72(a3)
    outputBuffer[outputTail] = c;
    8000336c:	0186b703          	ld	a4,24(a3)
    80003370:	00c70633          	add	a2,a4,a2
    80003374:	00a60023          	sb	a0,0(a2)
    outputTail = (outputTail+1)%bufferSize;
    80003378:	0386b703          	ld	a4,56(a3)
    8000337c:	00170713          	addi	a4,a4,1
    80003380:	000046b7          	lui	a3,0x4
    80003384:	fff68693          	addi	a3,a3,-1 # 3fff <_entry-0x7fffc001>
    80003388:	00d77733          	and	a4,a4,a3
    8000338c:	02e7bc23          	sd	a4,56(a5)
    hasCharactersOutput->signal();
    80003390:	0087b503          	ld	a0,8(a5)
    80003394:	00002097          	auipc	ra,0x2
    80003398:	f78080e7          	jalr	-136(ra) # 8000530c <_ZN10KSemaphore6signalEv>
}
    8000339c:	00813083          	ld	ra,8(sp)
    800033a0:	00013403          	ld	s0,0(sp)
    800033a4:	01010113          	addi	sp,sp,16
    800033a8:	00008067          	ret
    800033ac:	00008067          	ret

00000000800033b0 <_ZN8KConsole18getCharacterOutputEv>:

char KConsole::getCharacterOutput()
{
    800033b0:	fe010113          	addi	sp,sp,-32
    800033b4:	00113c23          	sd	ra,24(sp)
    800033b8:	00813823          	sd	s0,16(sp)
    800033bc:	00913423          	sd	s1,8(sp)
    800033c0:	02010413          	addi	s0,sp,32
    hasCharactersOutput->wait();
    800033c4:	00005497          	auipc	s1,0x5
    800033c8:	64448493          	addi	s1,s1,1604 # 80008a08 <_ZN8KConsole18hasCharactersInputE>
    800033cc:	0084b503          	ld	a0,8(s1)
    800033d0:	00002097          	auipc	ra,0x2
    800033d4:	dc4080e7          	jalr	-572(ra) # 80005194 <_ZN10KSemaphore4waitEv>
    if(outputHead == outputTail)
    800033d8:	0404b783          	ld	a5,64(s1)
    800033dc:	0384b703          	ld	a4,56(s1)
    800033e0:	02e78c63          	beq	a5,a4,80003418 <_ZN8KConsole18getCharacterOutputEv+0x68>
        return -1;
    char c = outputBuffer[outputHead];
    800033e4:	0184b703          	ld	a4,24(s1)
    800033e8:	00f70733          	add	a4,a4,a5
    800033ec:	00074503          	lbu	a0,0(a4)
    outputHead = (outputHead+1)%bufferSize;
    800033f0:	00178793          	addi	a5,a5,1
    800033f4:	00004737          	lui	a4,0x4
    800033f8:	fff70713          	addi	a4,a4,-1 # 3fff <_entry-0x7fffc001>
    800033fc:	00e7f7b3          	and	a5,a5,a4
    80003400:	04f4b023          	sd	a5,64(s1)
    return c;
}
    80003404:	01813083          	ld	ra,24(sp)
    80003408:	01013403          	ld	s0,16(sp)
    8000340c:	00813483          	ld	s1,8(sp)
    80003410:	02010113          	addi	sp,sp,32
    80003414:	00008067          	ret
        return -1;
    80003418:	0ff00513          	li	a0,255
    8000341c:	fe9ff06f          	j	80003404 <_ZN8KConsole18getCharacterOutputEv+0x54>

0000000080003420 <_ZN8KConsole11putcHandlerEv>:

void KConsole::putcHandler()
{
    80003420:	ff010113          	addi	sp,sp,-16
    80003424:	00113423          	sd	ra,8(sp)
    80003428:	00813023          	sd	s0,0(sp)
    8000342c:	01010413          	addi	s0,sp,16
    uint64 ch;
    __asm__ volatile("mv %0, a1" : "=r"(ch));
    80003430:	00058513          	mv	a0,a1
    putCharacterOutput((char)ch);
    80003434:	0ff57513          	andi	a0,a0,255
    80003438:	00000097          	auipc	ra,0x0
    8000343c:	ef0080e7          	jalr	-272(ra) # 80003328 <_ZN8KConsole18putCharacterOutputEc>
}
    80003440:	00813083          	ld	ra,8(sp)
    80003444:	00013403          	ld	s0,0(sp)
    80003448:	01010113          	addi	sp,sp,16
    8000344c:	00008067          	ret

0000000080003450 <_ZN8KConsole11getcHandlerEv>:

void KConsole::getcHandler()
{
    80003450:	fe010113          	addi	sp,sp,-32
    80003454:	00113c23          	sd	ra,24(sp)
    80003458:	00813823          	sd	s0,16(sp)
    8000345c:	00913423          	sd	s1,8(sp)
    80003460:	02010413          	addi	s0,sp,32
    pendingGetc++;
    80003464:	00005717          	auipc	a4,0x5
    80003468:	5a470713          	addi	a4,a4,1444 # 80008a08 <_ZN8KConsole18hasCharactersInputE>
    8000346c:	03073783          	ld	a5,48(a4)
    80003470:	00178793          	addi	a5,a5,1
    80003474:	02f73823          	sd	a5,48(a4)
    char ch;
    ch = getCharacterInput();
    80003478:	00000097          	auipc	ra,0x0
    8000347c:	e40080e7          	jalr	-448(ra) # 800032b8 <_ZN8KConsole17getCharacterInputEv>
    80003480:	00050493          	mv	s1,a0
    if(ch!=0x01b)
    80003484:	01b00793          	li	a5,27
    80003488:	02f51663          	bne	a0,a5,800034b4 <_ZN8KConsole11getcHandlerEv+0x64>
        putCharacterOutput(ch);

    if(ch==13)
    8000348c:	00d00793          	li	a5,13
    80003490:	02f48863          	beq	s1,a5,800034c0 <_ZN8KConsole11getcHandlerEv+0x70>
    {
        putCharacterOutput(13);
        putCharacterOutput(10);
    }

    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    80003494:	00048513          	mv	a0,s1
    Riscv::w_a0_sscratch();
    80003498:	00001097          	auipc	ra,0x1
    8000349c:	e38080e7          	jalr	-456(ra) # 800042d0 <_ZN5Riscv13w_a0_sscratchEv>
}
    800034a0:	01813083          	ld	ra,24(sp)
    800034a4:	01013403          	ld	s0,16(sp)
    800034a8:	00813483          	ld	s1,8(sp)
    800034ac:	02010113          	addi	sp,sp,32
    800034b0:	00008067          	ret
        putCharacterOutput(ch);
    800034b4:	00000097          	auipc	ra,0x0
    800034b8:	e74080e7          	jalr	-396(ra) # 80003328 <_ZN8KConsole18putCharacterOutputEc>
    800034bc:	fd1ff06f          	j	8000348c <_ZN8KConsole11getcHandlerEv+0x3c>
        putCharacterOutput(13);
    800034c0:	00d00513          	li	a0,13
    800034c4:	00000097          	auipc	ra,0x0
    800034c8:	e64080e7          	jalr	-412(ra) # 80003328 <_ZN8KConsole18putCharacterOutputEc>
        putCharacterOutput(10);
    800034cc:	00a00513          	li	a0,10
    800034d0:	00000097          	auipc	ra,0x0
    800034d4:	e58080e7          	jalr	-424(ra) # 80003328 <_ZN8KConsole18putCharacterOutputEc>
    800034d8:	fbdff06f          	j	80003494 <_ZN8KConsole11getcHandlerEv+0x44>

00000000800034dc <_ZN8KConsole17outputBufferEmptyEv>:

bool KConsole::outputBufferEmpty()
{
    800034dc:	ff010113          	addi	sp,sp,-16
    800034e0:	00813423          	sd	s0,8(sp)
    800034e4:	01010413          	addi	s0,sp,16
    return pendingPutc == 0;
}
    800034e8:	00005517          	auipc	a0,0x5
    800034ec:	56853503          	ld	a0,1384(a0) # 80008a50 <_ZN8KConsole11pendingPutcE>
    800034f0:	00153513          	seqz	a0,a0
    800034f4:	00813403          	ld	s0,8(sp)
    800034f8:	01010113          	addi	sp,sp,16
    800034fc:	00008067          	ret

0000000080003500 <_ZN8KConsole23sendCharactersToConsoleEPv>:
{
    80003500:	fe010113          	addi	sp,sp,-32
    80003504:	00113c23          	sd	ra,24(sp)
    80003508:	00813823          	sd	s0,16(sp)
    8000350c:	02010413          	addi	s0,sp,32
    80003510:	0180006f          	j	80003528 <_ZN8KConsole23sendCharactersToConsoleEPv+0x28>
                thread_exit_kernel();
    80003514:	ffffe097          	auipc	ra,0xffffe
    80003518:	d6c080e7          	jalr	-660(ra) # 80001280 <_Z18thread_exit_kernelv>
    8000351c:	0340006f          	j	80003550 <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
                thread_dispatch_kernel();
    80003520:	ffffe097          	auipc	ra,0xffffe
    80003524:	d18080e7          	jalr	-744(ra) # 80001238 <_Z22thread_dispatch_kernelv>
            if(Riscv::finishSystem && KConsole::outputBufferEmpty() && pendingGetc == 0)
    80003528:	00005797          	auipc	a5,0x5
    8000352c:	4207b783          	ld	a5,1056(a5) # 80008948 <_GLOBAL_OFFSET_TABLE_+0x80>
    80003530:	0007c783          	lbu	a5,0(a5)
    80003534:	00078e63          	beqz	a5,80003550 <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
    80003538:	00000097          	auipc	ra,0x0
    8000353c:	fa4080e7          	jalr	-92(ra) # 800034dc <_ZN8KConsole17outputBufferEmptyEv>
    80003540:	00050863          	beqz	a0,80003550 <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
    80003544:	00005797          	auipc	a5,0x5
    80003548:	4f47b783          	ld	a5,1268(a5) # 80008a38 <_ZN8KConsole11pendingGetcE>
    8000354c:	fc0784e3          	beqz	a5,80003514 <_ZN8KConsole23sendCharactersToConsoleEPv+0x14>
            uint64 operation = *(uint8*)CONSOLE_STATUS;
    80003550:	00005797          	auipc	a5,0x5
    80003554:	3887b783          	ld	a5,904(a5) # 800088d8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80003558:	0007b783          	ld	a5,0(a5)
    8000355c:	0007c783          	lbu	a5,0(a5)
            if ((operation & STATUS_WRITE_MASK) && pendingPutc > 0)
    80003560:	0207f793          	andi	a5,a5,32
    80003564:	fa078ee3          	beqz	a5,80003520 <_ZN8KConsole23sendCharactersToConsoleEPv+0x20>
    80003568:	00005797          	auipc	a5,0x5
    8000356c:	4e87b783          	ld	a5,1256(a5) # 80008a50 <_ZN8KConsole11pendingPutcE>
    80003570:	fa0788e3          	beqz	a5,80003520 <_ZN8KConsole23sendCharactersToConsoleEPv+0x20>
                char volatile c = sysCallGetCharOutput();
    80003574:	ffffe097          	auipc	ra,0xffffe
    80003578:	ce4080e7          	jalr	-796(ra) # 80001258 <_Z20sysCallGetCharOutputv>
    8000357c:	fea407a3          	sb	a0,-17(s0)
                pendingPutc--;
    80003580:	00005717          	auipc	a4,0x5
    80003584:	48870713          	addi	a4,a4,1160 # 80008a08 <_ZN8KConsole18hasCharactersInputE>
    80003588:	04873783          	ld	a5,72(a4)
    8000358c:	fff78793          	addi	a5,a5,-1
    80003590:	04f73423          	sd	a5,72(a4)
                *(uint8*)CONSOLE_RX_DATA = c;
    80003594:	00005797          	auipc	a5,0x5
    80003598:	33c7b783          	ld	a5,828(a5) # 800088d0 <_GLOBAL_OFFSET_TABLE_+0x8>
    8000359c:	0007b783          	ld	a5,0(a5)
    800035a0:	fef44703          	lbu	a4,-17(s0)
    800035a4:	00e78023          	sb	a4,0(a5)
    800035a8:	f81ff06f          	j	80003528 <_ZN8KConsole23sendCharactersToConsoleEPv+0x28>

00000000800035ac <_ZN8KConsole14getCharHandlerEv>:

void KConsole::getCharHandler()
{
    800035ac:	ff010113          	addi	sp,sp,-16
    800035b0:	00113423          	sd	ra,8(sp)
    800035b4:	00813023          	sd	s0,0(sp)
    800035b8:	01010413          	addi	s0,sp,16
    char ch;
    ch = getCharacterOutput();
    800035bc:	00000097          	auipc	ra,0x0
    800035c0:	df4080e7          	jalr	-524(ra) # 800033b0 <_ZN8KConsole18getCharacterOutputEv>
    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    800035c4:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    800035c8:	00001097          	auipc	ra,0x1
    800035cc:	d08080e7          	jalr	-760(ra) # 800042d0 <_ZN5Riscv13w_a0_sscratchEv>
}
    800035d0:	00813083          	ld	ra,8(sp)
    800035d4:	00013403          	ld	s0,0(sp)
    800035d8:	01010113          	addi	sp,sp,16
    800035dc:	00008067          	ret

00000000800035e0 <_ZN8KConsole15trapPrintStringEPKc>:

void KConsole::trapPrintString(const char *string)
{
    800035e0:	fe010113          	addi	sp,sp,-32
    800035e4:	00113c23          	sd	ra,24(sp)
    800035e8:	00813823          	sd	s0,16(sp)
    800035ec:	00913423          	sd	s1,8(sp)
    800035f0:	02010413          	addi	s0,sp,32
    800035f4:	00050493          	mv	s1,a0
    while (*string != '\0')
    800035f8:	0004c503          	lbu	a0,0(s1)
    800035fc:	00050a63          	beqz	a0,80003610 <_ZN8KConsole15trapPrintStringEPKc+0x30>
    {
        KConsole::putCharacterOutput(*string);
    80003600:	00000097          	auipc	ra,0x0
    80003604:	d28080e7          	jalr	-728(ra) # 80003328 <_ZN8KConsole18putCharacterOutputEc>
        string++;
    80003608:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    8000360c:	fedff06f          	j	800035f8 <_ZN8KConsole15trapPrintStringEPKc+0x18>
    }
}
    80003610:	01813083          	ld	ra,24(sp)
    80003614:	01013403          	ld	s0,16(sp)
    80003618:	00813483          	ld	s1,8(sp)
    8000361c:	02010113          	addi	sp,sp,32
    80003620:	00008067          	ret

0000000080003624 <_ZN8KConsole12trapPrintIntEmii>:

void KConsole::trapPrintInt(size_t xx, int base, int sgn)
{
    80003624:	fb010113          	addi	sp,sp,-80
    80003628:	04113423          	sd	ra,72(sp)
    8000362c:	04813023          	sd	s0,64(sp)
    80003630:	02913c23          	sd	s1,56(sp)
    80003634:	05010413          	addi	s0,sp,80
    char digits[] = "0123456789ABCDEF";
    80003638:	00005797          	auipc	a5,0x5
    8000363c:	d0878793          	addi	a5,a5,-760 # 80008340 <CONSOLE_STATUS+0x330>
    80003640:	0007b703          	ld	a4,0(a5)
    80003644:	fce43423          	sd	a4,-56(s0)
    80003648:	0087b703          	ld	a4,8(a5)
    8000364c:	fce43823          	sd	a4,-48(s0)
    80003650:	0107c783          	lbu	a5,16(a5)
    80003654:	fcf40c23          	sb	a5,-40(s0)
        x = -xx;
    } else {
        x = xx;
    }

    i = 0;
    80003658:	00000493          	li	s1,0
    do {
        buf[i++] = digits[x % base];
    8000365c:	02b57733          	remu	a4,a0,a1
    80003660:	fe040693          	addi	a3,s0,-32
    80003664:	00e68733          	add	a4,a3,a4
    80003668:	fe874703          	lbu	a4,-24(a4)
    8000366c:	009687b3          	add	a5,a3,s1
    80003670:	0014849b          	addiw	s1,s1,1
    80003674:	fce78c23          	sb	a4,-40(a5)
    }while((x /= base) != 0);
    80003678:	00050793          	mv	a5,a0
    8000367c:	02b55533          	divu	a0,a0,a1
    80003680:	fcb7fee3          	bgeu	a5,a1,8000365c <_ZN8KConsole12trapPrintIntEmii+0x38>
    if(neg)
        buf[i++] = '-';

    while(--i >= 0)
    80003684:	fff4849b          	addiw	s1,s1,-1
    80003688:	0004ce63          	bltz	s1,800036a4 <_ZN8KConsole12trapPrintIntEmii+0x80>
        KConsole::putCharacterOutput(buf[i]);
    8000368c:	fe040793          	addi	a5,s0,-32
    80003690:	009787b3          	add	a5,a5,s1
    80003694:	fd87c503          	lbu	a0,-40(a5)
    80003698:	00000097          	auipc	ra,0x0
    8000369c:	c90080e7          	jalr	-880(ra) # 80003328 <_ZN8KConsole18putCharacterOutputEc>
    800036a0:	fe5ff06f          	j	80003684 <_ZN8KConsole12trapPrintIntEmii+0x60>
}
    800036a4:	04813083          	ld	ra,72(sp)
    800036a8:	04013403          	ld	s0,64(sp)
    800036ac:	03813483          	ld	s1,56(sp)
    800036b0:	05010113          	addi	sp,sp,80
    800036b4:	00008067          	ret

00000000800036b8 <_ZN8KConsole18trapPrintStringIntEPKcmi>:

void KConsole::trapPrintStringInt(const char *string, size_t xx, int base)
{
    800036b8:	fe010113          	addi	sp,sp,-32
    800036bc:	00113c23          	sd	ra,24(sp)
    800036c0:	00813823          	sd	s0,16(sp)
    800036c4:	00913423          	sd	s1,8(sp)
    800036c8:	01213023          	sd	s2,0(sp)
    800036cc:	02010413          	addi	s0,sp,32
    800036d0:	00058493          	mv	s1,a1
    800036d4:	00060913          	mv	s2,a2
    trapPrintString(string);
    800036d8:	00000097          	auipc	ra,0x0
    800036dc:	f08080e7          	jalr	-248(ra) # 800035e0 <_ZN8KConsole15trapPrintStringEPKc>
    trapPrintInt(xx,base);
    800036e0:	00000613          	li	a2,0
    800036e4:	00090593          	mv	a1,s2
    800036e8:	00048513          	mv	a0,s1
    800036ec:	00000097          	auipc	ra,0x0
    800036f0:	f38080e7          	jalr	-200(ra) # 80003624 <_ZN8KConsole12trapPrintIntEmii>
    trapPrintString("\n");
    800036f4:	00005517          	auipc	a0,0x5
    800036f8:	a8450513          	addi	a0,a0,-1404 # 80008178 <CONSOLE_STATUS+0x168>
    800036fc:	00000097          	auipc	ra,0x0
    80003700:	ee4080e7          	jalr	-284(ra) # 800035e0 <_ZN8KConsole15trapPrintStringEPKc>
}
    80003704:	01813083          	ld	ra,24(sp)
    80003708:	01013403          	ld	s0,16(sp)
    8000370c:	00813483          	ld	s1,8(sp)
    80003710:	00013903          	ld	s2,0(sp)
    80003714:	02010113          	addi	sp,sp,32
    80003718:	00008067          	ret

000000008000371c <_ZN12SleepPCBList17insertSleepingPCBEv>:
#include "../../h/Riscv.hpp"

PCB* SleepPCBList::sleepingPCBHead = 0;

void SleepPCBList::insertSleepingPCB()
{
    8000371c:	ff010113          	addi	sp,sp,-16
    80003720:	00813423          	sd	s0,8(sp)
    80003724:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SLEEPING);
    80003728:	00005797          	auipc	a5,0x5
    8000372c:	2307b783          	ld	a5,560(a5) # 80008958 <_GLOBAL_OFFSET_TABLE_+0x90>
    80003730:	0007b603          	ld	a2,0(a5)
    void setState(State s) {state = s;}
    80003734:	00500793          	li	a5,5
    80003738:	04f62023          	sw	a5,64(a2)
    PCB* prev = 0;
    PCB* curr = sleepingPCBHead;
    8000373c:	00005797          	auipc	a5,0x5
    80003740:	3247b783          	ld	a5,804(a5) # 80008a60 <_ZN12SleepPCBList15sleepingPCBHeadE>
    PCB* prev = 0;
    80003744:	00000593          	li	a1,0
    while(curr != 0)
    80003748:	02078063          	beqz	a5,80003768 <_ZN12SleepPCBList17insertSleepingPCBEv+0x4c>
    uint64 getTimeToSleep() {return timeToSleep;}
    8000374c:	02063683          	ld	a3,32(a2)
    80003750:	0207b703          	ld	a4,32(a5)
    {
        if(PCB::running->getTimeToSleep() < curr->getTimeToSleep())
    80003754:	00e6e863          	bltu	a3,a4,80003764 <_ZN12SleepPCBList17insertSleepingPCBEv+0x48>
        {
            PCB::running->nextPCB = curr;
            break;
        }
        prev = curr;
    80003758:	00078593          	mv	a1,a5
        curr=curr->nextPCB;
    8000375c:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003760:	fe9ff06f          	j	80003748 <_ZN12SleepPCBList17insertSleepingPCBEv+0x2c>
            PCB::running->nextPCB = curr;
    80003764:	00f63423          	sd	a5,8(a2)
    }

    if(prev == 0)
    80003768:	00058a63          	beqz	a1,8000377c <_ZN12SleepPCBList17insertSleepingPCBEv+0x60>
        sleepingPCBHead = PCB::running;
    else
        prev->nextPCB = PCB::running;
    8000376c:	00c5b423          	sd	a2,8(a1)
}
    80003770:	00813403          	ld	s0,8(sp)
    80003774:	01010113          	addi	sp,sp,16
    80003778:	00008067          	ret
        sleepingPCBHead = PCB::running;
    8000377c:	00005797          	auipc	a5,0x5
    80003780:	2ec7b223          	sd	a2,740(a5) # 80008a60 <_ZN12SleepPCBList15sleepingPCBHeadE>
    80003784:	fedff06f          	j	80003770 <_ZN12SleepPCBList17insertSleepingPCBEv+0x54>

0000000080003788 <_ZN12SleepPCBList13tryToWakePCBsEv>:

void SleepPCBList::tryToWakePCBs()
{
    PCB* curr = sleepingPCBHead;
    80003788:	00005517          	auipc	a0,0x5
    8000378c:	2d853503          	ld	a0,728(a0) # 80008a60 <_ZN12SleepPCBList15sleepingPCBHeadE>
    if(curr == 0)
    80003790:	06050e63          	beqz	a0,8000380c <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
        return;

    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    80003794:	06050c63          	beqz	a0,8000380c <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    80003798:	02053783          	ld	a5,32(a0)
    8000379c:	00005717          	auipc	a4,0x5
    800037a0:	18c73703          	ld	a4,396(a4) # 80008928 <_GLOBAL_OFFSET_TABLE_+0x60>
    800037a4:	00073703          	ld	a4,0(a4)
    800037a8:	06f76263          	bltu	a4,a5,8000380c <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
{
    800037ac:	fe010113          	addi	sp,sp,-32
    800037b0:	00113c23          	sd	ra,24(sp)
    800037b4:	00813823          	sd	s0,16(sp)
    800037b8:	00913423          	sd	s1,8(sp)
    800037bc:	02010413          	addi	s0,sp,32
    800037c0:	0180006f          	j	800037d8 <_ZN12SleepPCBList13tryToWakePCBsEv+0x50>
    800037c4:	0204b783          	ld	a5,32(s1)
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    800037c8:	00005717          	auipc	a4,0x5
    800037cc:	16073703          	ld	a4,352(a4) # 80008928 <_GLOBAL_OFFSET_TABLE_+0x60>
    800037d0:	00073703          	ld	a4,0(a4)
    800037d4:	02f76263          	bltu	a4,a5,800037f8 <_ZN12SleepPCBList13tryToWakePCBsEv+0x70>
    {
        PCB *old = curr;
        curr = curr->nextPCB;
    800037d8:	00853483          	ld	s1,8(a0)
        old->nextPCB = 0;
    800037dc:	00053423          	sd	zero,8(a0)
        Scheduler::put(old);
    800037e0:	00000097          	auipc	ra,0x0
    800037e4:	0b8080e7          	jalr	184(ra) # 80003898 <_ZN9Scheduler3putEP3PCB>
        sleepingPCBHead = curr;
    800037e8:	00005797          	auipc	a5,0x5
    800037ec:	2697bc23          	sd	s1,632(a5) # 80008a60 <_ZN12SleepPCBList15sleepingPCBHeadE>
        curr = curr->nextPCB;
    800037f0:	00048513          	mv	a0,s1
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    800037f4:	fc0498e3          	bnez	s1,800037c4 <_ZN12SleepPCBList13tryToWakePCBsEv+0x3c>
    }
}
    800037f8:	01813083          	ld	ra,24(sp)
    800037fc:	01013403          	ld	s0,16(sp)
    80003800:	00813483          	ld	s1,8(sp)
    80003804:	02010113          	addi	sp,sp,32
    80003808:	00008067          	ret
    8000380c:	00008067          	ret

0000000080003810 <_ZN9SchedulernwEm>:

PCB* Scheduler::schedulerPCBHead = 0;
PCB* Scheduler::schedulerPCBTail = 0;

void *Scheduler::operator new(size_t size)
{
    80003810:	ff010113          	addi	sp,sp,-16
    80003814:	00113423          	sd	ra,8(sp)
    80003818:	00813023          	sd	s0,0(sp)
    8000381c:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmalloc(size);
    80003820:	00001097          	auipc	ra,0x1
    80003824:	1e4080e7          	jalr	484(ra) # 80004a04 <_ZN15MemoryAllocator7kmallocEm>
}
    80003828:	00813083          	ld	ra,8(sp)
    8000382c:	00013403          	ld	s0,0(sp)
    80003830:	01010113          	addi	sp,sp,16
    80003834:	00008067          	ret

0000000080003838 <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *p)
{
    80003838:	ff010113          	addi	sp,sp,-16
    8000383c:	00113423          	sd	ra,8(sp)
    80003840:	00813023          	sd	s0,0(sp)
    80003844:	01010413          	addi	s0,sp,16
    MemoryAllocator::kfree(p);
    80003848:	00001097          	auipc	ra,0x1
    8000384c:	22c080e7          	jalr	556(ra) # 80004a74 <_ZN15MemoryAllocator5kfreeEPv>
}
    80003850:	00813083          	ld	ra,8(sp)
    80003854:	00013403          	ld	s0,0(sp)
    80003858:	01010113          	addi	sp,sp,16
    8000385c:	00008067          	ret

0000000080003860 <_ZN9Scheduler7getSizeEv>:

int Scheduler::getSize()
{
    80003860:	ff010113          	addi	sp,sp,-16
    80003864:	00813423          	sd	s0,8(sp)
    80003868:	01010413          	addi	s0,sp,16
    uint64 sz = 0;
    PCB* curr = schedulerPCBHead;
    8000386c:	00005797          	auipc	a5,0x5
    80003870:	1fc7b783          	ld	a5,508(a5) # 80008a68 <_ZN9Scheduler16schedulerPCBHeadE>
    uint64 sz = 0;
    80003874:	00000513          	li	a0,0
    while(curr != 0)
    80003878:	00078863          	beqz	a5,80003888 <_ZN9Scheduler7getSizeEv+0x28>
    {
        sz++;
    8000387c:	00150513          	addi	a0,a0,1
        curr = curr->nextPCB;
    80003880:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003884:	ff5ff06f          	j	80003878 <_ZN9Scheduler7getSizeEv+0x18>
    }
    return sz;
}
    80003888:	0005051b          	sext.w	a0,a0
    8000388c:	00813403          	ld	s0,8(sp)
    80003890:	01010113          	addi	sp,sp,16
    80003894:	00008067          	ret

0000000080003898 <_ZN9Scheduler3putEP3PCB>:

void Scheduler::put(PCB *pcb)
{
    80003898:	ff010113          	addi	sp,sp,-16
    8000389c:	00813423          	sd	s0,8(sp)
    800038a0:	01010413          	addi	s0,sp,16
    void setState(State s) {state = s;}
    800038a4:	04052023          	sw	zero,64(a0)
    pcb->setState(PCB::READY);
    pcb->nextPCB = 0;
    800038a8:	00053423          	sd	zero,8(a0)
    if(schedulerPCBHead == 0)
    800038ac:	00005797          	auipc	a5,0x5
    800038b0:	1bc7b783          	ld	a5,444(a5) # 80008a68 <_ZN9Scheduler16schedulerPCBHeadE>
    800038b4:	02078263          	beqz	a5,800038d8 <_ZN9Scheduler3putEP3PCB+0x40>
        schedulerPCBHead = schedulerPCBTail = pcb;
    else
    {
        schedulerPCBTail->nextPCB = pcb;
    800038b8:	00005797          	auipc	a5,0x5
    800038bc:	1b078793          	addi	a5,a5,432 # 80008a68 <_ZN9Scheduler16schedulerPCBHeadE>
    800038c0:	0087b703          	ld	a4,8(a5)
    800038c4:	00a73423          	sd	a0,8(a4)
        schedulerPCBTail = pcb;
    800038c8:	00a7b423          	sd	a0,8(a5)
    }
}
    800038cc:	00813403          	ld	s0,8(sp)
    800038d0:	01010113          	addi	sp,sp,16
    800038d4:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = pcb;
    800038d8:	00005797          	auipc	a5,0x5
    800038dc:	19078793          	addi	a5,a5,400 # 80008a68 <_ZN9Scheduler16schedulerPCBHeadE>
    800038e0:	00a7b423          	sd	a0,8(a5)
    800038e4:	00a7b023          	sd	a0,0(a5)
    800038e8:	fe5ff06f          	j	800038cc <_ZN9Scheduler3putEP3PCB+0x34>

00000000800038ec <_ZN9Scheduler3getEv>:

PCB *Scheduler::get()
{
    800038ec:	ff010113          	addi	sp,sp,-16
    800038f0:	00813423          	sd	s0,8(sp)
    800038f4:	01010413          	addi	s0,sp,16
    if(schedulerPCBHead == 0)
    800038f8:	00005517          	auipc	a0,0x5
    800038fc:	17053503          	ld	a0,368(a0) # 80008a68 <_ZN9Scheduler16schedulerPCBHeadE>
    80003900:	00050c63          	beqz	a0,80003918 <_ZN9Scheduler3getEv+0x2c>
        return 0;
    PCB* retval = schedulerPCBHead;
    if(schedulerPCBHead->nextPCB == 0)
    80003904:	00853783          	ld	a5,8(a0)
    80003908:	00078e63          	beqz	a5,80003924 <_ZN9Scheduler3getEv+0x38>
        schedulerPCBHead = schedulerPCBTail = 0;
    else
        schedulerPCBHead = schedulerPCBHead->nextPCB;
    8000390c:	00005717          	auipc	a4,0x5
    80003910:	14f73e23          	sd	a5,348(a4) # 80008a68 <_ZN9Scheduler16schedulerPCBHeadE>
    retval->nextPCB = 0;
    80003914:	00053423          	sd	zero,8(a0)
    return retval;
}
    80003918:	00813403          	ld	s0,8(sp)
    8000391c:	01010113          	addi	sp,sp,16
    80003920:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = 0;
    80003924:	00005797          	auipc	a5,0x5
    80003928:	14478793          	addi	a5,a5,324 # 80008a68 <_ZN9Scheduler16schedulerPCBHeadE>
    8000392c:	0007b423          	sd	zero,8(a5)
    80003930:	0007b023          	sd	zero,0(a5)
    80003934:	fe1ff06f          	j	80003914 <_ZN9Scheduler3getEv+0x28>

0000000080003938 <_ZN9Scheduler5printEv>:

void Scheduler::print()
{
    80003938:	fe010113          	addi	sp,sp,-32
    8000393c:	00113c23          	sd	ra,24(sp)
    80003940:	00813823          	sd	s0,16(sp)
    80003944:	00913423          	sd	s1,8(sp)
    80003948:	02010413          	addi	s0,sp,32
    //trapPrintString("Scheduler print\n");
    PCB* curr = schedulerPCBHead;
    8000394c:	00005497          	auipc	s1,0x5
    80003950:	11c4b483          	ld	s1,284(s1) # 80008a68 <_ZN9Scheduler16schedulerPCBHeadE>
    while(curr != 0)
    80003954:	02048863          	beqz	s1,80003984 <_ZN9Scheduler5printEv+0x4c>
    {
        KConsole::trapPrintInt((uint64)curr, 16);
    80003958:	00000613          	li	a2,0
    8000395c:	01000593          	li	a1,16
    80003960:	00048513          	mv	a0,s1
    80003964:	00000097          	auipc	ra,0x0
    80003968:	cc0080e7          	jalr	-832(ra) # 80003624 <_ZN8KConsole12trapPrintIntEmii>
        KConsole::trapPrintString("\n");
    8000396c:	00005517          	auipc	a0,0x5
    80003970:	80c50513          	addi	a0,a0,-2036 # 80008178 <CONSOLE_STATUS+0x168>
    80003974:	00000097          	auipc	ra,0x0
    80003978:	c6c080e7          	jalr	-916(ra) # 800035e0 <_ZN8KConsole15trapPrintStringEPKc>
        curr = curr->nextPCB;
    8000397c:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80003980:	fd5ff06f          	j	80003954 <_ZN9Scheduler5printEv+0x1c>
    }
}
    80003984:	01813083          	ld	ra,24(sp)
    80003988:	01013403          	ld	s0,16(sp)
    8000398c:	00813483          	ld	s1,8(sp)
    80003990:	02010113          	addi	sp,sp,32
    80003994:	00008067          	ret

0000000080003998 <main>:
#include "../../h/Riscv.hpp"

void main()
{
    80003998:	ff010113          	addi	sp,sp,-16
    8000399c:	00113423          	sd	ra,8(sp)
    800039a0:	00813023          	sd	s0,0(sp)
    800039a4:	01010413          	addi	s0,sp,16
    Riscv::kernelMain();
    800039a8:	00001097          	auipc	ra,0x1
    800039ac:	854080e7          	jalr	-1964(ra) # 800041fc <_ZN5Riscv10kernelMainEv>
    800039b0:	00813083          	ld	ra,8(sp)
    800039b4:	00013403          	ld	s0,0(sp)
    800039b8:	01010113          	addi	sp,sp,16
    800039bc:	00008067          	ret

00000000800039c0 <_Z14buddyInitTest1v>:
#include "../../h/buddyTests.hpp"
#include "../../h/KConsole.hpp"
#include "../../h/MemoryAllocator.hpp"

void buddyInitTest1()
{
    800039c0:	ff010113          	addi	sp,sp,-16
    800039c4:	00113423          	sd	ra,8(sp)
    800039c8:	00813023          	sd	s0,0(sp)
    800039cc:	01010413          	addi	s0,sp,16
    printBuddyInfo();
    800039d0:	fffff097          	auipc	ra,0xfffff
    800039d4:	5d4080e7          	jalr	1492(ra) # 80002fa4 <_Z14printBuddyInfov>
}
    800039d8:	00813083          	ld	ra,8(sp)
    800039dc:	00013403          	ld	s0,0(sp)
    800039e0:	01010113          	addi	sp,sp,16
    800039e4:	00008067          	ret

00000000800039e8 <_Z20buddyOnlyAllocsTest1v>:

void buddyOnlyAllocsTest1()
{
    800039e8:	ff010113          	addi	sp,sp,-16
    800039ec:	00113423          	sd	ra,8(sp)
    800039f0:	00813023          	sd	s0,0(sp)
    800039f4:	01010413          	addi	s0,sp,16
    printBuddyInfo();
    800039f8:	fffff097          	auipc	ra,0xfffff
    800039fc:	5ac080e7          	jalr	1452(ra) # 80002fa4 <_Z14printBuddyInfov>
    buddy_alloc(1);
    80003a00:	00100513          	li	a0,1
    80003a04:	fffff097          	auipc	ra,0xfffff
    80003a08:	23c080e7          	jalr	572(ra) # 80002c40 <_Z11buddy_allocm>
    printBuddyInfo();
    80003a0c:	fffff097          	auipc	ra,0xfffff
    80003a10:	598080e7          	jalr	1432(ra) # 80002fa4 <_Z14printBuddyInfov>
    buddy_alloc(1);
    80003a14:	00100513          	li	a0,1
    80003a18:	fffff097          	auipc	ra,0xfffff
    80003a1c:	228080e7          	jalr	552(ra) # 80002c40 <_Z11buddy_allocm>
    printBuddyInfo();
    80003a20:	fffff097          	auipc	ra,0xfffff
    80003a24:	584080e7          	jalr	1412(ra) # 80002fa4 <_Z14printBuddyInfov>
    buddy_alloc(1);
    80003a28:	00100513          	li	a0,1
    80003a2c:	fffff097          	auipc	ra,0xfffff
    80003a30:	214080e7          	jalr	532(ra) # 80002c40 <_Z11buddy_allocm>
    printBuddyInfo();
    80003a34:	fffff097          	auipc	ra,0xfffff
    80003a38:	570080e7          	jalr	1392(ra) # 80002fa4 <_Z14printBuddyInfov>
    buddy_alloc(3);
    80003a3c:	00300513          	li	a0,3
    80003a40:	fffff097          	auipc	ra,0xfffff
    80003a44:	200080e7          	jalr	512(ra) # 80002c40 <_Z11buddy_allocm>
    printBuddyInfo();
    80003a48:	fffff097          	auipc	ra,0xfffff
    80003a4c:	55c080e7          	jalr	1372(ra) # 80002fa4 <_Z14printBuddyInfov>
}
    80003a50:	00813083          	ld	ra,8(sp)
    80003a54:	00013403          	ld	s0,0(sp)
    80003a58:	01010113          	addi	sp,sp,16
    80003a5c:	00008067          	ret

0000000080003a60 <_Z20buddyOnlyAllocsTest2v>:

void buddyOnlyAllocsTest2()
{
    80003a60:	ff010113          	addi	sp,sp,-16
    80003a64:	00113423          	sd	ra,8(sp)
    80003a68:	00813023          	sd	s0,0(sp)
    80003a6c:	01010413          	addi	s0,sp,16
    void* adr = buddy_alloc(100);
    80003a70:	06400513          	li	a0,100
    80003a74:	fffff097          	auipc	ra,0xfffff
    80003a78:	1cc080e7          	jalr	460(ra) # 80002c40 <_Z11buddy_allocm>
    if(adr == nullptr)
    80003a7c:	00050a63          	beqz	a0,80003a90 <_Z20buddyOnlyAllocsTest2v+0x30>
    {
        printBuddyInfo();
    }
}
    80003a80:	00813083          	ld	ra,8(sp)
    80003a84:	00013403          	ld	s0,0(sp)
    80003a88:	01010113          	addi	sp,sp,16
    80003a8c:	00008067          	ret
        printBuddyInfo();
    80003a90:	fffff097          	auipc	ra,0xfffff
    80003a94:	514080e7          	jalr	1300(ra) # 80002fa4 <_Z14printBuddyInfov>
}
    80003a98:	fe9ff06f          	j	80003a80 <_Z20buddyOnlyAllocsTest2v+0x20>

0000000080003a9c <_Z19buddyAllocFreeTest1v>:

void buddyAllocFreeTest1()
{
    80003a9c:	fe010113          	addi	sp,sp,-32
    80003aa0:	00113c23          	sd	ra,24(sp)
    80003aa4:	00813823          	sd	s0,16(sp)
    80003aa8:	00913423          	sd	s1,8(sp)
    80003aac:	01213023          	sd	s2,0(sp)
    80003ab0:	02010413          	addi	s0,sp,32
    printBuddyInfo();
    80003ab4:	fffff097          	auipc	ra,0xfffff
    80003ab8:	4f0080e7          	jalr	1264(ra) # 80002fa4 <_Z14printBuddyInfov>
    void* adr = buddy_alloc(1);
    80003abc:	00100513          	li	a0,1
    80003ac0:	fffff097          	auipc	ra,0xfffff
    80003ac4:	180080e7          	jalr	384(ra) # 80002c40 <_Z11buddy_allocm>
    80003ac8:	00050493          	mv	s1,a0
    printBuddyInfo();
    80003acc:	fffff097          	auipc	ra,0xfffff
    80003ad0:	4d8080e7          	jalr	1240(ra) # 80002fa4 <_Z14printBuddyInfov>
    buddy_free(adr, 1);
    80003ad4:	00100593          	li	a1,1
    80003ad8:	00048513          	mv	a0,s1
    80003adc:	fffff097          	auipc	ra,0xfffff
    80003ae0:	458080e7          	jalr	1112(ra) # 80002f34 <_Z10buddy_freePvm>
    printBuddyInfo();
    80003ae4:	fffff097          	auipc	ra,0xfffff
    80003ae8:	4c0080e7          	jalr	1216(ra) # 80002fa4 <_Z14printBuddyInfov>

    adr = buddy_alloc(2);
    80003aec:	00200513          	li	a0,2
    80003af0:	fffff097          	auipc	ra,0xfffff
    80003af4:	150080e7          	jalr	336(ra) # 80002c40 <_Z11buddy_allocm>
    80003af8:	00050493          	mv	s1,a0
    void* adr2 = buddy_alloc(3);
    80003afc:	00300513          	li	a0,3
    80003b00:	fffff097          	auipc	ra,0xfffff
    80003b04:	140080e7          	jalr	320(ra) # 80002c40 <_Z11buddy_allocm>
    80003b08:	00050913          	mv	s2,a0
    printBuddyInfo();
    80003b0c:	fffff097          	auipc	ra,0xfffff
    80003b10:	498080e7          	jalr	1176(ra) # 80002fa4 <_Z14printBuddyInfov>

    buddy_free(adr, 2);
    80003b14:	00200593          	li	a1,2
    80003b18:	00048513          	mv	a0,s1
    80003b1c:	fffff097          	auipc	ra,0xfffff
    80003b20:	418080e7          	jalr	1048(ra) # 80002f34 <_Z10buddy_freePvm>
    printBuddyInfo();
    80003b24:	fffff097          	auipc	ra,0xfffff
    80003b28:	480080e7          	jalr	1152(ra) # 80002fa4 <_Z14printBuddyInfov>
    adr = buddy_alloc(1);
    80003b2c:	00100513          	li	a0,1
    80003b30:	fffff097          	auipc	ra,0xfffff
    80003b34:	110080e7          	jalr	272(ra) # 80002c40 <_Z11buddy_allocm>
    80003b38:	00050493          	mv	s1,a0
    printBuddyInfo();
    80003b3c:	fffff097          	auipc	ra,0xfffff
    80003b40:	468080e7          	jalr	1128(ra) # 80002fa4 <_Z14printBuddyInfov>

    buddy_free(adr2, 3);
    80003b44:	00300593          	li	a1,3
    80003b48:	00090513          	mv	a0,s2
    80003b4c:	fffff097          	auipc	ra,0xfffff
    80003b50:	3e8080e7          	jalr	1000(ra) # 80002f34 <_Z10buddy_freePvm>
    printBuddyInfo();
    80003b54:	fffff097          	auipc	ra,0xfffff
    80003b58:	450080e7          	jalr	1104(ra) # 80002fa4 <_Z14printBuddyInfov>
    buddy_free(adr, 1);
    80003b5c:	00100593          	li	a1,1
    80003b60:	00048513          	mv	a0,s1
    80003b64:	fffff097          	auipc	ra,0xfffff
    80003b68:	3d0080e7          	jalr	976(ra) # 80002f34 <_Z10buddy_freePvm>
    printBuddyInfo();
    80003b6c:	fffff097          	auipc	ra,0xfffff
    80003b70:	438080e7          	jalr	1080(ra) # 80002fa4 <_Z14printBuddyInfov>
}
    80003b74:	01813083          	ld	ra,24(sp)
    80003b78:	01013403          	ld	s0,16(sp)
    80003b7c:	00813483          	ld	s1,8(sp)
    80003b80:	00013903          	ld	s2,0(sp)
    80003b84:	02010113          	addi	sp,sp,32
    80003b88:	00008067          	ret

0000000080003b8c <_Z13buddyTestMixav>:

void buddyTestMixa()
{
    80003b8c:	fd010113          	addi	sp,sp,-48
    80003b90:	02113423          	sd	ra,40(sp)
    80003b94:	02813023          	sd	s0,32(sp)
    80003b98:	00913c23          	sd	s1,24(sp)
    80003b9c:	01213823          	sd	s2,16(sp)
    80003ba0:	01313423          	sd	s3,8(sp)
    80003ba4:	01413023          	sd	s4,0(sp)
    80003ba8:	03010413          	addi	s0,sp,48
    void** x = (void**)MemoryAllocator::kmalloc(5000*sizeof(void*));
    80003bac:	0000a537          	lui	a0,0xa
    80003bb0:	c4050513          	addi	a0,a0,-960 # 9c40 <_entry-0x7fff63c0>
    80003bb4:	00001097          	auipc	ra,0x1
    80003bb8:	e50080e7          	jalr	-432(ra) # 80004a04 <_ZN15MemoryAllocator7kmallocEm>
    80003bbc:	00050993          	mv	s3,a0
    printBuddyInfo();
    80003bc0:	fffff097          	auipc	ra,0xfffff
    80003bc4:	3e4080e7          	jalr	996(ra) # 80002fa4 <_Z14printBuddyInfov>
    for(int i = 0; i < 5000;i++)
    80003bc8:	00000493          	li	s1,0
    80003bcc:	0080006f          	j	80003bd4 <_Z13buddyTestMixav+0x48>
    80003bd0:	0014849b          	addiw	s1,s1,1
    80003bd4:	000017b7          	lui	a5,0x1
    80003bd8:	38778793          	addi	a5,a5,903 # 1387 <_entry-0x7fffec79>
    80003bdc:	0697c063          	blt	a5,s1,80003c3c <_Z13buddyTestMixav+0xb0>
    {
        x[i] = buddy_alloc(2);
    80003be0:	00349913          	slli	s2,s1,0x3
    80003be4:	01298933          	add	s2,s3,s2
    80003be8:	00200513          	li	a0,2
    80003bec:	fffff097          	auipc	ra,0xfffff
    80003bf0:	054080e7          	jalr	84(ra) # 80002c40 <_Z11buddy_allocm>
    80003bf4:	00a93023          	sd	a0,0(s2)
        if(x[i] == nullptr)
    80003bf8:	fc051ce3          	bnez	a0,80003bd0 <_Z13buddyTestMixav+0x44>
        {
            KConsole::trapPrintStringInt("Bad allocation ", i);
    80003bfc:	00a00613          	li	a2,10
    80003c00:	00048593          	mv	a1,s1
    80003c04:	00004517          	auipc	a0,0x4
    80003c08:	75450513          	addi	a0,a0,1876 # 80008358 <CONSOLE_STATUS+0x348>
    80003c0c:	00000097          	auipc	ra,0x0
    80003c10:	aac080e7          	jalr	-1364(ra) # 800036b8 <_ZN8KConsole18trapPrintStringIntEPKcmi>
            for(int j = 0;j < i;j++)
    80003c14:	00000913          	li	s2,0
    80003c18:	02995263          	bge	s2,s1,80003c3c <_Z13buddyTestMixav+0xb0>
            {
                buddy_free(x[j], 2);
    80003c1c:	00391793          	slli	a5,s2,0x3
    80003c20:	00f987b3          	add	a5,s3,a5
    80003c24:	00200593          	li	a1,2
    80003c28:	0007b503          	ld	a0,0(a5)
    80003c2c:	fffff097          	auipc	ra,0xfffff
    80003c30:	308080e7          	jalr	776(ra) # 80002f34 <_Z10buddy_freePvm>
            for(int j = 0;j < i;j++)
    80003c34:	0019091b          	addiw	s2,s2,1
    80003c38:	fe1ff06f          	j	80003c18 <_Z13buddyTestMixav+0x8c>
            }
            break;
        }
    }
    printBuddyInfo();
    80003c3c:	fffff097          	auipc	ra,0xfffff
    80003c40:	368080e7          	jalr	872(ra) # 80002fa4 <_Z14printBuddyInfov>
}
    80003c44:	02813083          	ld	ra,40(sp)
    80003c48:	02013403          	ld	s0,32(sp)
    80003c4c:	01813483          	ld	s1,24(sp)
    80003c50:	01013903          	ld	s2,16(sp)
    80003c54:	00813983          	ld	s3,8(sp)
    80003c58:	00013a03          	ld	s4,0(sp)
    80003c5c:	03010113          	addi	sp,sp,48
    80003c60:	00008067          	ret

0000000080003c64 <_ZN5Riscv17initVirtualMemoryEv>:
extern char *userDataStart;
extern char *kernelTextStart;
extern char *kernelDataStart;

void Riscv::initVirtualMemory()
{
    80003c64:	ff010113          	addi	sp,sp,-16
    80003c68:	00813423          	sd	s0,8(sp)
    80003c6c:	01010413          	addi	s0,sp,16
    //size_t addr = (size_t)getNextBlockAddr((size_t)HEAP_START_ADDR);

    //size_t pmtSize = (1 << 9);
    //size_t descSize = 64;
    //size_t
}
    80003c70:	00813403          	ld	s0,8(sp)
    80003c74:	01010113          	addi	sp,sp,16
    80003c78:	00008067          	ret

0000000080003c7c <_ZN5Riscv16enableInterruptsEv>:
        thread_dispatch_kernel();
    }
    disableInterrupts();
}

void Riscv::enableInterrupts() {
    80003c7c:	ff010113          	addi	sp,sp,-16
    80003c80:	00813423          	sd	s0,8(sp)
    80003c84:	01010413          	addi	s0,sp,16
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %0" : :"r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80003c88:	00200793          	li	a5,2
    80003c8c:	1007a073          	csrs	sstatus,a5
    ms_sstatus(Riscv::SSTATUS_SIE);
}
    80003c90:	00813403          	ld	s0,8(sp)
    80003c94:	01010113          	addi	sp,sp,16
    80003c98:	00008067          	ret

0000000080003c9c <_ZN5Riscv17disableInterruptsEv>:

void Riscv::disableInterrupts()
{
    80003c9c:	ff010113          	addi	sp,sp,-16
    80003ca0:	00813423          	sd	s0,8(sp)
    80003ca4:	01010413          	addi	s0,sp,16
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80003ca8:	00200793          	li	a5,2
    80003cac:	1007b073          	csrc	sstatus,a5
    mc_sstatus(Riscv::SSTATUS_SIE);
}
    80003cb0:	00813403          	ld	s0,8(sp)
    80003cb4:	01010113          	addi	sp,sp,16
    80003cb8:	00008067          	ret

0000000080003cbc <_ZN5Riscv9endSystemEv>:
{
    80003cbc:	ff010113          	addi	sp,sp,-16
    80003cc0:	00113423          	sd	ra,8(sp)
    80003cc4:	00813023          	sd	s0,0(sp)
    80003cc8:	01010413          	addi	s0,sp,16
    disableInterrupts();
    80003ccc:	00000097          	auipc	ra,0x0
    80003cd0:	fd0080e7          	jalr	-48(ra) # 80003c9c <_ZN5Riscv17disableInterruptsEv>
    finishSystem = true;
    80003cd4:	00100793          	li	a5,1
    80003cd8:	00005717          	auipc	a4,0x5
    80003cdc:	daf70023          	sb	a5,-608(a4) # 80008a78 <_ZN5Riscv12finishSystemE>
        pcb = Scheduler::get();
    80003ce0:	00000097          	auipc	ra,0x0
    80003ce4:	c0c080e7          	jalr	-1012(ra) # 800038ec <_ZN9Scheduler3getEv>
        if(pcb == 0) break;
    80003ce8:	fe051ce3          	bnez	a0,80003ce0 <_ZN5Riscv9endSystemEv+0x24>
    Scheduler::put(PCB::consolePCB);
    80003cec:	00005797          	auipc	a5,0x5
    80003cf0:	c547b783          	ld	a5,-940(a5) # 80008940 <_GLOBAL_OFFSET_TABLE_+0x78>
    80003cf4:	0007b503          	ld	a0,0(a5)
    80003cf8:	00000097          	auipc	ra,0x0
    80003cfc:	ba0080e7          	jalr	-1120(ra) # 80003898 <_ZN9Scheduler3putEP3PCB>
    KConsole::pendingGetc = 0;
    80003d00:	00005797          	auipc	a5,0x5
    80003d04:	c087b783          	ld	a5,-1016(a5) # 80008908 <_GLOBAL_OFFSET_TABLE_+0x40>
    80003d08:	0007b023          	sd	zero,0(a5)
    enableInterrupts();
    80003d0c:	00000097          	auipc	ra,0x0
    80003d10:	f70080e7          	jalr	-144(ra) # 80003c7c <_ZN5Riscv16enableInterruptsEv>
    while(!PCB::consolePCB->isFinished())
    80003d14:	00005797          	auipc	a5,0x5
    80003d18:	c2c7b783          	ld	a5,-980(a5) # 80008940 <_GLOBAL_OFFSET_TABLE_+0x78>
    80003d1c:	0007b503          	ld	a0,0(a5)
    80003d20:	fffff097          	auipc	ra,0xfffff
    80003d24:	a48080e7          	jalr	-1464(ra) # 80002768 <_ZN3PCB10isFinishedEv>
    80003d28:	00051863          	bnez	a0,80003d38 <_ZN5Riscv9endSystemEv+0x7c>
        thread_dispatch_kernel();
    80003d2c:	ffffd097          	auipc	ra,0xffffd
    80003d30:	50c080e7          	jalr	1292(ra) # 80001238 <_Z22thread_dispatch_kernelv>
    while(!PCB::consolePCB->isFinished())
    80003d34:	fe1ff06f          	j	80003d14 <_ZN5Riscv9endSystemEv+0x58>
    disableInterrupts();
    80003d38:	00000097          	auipc	ra,0x0
    80003d3c:	f64080e7          	jalr	-156(ra) # 80003c9c <_ZN5Riscv17disableInterruptsEv>
}
    80003d40:	00813083          	ld	ra,8(sp)
    80003d44:	00013403          	ld	s0,0(sp)
    80003d48:	01010113          	addi	sp,sp,16
    80003d4c:	00008067          	ret

0000000080003d50 <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie()
{
    80003d50:	ff010113          	addi	sp,sp,-16
    80003d54:	00813423          	sd	s0,8(sp)
    80003d58:	01010413          	addi	s0,sp,16
    if(PCB::running->systemThread) {
    80003d5c:	00005797          	auipc	a5,0x5
    80003d60:	bfc7b783          	ld	a5,-1028(a5) # 80008958 <_GLOBAL_OFFSET_TABLE_+0x90>
    80003d64:	0007b783          	ld	a5,0(a5)
    80003d68:	0007c703          	lbu	a4,0(a5)
    80003d6c:	00070c63          	beqz	a4,80003d84 <_ZN5Riscv10popSppSpieEv+0x34>
        __asm__ volatile ("csrw sepc, ra");
    80003d70:	14109073          	csrw	sepc,ra
        __asm__ volatile ("sret");
    80003d74:	10200073          	sret
        __asm__ volatile("mv a0, %0"::"r"((size_t)PCB::running->body));
        __asm__ volatile("mv a1, %0"::"r"((size_t)PCB::running->args));
        __asm__ volatile("csrw sepc, %0"::"r"(ra));
        __asm__ volatile ("sret");
    }
}
    80003d78:	00813403          	ld	s0,8(sp)
    80003d7c:	01010113          	addi	sp,sp,16
    80003d80:	00008067          	ret
        __asm__ volatile("mv a0, %0"::"r"((size_t)PCB::running->body));
    80003d84:	0287b703          	ld	a4,40(a5)
    80003d88:	00070513          	mv	a0,a4
        __asm__ volatile("mv a1, %0"::"r"((size_t)PCB::running->args));
    80003d8c:	0307b783          	ld	a5,48(a5)
    80003d90:	00078593          	mv	a1,a5
        __asm__ volatile("csrw sepc, %0"::"r"(ra));
    80003d94:	00005797          	auipc	a5,0x5
    80003d98:	bdc7b783          	ld	a5,-1060(a5) # 80008970 <_GLOBAL_OFFSET_TABLE_+0xa8>
    80003d9c:	14179073          	csrw	sepc,a5
        __asm__ volatile ("sret");
    80003da0:	10200073          	sret
}
    80003da4:	fd5ff06f          	j	80003d78 <_ZN5Riscv10popSppSpieEv+0x28>

0000000080003da8 <_ZN5Riscv14setVirtualAddrEmmm>:

void Riscv::setVirtualAddr(size_t addr, size_t mask, size_t maskLeaf)
{
    80003da8:	fb010113          	addi	sp,sp,-80
    80003dac:	04113423          	sd	ra,72(sp)
    80003db0:	04813023          	sd	s0,64(sp)
    80003db4:	02913c23          	sd	s1,56(sp)
    80003db8:	03213823          	sd	s2,48(sp)
    80003dbc:	03313423          	sd	s3,40(sp)
    80003dc0:	03413023          	sd	s4,32(sp)
    80003dc4:	01513c23          	sd	s5,24(sp)
    80003dc8:	01613823          	sd	s6,16(sp)
    80003dcc:	01713423          	sd	s7,8(sp)
    80003dd0:	05010413          	addi	s0,sp,80
    80003dd4:	00058993          	mv	s3,a1
    80003dd8:	00060a13          	mv	s4,a2
    size_t l2 = addr >> 30;
    80003ddc:	01e55b93          	srli	s7,a0,0x1e
    size_t l1 = (addr >> 21) & (0x1ff);
    80003de0:	01555b13          	srli	s6,a0,0x15
    80003de4:	1ffb7b13          	andi	s6,s6,511
    size_t l0 = (addr >> 12) & (0x1ff);
    80003de8:	00c55493          	srli	s1,a0,0xc
    80003dec:	1ff4f913          	andi	s2,s1,511
    size_t pmt2Desc = ((size_t*)mainPMT)[l2];
    80003df0:	003b9b93          	slli	s7,s7,0x3
    80003df4:	00005797          	auipc	a5,0x5
    80003df8:	c8c7b783          	ld	a5,-884(a5) # 80008a80 <_ZN5Riscv7mainPMTE>
    80003dfc:	017787b3          	add	a5,a5,s7
    80003e00:	0007b503          	ld	a0,0(a5)
    void* pmt1 = nullptr;
    if(pmt2Desc == 0)
    80003e04:	06050663          	beqz	a0,80003e70 <_ZN5Riscv14setVirtualAddrEmmm+0xc8>
        size_t newDesc = (((size_t)pmt1 >> 12) << 10) | mask;
        ((size_t*)mainPMT)[l2] = newDesc;
    }
    else
    {
        pmt1 = (void*)((pmt2Desc >> 10) << 12);
    80003e08:	00a55513          	srli	a0,a0,0xa
    80003e0c:	00c51513          	slli	a0,a0,0xc
    }
    size_t pmt1Desc = ((size_t*)pmt1)[l1];
    80003e10:	003b1a93          	slli	s5,s6,0x3
    80003e14:	01550ab3          	add	s5,a0,s5
    80003e18:	000ab503          	ld	a0,0(s5)
    void* pmt0 = nullptr;
    if(pmt1Desc == 0)
    80003e1c:	0a050063          	beqz	a0,80003ebc <_ZN5Riscv14setVirtualAddrEmmm+0x114>
        size_t newDesc = (((size_t)pmt0 >> 12) << 10) | mask;
        ((size_t*)pmt1)[l1] = newDesc;
    }
    else
    {
        pmt0 = (void*)((pmt1Desc >> 10) << 12);
    80003e20:	00a55513          	srli	a0,a0,0xa
    80003e24:	00c51513          	slli	a0,a0,0xc
    }

    size_t pmt0Desc = ((size_t*)pmt0)[l0];
    80003e28:	00391913          	slli	s2,s2,0x3
    80003e2c:	01250533          	add	a0,a0,s2
    80003e30:	00053783          	ld	a5,0(a0)
    if(pmt0Desc == 0)
    80003e34:	00079863          	bnez	a5,80003e44 <_ZN5Riscv14setVirtualAddrEmmm+0x9c>
    {
        ((size_t*)pmt0)[l0] = ((addr >> 12) << 10) | maskLeaf;
    80003e38:	00a49493          	slli	s1,s1,0xa
    80003e3c:	0144ea33          	or	s4,s1,s4
    80003e40:	01453023          	sd	s4,0(a0)
    }
}
    80003e44:	04813083          	ld	ra,72(sp)
    80003e48:	04013403          	ld	s0,64(sp)
    80003e4c:	03813483          	ld	s1,56(sp)
    80003e50:	03013903          	ld	s2,48(sp)
    80003e54:	02813983          	ld	s3,40(sp)
    80003e58:	02013a03          	ld	s4,32(sp)
    80003e5c:	01813a83          	ld	s5,24(sp)
    80003e60:	01013b03          	ld	s6,16(sp)
    80003e64:	00813b83          	ld	s7,8(sp)
    80003e68:	05010113          	addi	sp,sp,80
    80003e6c:	00008067          	ret
        pmt1 = buddy_alloc(1);
    80003e70:	00100513          	li	a0,1
    80003e74:	fffff097          	auipc	ra,0xfffff
    80003e78:	dcc080e7          	jalr	-564(ra) # 80002c40 <_Z11buddy_allocm>
        for(int i = 0; i < NUM_OF_ENTRIES;i++)
    80003e7c:	00000793          	li	a5,0
    80003e80:	1ff00713          	li	a4,511
    80003e84:	00f74c63          	blt	a4,a5,80003e9c <_ZN5Riscv14setVirtualAddrEmmm+0xf4>
            ((size_t*)pmt1)[i] = 0;
    80003e88:	00379713          	slli	a4,a5,0x3
    80003e8c:	00e50733          	add	a4,a0,a4
    80003e90:	00073023          	sd	zero,0(a4)
        for(int i = 0; i < NUM_OF_ENTRIES;i++)
    80003e94:	0017879b          	addiw	a5,a5,1
    80003e98:	fe9ff06f          	j	80003e80 <_ZN5Riscv14setVirtualAddrEmmm+0xd8>
        size_t newDesc = (((size_t)pmt1 >> 12) << 10) | mask;
    80003e9c:	00c55793          	srli	a5,a0,0xc
    80003ea0:	00a79793          	slli	a5,a5,0xa
    80003ea4:	0137e7b3          	or	a5,a5,s3
        ((size_t*)mainPMT)[l2] = newDesc;
    80003ea8:	00005717          	auipc	a4,0x5
    80003eac:	bd873703          	ld	a4,-1064(a4) # 80008a80 <_ZN5Riscv7mainPMTE>
    80003eb0:	01770bb3          	add	s7,a4,s7
    80003eb4:	00fbb023          	sd	a5,0(s7)
    80003eb8:	f59ff06f          	j	80003e10 <_ZN5Riscv14setVirtualAddrEmmm+0x68>
        pmt0 = buddy_alloc(1);
    80003ebc:	00100513          	li	a0,1
    80003ec0:	fffff097          	auipc	ra,0xfffff
    80003ec4:	d80080e7          	jalr	-640(ra) # 80002c40 <_Z11buddy_allocm>
        for(int i = 0; i < NUM_OF_ENTRIES;i++)
    80003ec8:	00000793          	li	a5,0
    80003ecc:	1ff00713          	li	a4,511
    80003ed0:	00f74c63          	blt	a4,a5,80003ee8 <_ZN5Riscv14setVirtualAddrEmmm+0x140>
            ((size_t*)pmt0)[i] = 0;
    80003ed4:	00379713          	slli	a4,a5,0x3
    80003ed8:	00e50733          	add	a4,a0,a4
    80003edc:	00073023          	sd	zero,0(a4)
        for(int i = 0; i < NUM_OF_ENTRIES;i++)
    80003ee0:	0017879b          	addiw	a5,a5,1
    80003ee4:	fe9ff06f          	j	80003ecc <_ZN5Riscv14setVirtualAddrEmmm+0x124>
        size_t newDesc = (((size_t)pmt0 >> 12) << 10) | mask;
    80003ee8:	00c55793          	srli	a5,a0,0xc
    80003eec:	00a79793          	slli	a5,a5,0xa
    80003ef0:	0137e9b3          	or	s3,a5,s3
        ((size_t*)pmt1)[l1] = newDesc;
    80003ef4:	013ab023          	sd	s3,0(s5)
    80003ef8:	f31ff06f          	j	80003e28 <_ZN5Riscv14setVirtualAddrEmmm+0x80>

0000000080003efc <_ZN5Riscv19setVirtualAddrRangeEmmi>:
{
    80003efc:	fd010113          	addi	sp,sp,-48
    80003f00:	02113423          	sd	ra,40(sp)
    80003f04:	02813023          	sd	s0,32(sp)
    80003f08:	00913c23          	sd	s1,24(sp)
    80003f0c:	01213823          	sd	s2,16(sp)
    80003f10:	01313423          	sd	s3,8(sp)
    80003f14:	03010413          	addi	s0,sp,48
    80003f18:	00050493          	mv	s1,a0
    80003f1c:	00058913          	mv	s2,a1
    80003f20:	00060993          	mv	s3,a2
    for(size_t i = startAddr; i < endAddr; i+=BLOCK_NUM_OF_BYTES)
    80003f24:	0324f263          	bgeu	s1,s2,80003f48 <_ZN5Riscv19setVirtualAddrRangeEmmi+0x4c>
        setVirtualAddr(i, VMEM_V_BIT, permission);
    80003f28:	00098613          	mv	a2,s3
    80003f2c:	00100593          	li	a1,1
    80003f30:	00048513          	mv	a0,s1
    80003f34:	00000097          	auipc	ra,0x0
    80003f38:	e74080e7          	jalr	-396(ra) # 80003da8 <_ZN5Riscv14setVirtualAddrEmmm>
    for(size_t i = startAddr; i < endAddr; i+=BLOCK_NUM_OF_BYTES)
    80003f3c:	000017b7          	lui	a5,0x1
    80003f40:	00f484b3          	add	s1,s1,a5
    80003f44:	fe1ff06f          	j	80003f24 <_ZN5Riscv19setVirtualAddrRangeEmmi+0x28>
}
    80003f48:	02813083          	ld	ra,40(sp)
    80003f4c:	02013403          	ld	s0,32(sp)
    80003f50:	01813483          	ld	s1,24(sp)
    80003f54:	01013903          	ld	s2,16(sp)
    80003f58:	00813983          	ld	s3,8(sp)
    80003f5c:	03010113          	addi	sp,sp,48
    80003f60:	00008067          	ret

0000000080003f64 <_ZN5Riscv10initSystemEv>:
{
    80003f64:	fc010113          	addi	sp,sp,-64
    80003f68:	02113c23          	sd	ra,56(sp)
    80003f6c:	02813823          	sd	s0,48(sp)
    80003f70:	02913423          	sd	s1,40(sp)
    80003f74:	03213023          	sd	s2,32(sp)
    80003f78:	01313c23          	sd	s3,24(sp)
    80003f7c:	01413823          	sd	s4,16(sp)
    80003f80:	01513423          	sd	s5,8(sp)
    80003f84:	01613023          	sd	s6,0(sp)
    80003f88:	04010413          	addi	s0,sp,64
    w_stvec((uint64)&Riscv::supervisorTrap);
    80003f8c:	00005797          	auipc	a5,0x5
    80003f90:	9647b783          	ld	a5,-1692(a5) # 800088f0 <_GLOBAL_OFFSET_TABLE_+0x28>
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    80003f94:	10579073          	csrw	stvec,a5
    size_t heapStartBlock = getBlockAddr((size_t)HEAP_START_ADDR);
    80003f98:	00005917          	auipc	s2,0x5
    80003f9c:	94893903          	ld	s2,-1720(s2) # 800088e0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003fa0:	00093503          	ld	a0,0(s2)
    80003fa4:	fffff097          	auipc	ra,0xfffff
    80003fa8:	aa4080e7          	jalr	-1372(ra) # 80002a48 <_Z12getBlockAddrm>
    void* newStartAddr = (void*)(heapStartBlock + numOfBlocks*BLOCK_NUM_OF_BYTES);
    80003fac:	010017b7          	lui	a5,0x1001
    80003fb0:	00f504b3          	add	s1,a0,a5
    MemoryAllocator::initMemory(newStartAddr);
    80003fb4:	00048513          	mv	a0,s1
    80003fb8:	00000097          	auipc	ra,0x0
    80003fbc:	65c080e7          	jalr	1628(ra) # 80004614 <_ZN15MemoryAllocator10initMemoryEPv>
    kmem_init((void*)HEAP_START_ADDR, numOfBlocks);
    80003fc0:	000015b7          	lui	a1,0x1
    80003fc4:	00158593          	addi	a1,a1,1 # 1001 <_entry-0x7fffefff>
    80003fc8:	00093503          	ld	a0,0(s2)
    80003fcc:	ffffe097          	auipc	ra,0xffffe
    80003fd0:	bfc080e7          	jalr	-1028(ra) # 80001bc8 <_Z9kmem_initPvi>
    pcbCache = kmem_cache_create("Cache of PCBs", sizeof(PCB), nullptr, nullptr);
    80003fd4:	00000693          	li	a3,0
    80003fd8:	00000613          	li	a2,0
    80003fdc:	06000593          	li	a1,96
    80003fe0:	00004517          	auipc	a0,0x4
    80003fe4:	38850513          	addi	a0,a0,904 # 80008368 <CONSOLE_STATUS+0x358>
    80003fe8:	ffffe097          	auipc	ra,0xffffe
    80003fec:	d50080e7          	jalr	-688(ra) # 80001d38 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80003ff0:	00005917          	auipc	s2,0x5
    80003ff4:	a8890913          	addi	s2,s2,-1400 # 80008a78 <_ZN5Riscv12finishSystemE>
    80003ff8:	00a93823          	sd	a0,16(s2)
    semaphoreCache = kmem_cache_create("Cache of KSemaphore", sizeof(KSemaphore), nullptr, nullptr);
    80003ffc:	00000693          	li	a3,0
    80004000:	00000613          	li	a2,0
    80004004:	01800593          	li	a1,24
    80004008:	00004517          	auipc	a0,0x4
    8000400c:	37050513          	addi	a0,a0,880 # 80008378 <CONSOLE_STATUS+0x368>
    80004010:	ffffe097          	auipc	ra,0xffffe
    80004014:	d28080e7          	jalr	-728(ra) # 80001d38 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004018:	00a93c23          	sd	a0,24(s2)
    PCB::initialize();
    8000401c:	ffffe097          	auipc	ra,0xffffe
    80004020:	624080e7          	jalr	1572(ra) # 80002640 <_ZN3PCB10initializeEv>
    KConsole::initialize();
    80004024:	fffff097          	auipc	ra,0xfffff
    80004028:	0d0080e7          	jalr	208(ra) # 800030f4 <_ZN8KConsole10initializeEv>
    mainPMT = buddy_alloc(1);
    8000402c:	00100513          	li	a0,1
    80004030:	fffff097          	auipc	ra,0xfffff
    80004034:	c10080e7          	jalr	-1008(ra) # 80002c40 <_Z11buddy_allocm>
    80004038:	00a93423          	sd	a0,8(s2)
    for(size_t i = 0; i < NUM_OF_ENTRIES;i++)
    8000403c:	00000793          	li	a5,0
    80004040:	1ff00713          	li	a4,511
    80004044:	02f76063          	bltu	a4,a5,80004064 <_ZN5Riscv10initSystemEv+0x100>
        ((size_t*)mainPMT)[i] = 0;
    80004048:	00379693          	slli	a3,a5,0x3
    8000404c:	00005717          	auipc	a4,0x5
    80004050:	a3473703          	ld	a4,-1484(a4) # 80008a80 <_ZN5Riscv7mainPMTE>
    80004054:	00d70733          	add	a4,a4,a3
    80004058:	00073023          	sd	zero,0(a4)
    for(size_t i = 0; i < NUM_OF_ENTRIES;i++)
    8000405c:	00178793          	addi	a5,a5,1 # 1001001 <_entry-0x7effefff>
    80004060:	fe1ff06f          	j	80004040 <_ZN5Riscv10initSystemEv+0xdc>
    KConsole::trapPrintStringInt("main PMT ", (size_t)mainPMT,16);
    80004064:	00005917          	auipc	s2,0x5
    80004068:	a1490913          	addi	s2,s2,-1516 # 80008a78 <_ZN5Riscv12finishSystemE>
    8000406c:	01000613          	li	a2,16
    80004070:	00893583          	ld	a1,8(s2)
    80004074:	00004517          	auipc	a0,0x4
    80004078:	31c50513          	addi	a0,a0,796 # 80008390 <CONSOLE_STATUS+0x380>
    8000407c:	fffff097          	auipc	ra,0xfffff
    80004080:	63c080e7          	jalr	1596(ra) # 800036b8 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    uint64 kTextStart = (uint64)(&kernelTextStart);
    80004084:	00005b17          	auipc	s6,0x5
    80004088:	874b3b03          	ld	s6,-1932(s6) # 800088f8 <_GLOBAL_OFFSET_TABLE_+0x30>
    uint64 kDataStart = (uint64)(&kernelDataStart);
    8000408c:	00005a97          	auipc	s5,0x5
    80004090:	874aba83          	ld	s5,-1932(s5) # 80008900 <_GLOBAL_OFFSET_TABLE_+0x38>
    uint64 uTextStart = (uint64)(&userTextStart);
    80004094:	00005997          	auipc	s3,0x5
    80004098:	8bc9b983          	ld	s3,-1860(s3) # 80008950 <_GLOBAL_OFFSET_TABLE_+0x88>
    uint64 uDataStart = (uint64)(&userDataStart);
    8000409c:	00005a17          	auipc	s4,0x5
    800040a0:	8dca3a03          	ld	s4,-1828(s4) # 80008978 <_GLOBAL_OFFSET_TABLE_+0xb0>
    setVirtualAddrRange(programStartAddr, kTextStart, KERNEL_RX); // before kernel instructions
    800040a4:	00b00613          	li	a2,11
    800040a8:	000b0593          	mv	a1,s6
    800040ac:	00004517          	auipc	a0,0x4
    800040b0:	7ec53503          	ld	a0,2028(a0) # 80008898 <_ZN5Riscv16programStartAddrE>
    800040b4:	00000097          	auipc	ra,0x0
    800040b8:	e48080e7          	jalr	-440(ra) # 80003efc <_ZN5Riscv19setVirtualAddrRangeEmmi>
    setVirtualAddrRange(kTextStart, kDataStart,KERNEL_RX); // kernel instructions
    800040bc:	00b00613          	li	a2,11
    800040c0:	000a8593          	mv	a1,s5
    800040c4:	000b0513          	mv	a0,s6
    800040c8:	00000097          	auipc	ra,0x0
    800040cc:	e34080e7          	jalr	-460(ra) # 80003efc <_ZN5Riscv19setVirtualAddrRangeEmmi>
    setVirtualAddrRange((size_t)(&kernelDataStart), uTextStart, KERNEL_RW); // kernel data
    800040d0:	00700613          	li	a2,7
    800040d4:	00098593          	mv	a1,s3
    800040d8:	000a8513          	mv	a0,s5
    800040dc:	00000097          	auipc	ra,0x0
    800040e0:	e20080e7          	jalr	-480(ra) # 80003efc <_ZN5Riscv19setVirtualAddrRangeEmmi>
    setVirtualAddrRange((size_t)(&userTextStart), uDataStart, USER_RX); //user instructions
    800040e4:	01b00613          	li	a2,27
    800040e8:	000a0593          	mv	a1,s4
    800040ec:	00098513          	mv	a0,s3
    800040f0:	00000097          	auipc	ra,0x0
    800040f4:	e0c080e7          	jalr	-500(ra) # 80003efc <_ZN5Riscv19setVirtualAddrRangeEmmi>
    setVirtualAddrRange((size_t)(&userDataStart), (size_t)HEAP_START_ADDR, USER_RW); // user data
    800040f8:	00004997          	auipc	s3,0x4
    800040fc:	7e89b983          	ld	s3,2024(s3) # 800088e0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004100:	01700613          	li	a2,23
    80004104:	0009b583          	ld	a1,0(s3)
    80004108:	000a0513          	mv	a0,s4
    8000410c:	00000097          	auipc	ra,0x0
    80004110:	df0080e7          	jalr	-528(ra) # 80003efc <_ZN5Riscv19setVirtualAddrRangeEmmi>
    setVirtualAddrRange((size_t)HEAP_START_ADDR, (size_t)newStartAddr, KERNEL_RW); // kernel heap data
    80004114:	00700613          	li	a2,7
    80004118:	00048593          	mv	a1,s1
    8000411c:	0009b503          	ld	a0,0(s3)
    80004120:	00000097          	auipc	ra,0x0
    80004124:	ddc080e7          	jalr	-548(ra) # 80003efc <_ZN5Riscv19setVirtualAddrRangeEmmi>
    setVirtualAddrRange((size_t)newStartAddr, (size_t)HEAP_END_ADDR + 1,USER_RW); // user heap data
    80004128:	00005797          	auipc	a5,0x5
    8000412c:	8387b783          	ld	a5,-1992(a5) # 80008960 <_GLOBAL_OFFSET_TABLE_+0x98>
    80004130:	0007b583          	ld	a1,0(a5)
    80004134:	01700613          	li	a2,23
    80004138:	00158593          	addi	a1,a1,1
    8000413c:	00048513          	mv	a0,s1
    80004140:	00000097          	auipc	ra,0x0
    80004144:	dbc080e7          	jalr	-580(ra) # 80003efc <_ZN5Riscv19setVirtualAddrRangeEmmi>
    setVirtualAddr((size_t)CONSOLE_RX_DATA,0x1,0xf);
    80004148:	00f00613          	li	a2,15
    8000414c:	00100593          	li	a1,1
    80004150:	00004797          	auipc	a5,0x4
    80004154:	7807b783          	ld	a5,1920(a5) # 800088d0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80004158:	0007b503          	ld	a0,0(a5)
    8000415c:	00000097          	auipc	ra,0x0
    80004160:	c4c080e7          	jalr	-948(ra) # 80003da8 <_ZN5Riscv14setVirtualAddrEmmm>
    setVirtualAddr((size_t)CONSOLE_TX_DATA,0x1,0xf);
    80004164:	00f00613          	li	a2,15
    80004168:	00100593          	li	a1,1
    8000416c:	00004797          	auipc	a5,0x4
    80004170:	7a47b783          	ld	a5,1956(a5) # 80008910 <_GLOBAL_OFFSET_TABLE_+0x48>
    80004174:	0007b503          	ld	a0,0(a5)
    80004178:	00000097          	auipc	ra,0x0
    8000417c:	c30080e7          	jalr	-976(ra) # 80003da8 <_ZN5Riscv14setVirtualAddrEmmm>
    setVirtualAddr((size_t)CONSOLE_STATUS,0x1,0xf);
    80004180:	00f00613          	li	a2,15
    80004184:	00100593          	li	a1,1
    80004188:	00004797          	auipc	a5,0x4
    8000418c:	7507b783          	ld	a5,1872(a5) # 800088d8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80004190:	0007b503          	ld	a0,0(a5)
    80004194:	00000097          	auipc	ra,0x0
    80004198:	c14080e7          	jalr	-1004(ra) # 80003da8 <_ZN5Riscv14setVirtualAddrEmmm>
    setVirtualAddr(0xc201004,0x1,0xf);
    8000419c:	00f00613          	li	a2,15
    800041a0:	00100593          	li	a1,1
    800041a4:	0c201537          	lui	a0,0xc201
    800041a8:	00450513          	addi	a0,a0,4 # c201004 <_entry-0x73dfeffc>
    800041ac:	00000097          	auipc	ra,0x0
    800041b0:	bfc080e7          	jalr	-1028(ra) # 80003da8 <_ZN5Riscv14setVirtualAddrEmmm>
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    800041b4:	000407b7          	lui	a5,0x40
    800041b8:	1007a073          	csrs	sstatus,a5
    size_t satp = ((size_t)1 << 63) | ((size_t)mainPMT >> 12);
    800041bc:	00893783          	ld	a5,8(s2)
    800041c0:	00c7d793          	srli	a5,a5,0xc
    800041c4:	fff00713          	li	a4,-1
    800041c8:	03f71713          	slli	a4,a4,0x3f
    800041cc:	00e7e7b3          	or	a5,a5,a4
    __asm__ volatile("csrw satp, %0" : :"r"(satp));
    800041d0:	18079073          	csrw	satp,a5
}
    800041d4:	03813083          	ld	ra,56(sp)
    800041d8:	03013403          	ld	s0,48(sp)
    800041dc:	02813483          	ld	s1,40(sp)
    800041e0:	02013903          	ld	s2,32(sp)
    800041e4:	01813983          	ld	s3,24(sp)
    800041e8:	01013a03          	ld	s4,16(sp)
    800041ec:	00813a83          	ld	s5,8(sp)
    800041f0:	00013b03          	ld	s6,0(sp)
    800041f4:	04010113          	addi	sp,sp,64
    800041f8:	00008067          	ret

00000000800041fc <_ZN5Riscv10kernelMainEv>:
    if(kernelMainCalled) return;
    800041fc:	00005797          	auipc	a5,0x5
    80004200:	89c7c783          	lbu	a5,-1892(a5) # 80008a98 <_ZN5Riscv16kernelMainCalledE>
    80004204:	00078463          	beqz	a5,8000420c <_ZN5Riscv10kernelMainEv+0x10>
    80004208:	00008067          	ret
{
    8000420c:	ff010113          	addi	sp,sp,-16
    80004210:	00113423          	sd	ra,8(sp)
    80004214:	00813023          	sd	s0,0(sp)
    80004218:	01010413          	addi	s0,sp,16
    kernelMainCalled = true;
    8000421c:	00100793          	li	a5,1
    80004220:	00005717          	auipc	a4,0x5
    80004224:	86f70c23          	sb	a5,-1928(a4) # 80008a98 <_ZN5Riscv16kernelMainCalledE>
    initSystem();
    80004228:	00000097          	auipc	ra,0x0
    8000422c:	d3c080e7          	jalr	-708(ra) # 80003f64 <_ZN5Riscv10initSystemEv>
    testKmalloc();
    80004230:	00001097          	auipc	ra,0x1
    80004234:	a30080e7          	jalr	-1488(ra) # 80004c60 <_Z11testKmallocv>
    endSystem();
    80004238:	00000097          	auipc	ra,0x0
    8000423c:	a84080e7          	jalr	-1404(ra) # 80003cbc <_ZN5Riscv9endSystemEv>
}
    80004240:	00813083          	ld	ra,8(sp)
    80004244:	00013403          	ld	s0,0(sp)
    80004248:	01010113          	addi	sp,sp,16
    8000424c:	00008067          	ret

0000000080004250 <_ZN5Riscv14addVirtualAddrEm>:

void Riscv::addVirtualAddr(size_t addr)
{
    80004250:	ff010113          	addi	sp,sp,-16
    80004254:	00113423          	sd	ra,8(sp)
    80004258:	00813023          	sd	s0,0(sp)
    8000425c:	01010413          	addi	s0,sp,16
    setVirtualAddr(addr, 0x1, 0xf);
    80004260:	00f00613          	li	a2,15
    80004264:	00100593          	li	a1,1
    80004268:	00000097          	auipc	ra,0x0
    8000426c:	b40080e7          	jalr	-1216(ra) # 80003da8 <_ZN5Riscv14setVirtualAddrEmmm>
}
    80004270:	00813083          	ld	ra,8(sp)
    80004274:	00013403          	ld	s0,0(sp)
    80004278:	01010113          	addi	sp,sp,16
    8000427c:	00008067          	ret

0000000080004280 <_ZN5Riscv19addVirtualAddrInstrEm>:

void Riscv::addVirtualAddrInstr(size_t addr)
{
    80004280:	ff010113          	addi	sp,sp,-16
    80004284:	00113423          	sd	ra,8(sp)
    80004288:	00813023          	sd	s0,0(sp)
    8000428c:	01010413          	addi	s0,sp,16
    setVirtualAddr(addr, 0x1, 0xf);
    80004290:	00f00613          	li	a2,15
    80004294:	00100593          	li	a1,1
    80004298:	00000097          	auipc	ra,0x0
    8000429c:	b10080e7          	jalr	-1264(ra) # 80003da8 <_ZN5Riscv14setVirtualAddrEmmm>
}
    800042a0:	00813083          	ld	ra,8(sp)
    800042a4:	00013403          	ld	s0,0(sp)
    800042a8:	01010113          	addi	sp,sp,16
    800042ac:	00008067          	ret

00000000800042b0 <_ZN5Riscv22disableTimerInterruptsEv>:

void Riscv::disableTimerInterrupts()
{
    800042b0:	ff010113          	addi	sp,sp,-16
    800042b4:	00813423          	sd	s0,8(sp)
    800042b8:	01010413          	addi	s0,sp,16
    uint64 x = 0x2;
    __asm__ volatile("csrc sie, %0"::"r"(x));
    800042bc:	00200793          	li	a5,2
    800042c0:	1047b073          	csrc	sie,a5
}
    800042c4:	00813403          	ld	s0,8(sp)
    800042c8:	01010113          	addi	sp,sp,16
    800042cc:	00008067          	ret

00000000800042d0 <_ZN5Riscv13w_a0_sscratchEv>:

void Riscv::w_a0_sscratch()
{
    800042d0:	ff010113          	addi	sp,sp,-16
    800042d4:	00813423          	sd	s0,8(sp)
    800042d8:	01010413          	addi	s0,sp,16
    uint64 a1Temp;
    __asm__ volatile("mv %0, a1":"=r"(a1Temp));
    800042dc:	00058793          	mv	a5,a1
    __asm__ volatile("mv a1, %0"::"r"(PCB::running->sscratch));
    800042e0:	00004717          	auipc	a4,0x4
    800042e4:	67873703          	ld	a4,1656(a4) # 80008958 <_GLOBAL_OFFSET_TABLE_+0x90>
    800042e8:	00073703          	ld	a4,0(a4)
    800042ec:	01073703          	ld	a4,16(a4)
    800042f0:	00070593          	mv	a1,a4
    __asm__ volatile("sd a0, 80(a1)");
    800042f4:	04a5b823          	sd	a0,80(a1)
    __asm__ volatile("mv a1,%0"::"r"(a1Temp));
    800042f8:	00078593          	mv	a1,a5
}
    800042fc:	00813403          	ld	s0,8(sp)
    80004300:	01010113          	addi	sp,sp,16
    80004304:	00008067          	ret

0000000080004308 <_ZN5Riscv14changePrivModeEv>:

void Riscv::changePrivMode()
{
    80004308:	ff010113          	addi	sp,sp,-16
    8000430c:	00813423          	sd	s0,8(sp)
    80004310:	01010413          	addi	s0,sp,16
    if(PCB::running->systemThread)
    80004314:	00004797          	auipc	a5,0x4
    80004318:	6447b783          	ld	a5,1604(a5) # 80008958 <_GLOBAL_OFFSET_TABLE_+0x90>
    8000431c:	0007b783          	ld	a5,0(a5)
    80004320:	0007c783          	lbu	a5,0(a5)
    80004324:	00078c63          	beqz	a5,8000433c <_ZN5Riscv14changePrivModeEv+0x34>
    80004328:	10000793          	li	a5,256
    8000432c:	1007a073          	csrs	sstatus,a5
        Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    else
        Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
}
    80004330:	00813403          	ld	s0,8(sp)
    80004334:	01010113          	addi	sp,sp,16
    80004338:	00008067          	ret
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    8000433c:	10000793          	li	a5,256
    80004340:	1007b073          	csrc	sstatus,a5
    80004344:	fedff06f          	j	80004330 <_ZN5Riscv14changePrivModeEv+0x28>

0000000080004348 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    80004348:	f9010113          	addi	sp,sp,-112
    8000434c:	06113423          	sd	ra,104(sp)
    80004350:	06813023          	sd	s0,96(sp)
    80004354:	04913c23          	sd	s1,88(sp)
    80004358:	07010413          	addi	s0,sp,112
    __asm__ volatile("mv %0, a4" : "=r"(PCB::savedRegA4));
    8000435c:	00070713          	mv	a4,a4
    80004360:	00004797          	auipc	a5,0x4
    80004364:	6207b783          	ld	a5,1568(a5) # 80008980 <_GLOBAL_OFFSET_TABLE_+0xb8>
    80004368:	00e7b023          	sd	a4,0(a5)
    __asm__ volatile("csrr %0, sscratch":"=r"(PCB::running->sscratch));
    8000436c:	00004797          	auipc	a5,0x4
    80004370:	5ec7b783          	ld	a5,1516(a5) # 80008958 <_GLOBAL_OFFSET_TABLE_+0x90>
    80004374:	0007b783          	ld	a5,0(a5)
    80004378:	14002773          	csrr	a4,sscratch
    8000437c:	00e7b823          	sd	a4,16(a5)
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    80004380:	142027f3          	csrr	a5,scause
    80004384:	faf43c23          	sd	a5,-72(s0)
    return scause;
    80004388:	fb843783          	ld	a5,-72(s0)

    static const size_t storePF = 15;
    static const size_t loadPF = 13;
    static const size_t instrPF = 12;

    switch(scause)
    8000438c:	00f00713          	li	a4,15
    80004390:	02f76863          	bltu	a4,a5,800043c0 <_ZN5Riscv20handleSupervisorTrapEv+0x78>
    80004394:	00200713          	li	a4,2
    80004398:	10e7e863          	bltu	a5,a4,800044a8 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
    8000439c:	00f00713          	li	a4,15
    800043a0:	10f76463          	bltu	a4,a5,800044a8 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
    800043a4:	00279793          	slli	a5,a5,0x2
    800043a8:	00004717          	auipc	a4,0x4
    800043ac:	ff470713          	addi	a4,a4,-12 # 8000839c <CONSOLE_STATUS+0x38c>
    800043b0:	00e787b3          	add	a5,a5,a4
    800043b4:	0007a783          	lw	a5,0(a5)
    800043b8:	00e787b3          	add	a5,a5,a4
    800043bc:	00078067          	jr	a5
    800043c0:	fff00713          	li	a4,-1
    800043c4:	03f71713          	slli	a4,a4,0x3f
    800043c8:	00170713          	addi	a4,a4,1
    800043cc:	04e78a63          	beq	a5,a4,80004420 <_ZN5Riscv20handleSupervisorTrapEv+0xd8>
    800043d0:	fff00713          	li	a4,-1
    800043d4:	03f71713          	slli	a4,a4,0x3f
    800043d8:	00970713          	addi	a4,a4,9
    800043dc:	0ce79663          	bne	a5,a4,800044a8 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
            changePrivMode();
            break;
        }
        case hwInterrupt:
        {
            KConsole::getCharactersFromConsole();
    800043e0:	fffff097          	auipc	ra,0xfffff
    800043e4:	e6c080e7          	jalr	-404(ra) # 8000324c <_ZN8KConsole24getCharactersFromConsoleEv>
            plic_complete(plic_claim());
    800043e8:	00002097          	auipc	ra,0x2
    800043ec:	99c080e7          	jalr	-1636(ra) # 80005d84 <plic_claim>
    800043f0:	00002097          	auipc	ra,0x2
    800043f4:	9cc080e7          	jalr	-1588(ra) # 80005dbc <plic_complete>
            break;
    800043f8:	0b00006f          	j	800044a8 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
            PCB::threadExitHandler();
    800043fc:	ffffe097          	auipc	ra,0xffffe
    80004400:	390080e7          	jalr	912(ra) # 8000278c <_ZN3PCB17threadExitHandlerEv>
            break;
    80004404:	0a40006f          	j	800044a8 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
            PCB::threadExitHandler();
    80004408:	ffffe097          	auipc	ra,0xffffe
    8000440c:	384080e7          	jalr	900(ra) # 8000278c <_ZN3PCB17threadExitHandlerEv>
            break;
    80004410:	0980006f          	j	800044a8 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
            PCB::threadExitHandler();
    80004414:	ffffe097          	auipc	ra,0xffffe
    80004418:	378080e7          	jalr	888(ra) # 8000278c <_ZN3PCB17threadExitHandlerEv>
            break;
    8000441c:	08c0006f          	j	800044a8 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80004420:	141027f3          	csrr	a5,sepc
    80004424:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80004428:	fc843783          	ld	a5,-56(s0)
            uint64 volatile sepc = Riscv::r_sepc();
    8000442c:	f8f43c23          	sd	a5,-104(s0)
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80004430:	100027f3          	csrr	a5,sstatus
    80004434:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80004438:	fc043783          	ld	a5,-64(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    8000443c:	faf43023          	sd	a5,-96(s0)
    __asm__ volatile("csrc sip, %0" : :"r"(mask));
    80004440:	00200793          	li	a5,2
    80004444:	1447b073          	csrc	sip,a5
            totalTime++;
    80004448:	00004717          	auipc	a4,0x4
    8000444c:	63070713          	addi	a4,a4,1584 # 80008a78 <_ZN5Riscv12finishSystemE>
    80004450:	02873783          	ld	a5,40(a4)
    80004454:	00178793          	addi	a5,a5,1
    80004458:	02f73423          	sd	a5,40(a4)
            PCB::timeSliceCounter++;
    8000445c:	00004497          	auipc	s1,0x4
    80004460:	4bc4b483          	ld	s1,1212(s1) # 80008918 <_GLOBAL_OFFSET_TABLE_+0x50>
    80004464:	0004b783          	ld	a5,0(s1)
    80004468:	00178793          	addi	a5,a5,1
    8000446c:	00f4b023          	sd	a5,0(s1)
            SleepPCBList::tryToWakePCBs();
    80004470:	fffff097          	auipc	ra,0xfffff
    80004474:	318080e7          	jalr	792(ra) # 80003788 <_ZN12SleepPCBList13tryToWakePCBsEv>
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice())
    80004478:	00004797          	auipc	a5,0x4
    8000447c:	4e07b783          	ld	a5,1248(a5) # 80008958 <_GLOBAL_OFFSET_TABLE_+0x90>
    80004480:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() { return timeSlice;}
    80004484:	0187b783          	ld	a5,24(a5)
    80004488:	0004b703          	ld	a4,0(s1)
    8000448c:	02f77863          	bgeu	a4,a5,800044bc <_ZN5Riscv20handleSupervisorTrapEv+0x174>
            Riscv::w_sstatus(sstatus);
    80004490:	fa043783          	ld	a5,-96(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80004494:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    80004498:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    8000449c:	14179073          	csrw	sepc,a5
            changePrivMode();
    800044a0:	00000097          	auipc	ra,0x0
    800044a4:	e68080e7          	jalr	-408(ra) # 80004308 <_ZN5Riscv14changePrivModeEv>
            Riscv::w_sepc(sepc);
            changePrivMode();
            break;
        }
    }
}
    800044a8:	06813083          	ld	ra,104(sp)
    800044ac:	06013403          	ld	s0,96(sp)
    800044b0:	05813483          	ld	s1,88(sp)
    800044b4:	07010113          	addi	sp,sp,112
    800044b8:	00008067          	ret
                PCB::timeSliceCounter = 0;
    800044bc:	0004b023          	sd	zero,0(s1)
                PCB::dispatch();
    800044c0:	ffffe097          	auipc	ra,0xffffe
    800044c4:	05c080e7          	jalr	92(ra) # 8000251c <_ZN3PCB8dispatchEv>
    800044c8:	fc9ff06f          	j	80004490 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
            PCB::threadExitHandler();
    800044cc:	ffffe097          	auipc	ra,0xffffe
    800044d0:	2c0080e7          	jalr	704(ra) # 8000278c <_ZN3PCB17threadExitHandlerEv>
            break;
    800044d4:	fd5ff06f          	j	800044a8 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
            PCB::threadExitHandler();
    800044d8:	ffffe097          	auipc	ra,0xffffe
    800044dc:	2b4080e7          	jalr	692(ra) # 8000278c <_ZN3PCB17threadExitHandlerEv>
            break;
    800044e0:	fc9ff06f          	j	800044a8 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
            PCB::threadExitHandler();
    800044e4:	ffffe097          	auipc	ra,0xffffe
    800044e8:	2a8080e7          	jalr	680(ra) # 8000278c <_ZN3PCB17threadExitHandlerEv>
            break;
    800044ec:	fbdff06f          	j	800044a8 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    800044f0:	00050793          	mv	a5,a0
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    800044f4:	14102773          	csrr	a4,sepc
    800044f8:	fce43c23          	sd	a4,-40(s0)
    return sepc;
    800044fc:	fd843703          	ld	a4,-40(s0)
            uint64 volatile sepc = Riscv::r_sepc() + 4;
    80004500:	00470713          	addi	a4,a4,4
    80004504:	fae43423          	sd	a4,-88(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80004508:	10002773          	csrr	a4,sstatus
    8000450c:	fce43823          	sd	a4,-48(s0)
    return sstatus;
    80004510:	fd043703          	ld	a4,-48(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    80004514:	fae43823          	sd	a4,-80(s0)
            switch(operation)
    80004518:	04300713          	li	a4,67
    8000451c:	02f76463          	bltu	a4,a5,80004544 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
    80004520:	00279793          	slli	a5,a5,0x2
    80004524:	00004717          	auipc	a4,0x4
    80004528:	eb870713          	addi	a4,a4,-328 # 800083dc <CONSOLE_STATUS+0x3cc>
    8000452c:	00e787b3          	add	a5,a5,a4
    80004530:	0007a783          	lw	a5,0(a5)
    80004534:	00e787b3          	add	a5,a5,a4
    80004538:	00078067          	jr	a5
                    MemoryAllocator::memAllocHandler();
    8000453c:	00000097          	auipc	ra,0x0
    80004540:	4f0080e7          	jalr	1264(ra) # 80004a2c <_ZN15MemoryAllocator15memAllocHandlerEv>
            Riscv::w_sstatus(sstatus);
    80004544:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80004548:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    8000454c:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80004550:	14179073          	csrw	sepc,a5
            changePrivMode();
    80004554:	00000097          	auipc	ra,0x0
    80004558:	db4080e7          	jalr	-588(ra) # 80004308 <_ZN5Riscv14changePrivModeEv>
}
    8000455c:	f4dff06f          	j	800044a8 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
                    MemoryAllocator::memFreeHandler();
    80004560:	00000097          	auipc	ra,0x0
    80004564:	53c080e7          	jalr	1340(ra) # 80004a9c <_ZN15MemoryAllocator14memFreeHandlerEv>
                    break;
    80004568:	fddff06f          	j	80004544 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    PCB::threadMakePCBHandler();
    8000456c:	ffffe097          	auipc	ra,0xffffe
    80004570:	3e8080e7          	jalr	1000(ra) # 80002954 <_ZN3PCB20threadMakePCBHandlerEv>
                    break;
    80004574:	fd1ff06f          	j	80004544 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    PCB::threadCreateHandler();
    80004578:	ffffe097          	auipc	ra,0xffffe
    8000457c:	2f4080e7          	jalr	756(ra) # 8000286c <_ZN3PCB19threadCreateHandlerEv>
                    break;
    80004580:	fc5ff06f          	j	80004544 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    PCB::threadStartHandler();
    80004584:	ffffe097          	auipc	ra,0xffffe
    80004588:	38c080e7          	jalr	908(ra) # 80002910 <_ZN3PCB18threadStartHandlerEv>
                    break;
    8000458c:	fb9ff06f          	j	80004544 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    PCB::threadDispatchHandler();
    80004590:	ffffe097          	auipc	ra,0xffffe
    80004594:	248080e7          	jalr	584(ra) # 800027d8 <_ZN3PCB21threadDispatchHandlerEv>
                    break;
    80004598:	fadff06f          	j	80004544 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    PCB::threadExitHandler();
    8000459c:	ffffe097          	auipc	ra,0xffffe
    800045a0:	1f0080e7          	jalr	496(ra) # 8000278c <_ZN3PCB17threadExitHandlerEv>
                    break;
    800045a4:	fa1ff06f          	j	80004544 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    PCB::threadSleepHandler();
    800045a8:	ffffe097          	auipc	ra,0xffffe
    800045ac:	260080e7          	jalr	608(ra) # 80002808 <_ZN3PCB18threadSleepHandlerEv>
                    break;
    800045b0:	f95ff06f          	j	80004544 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    PCB::threadDelPCBHandler();
    800045b4:	ffffe097          	auipc	ra,0xffffe
    800045b8:	438080e7          	jalr	1080(ra) # 800029ec <_ZN3PCB19threadDelPCBHandlerEv>
                    break;
    800045bc:	f89ff06f          	j	80004544 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    KSemaphore::semOpenHandler();
    800045c0:	00001097          	auipc	ra,0x1
    800045c4:	dc8080e7          	jalr	-568(ra) # 80005388 <_ZN10KSemaphore14semOpenHandlerEv>
                    break;
    800045c8:	f7dff06f          	j	80004544 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    KSemaphore::semWaitHandler();
    800045cc:	00001097          	auipc	ra,0x1
    800045d0:	e70080e7          	jalr	-400(ra) # 8000543c <_ZN10KSemaphore14semWaitHandlerEv>
                    break;
    800045d4:	f71ff06f          	j	80004544 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    KSemaphore::semSignalHandler();
    800045d8:	00001097          	auipc	ra,0x1
    800045dc:	eb8080e7          	jalr	-328(ra) # 80005490 <_ZN10KSemaphore16semSignalHandlerEv>
                    break;
    800045e0:	f65ff06f          	j	80004544 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    KSemaphore::semCloseHandler();
    800045e4:	00001097          	auipc	ra,0x1
    800045e8:	ef0080e7          	jalr	-272(ra) # 800054d4 <_ZN10KSemaphore15semCloseHandlerEv>
                    break;
    800045ec:	f59ff06f          	j	80004544 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    KConsole::getcHandler();
    800045f0:	fffff097          	auipc	ra,0xfffff
    800045f4:	e60080e7          	jalr	-416(ra) # 80003450 <_ZN8KConsole11getcHandlerEv>
                    break;
    800045f8:	f4dff06f          	j	80004544 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    KConsole::putcHandler();
    800045fc:	fffff097          	auipc	ra,0xfffff
    80004600:	e24080e7          	jalr	-476(ra) # 80003420 <_ZN8KConsole11putcHandlerEv>
                    break;
    80004604:	f41ff06f          	j	80004544 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    KConsole::getCharHandler();
    80004608:	fffff097          	auipc	ra,0xfffff
    8000460c:	fa4080e7          	jalr	-92(ra) # 800035ac <_ZN8KConsole14getCharHandlerEv>
                    break;
    80004610:	f35ff06f          	j	80004544 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>

0000000080004614 <_ZN15MemoryAllocator10initMemoryEPv>:
{
    return tryToFreeSegment(addr);
}

void MemoryAllocator::initMemory(void* startAddr)
{
    80004614:	ff010113          	addi	sp,sp,-16
    80004618:	00813423          	sd	s0,8(sp)
    8000461c:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    80004620:	00004717          	auipc	a4,0x4
    80004624:	48872703          	lw	a4,1160(a4) # 80008aa8 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004628:	00100793          	li	a5,1
    8000462c:	02f70c63          	beq	a4,a5,80004664 <_ZN15MemoryAllocator10initMemoryEPv+0x50>
        return;
    memoryInitiliaized = 1;
    80004630:	00004797          	auipc	a5,0x4
    80004634:	47878793          	addi	a5,a5,1144 # 80008aa8 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004638:	00100713          	li	a4,1
    8000463c:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    80004640:	0007b423          	sd	zero,8(a5)
    headFree = (BlockHeader*)startAddr;
    80004644:	00a7b823          	sd	a0,16(a5)
    headFree->next = 0;
    80004648:	00053423          	sd	zero,8(a0)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)startAddr  + 1 - sizeof(BlockHeader));
    8000464c:	00004797          	auipc	a5,0x4
    80004650:	3147b783          	ld	a5,788(a5) # 80008960 <_GLOBAL_OFFSET_TABLE_+0x98>
    80004654:	0007b783          	ld	a5,0(a5)
    80004658:	40a787b3          	sub	a5,a5,a0
    8000465c:	ff178793          	addi	a5,a5,-15
    80004660:	00f53023          	sd	a5,0(a0)
}
    80004664:	00813403          	ld	s0,8(sp)
    80004668:	01010113          	addi	sp,sp,16
    8000466c:	00008067          	ret

0000000080004670 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_>:

void MemoryAllocator::insertAllFragment(void *addr, size_t size, void* nxtAddr)
{
    80004670:	ff010113          	addi	sp,sp,-16
    80004674:	00813423          	sd	s0,8(sp)
    80004678:	01010413          	addi	s0,sp,16
    //initMemory();
    if(memoryInitiliaized == 0)
    8000467c:	00004797          	auipc	a5,0x4
    80004680:	42c7a783          	lw	a5,1068(a5) # 80008aa8 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004684:	02078a63          	beqz	a5,800046b8 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x48>
        return;
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    80004688:	00053423          	sd	zero,8(a0)
    newAllocated->size = size;
    8000468c:	00b53023          	sd	a1,0(a0)
    if(headAllocated == 0)
    80004690:	00004797          	auipc	a5,0x4
    80004694:	4207b783          	ld	a5,1056(a5) # 80008ab0 <_ZN15MemoryAllocator13headAllocatedE>
    80004698:	02078663          	beqz	a5,800046c4 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x54>
    {
        headAllocated = newAllocated;
    }
    else if(nxtAddr <= HEAP_END_ADDR)
    8000469c:	00004717          	auipc	a4,0x4
    800046a0:	2c473703          	ld	a4,708(a4) # 80008960 <_GLOBAL_OFFSET_TABLE_+0x98>
    800046a4:	00073703          	ld	a4,0(a4)
    800046a8:	02c76463          	bltu	a4,a2,800046d0 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x60>
    {
        BlockHeader * allFrag = (BlockHeader*)nxtAddr;
        newAllocated->next = allFrag->next;
    800046ac:	00863783          	ld	a5,8(a2)
    800046b0:	00f53423          	sd	a5,8(a0)
        allFrag->next = newAllocated;
    800046b4:	00a63423          	sd	a0,8(a2)
    else
    {
        newAllocated->next = headAllocated;
        headAllocated = newAllocated;
    }
}
    800046b8:	00813403          	ld	s0,8(sp)
    800046bc:	01010113          	addi	sp,sp,16
    800046c0:	00008067          	ret
        headAllocated = newAllocated;
    800046c4:	00004797          	auipc	a5,0x4
    800046c8:	3ea7b623          	sd	a0,1004(a5) # 80008ab0 <_ZN15MemoryAllocator13headAllocatedE>
    800046cc:	fedff06f          	j	800046b8 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x48>
        newAllocated->next = headAllocated;
    800046d0:	00f53423          	sd	a5,8(a0)
        headAllocated = newAllocated;
    800046d4:	00004797          	auipc	a5,0x4
    800046d8:	3ca7be23          	sd	a0,988(a5) # 80008ab0 <_ZN15MemoryAllocator13headAllocatedE>
    800046dc:	fddff06f          	j	800046b8 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x48>

00000000800046e0 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void *addr, size_t size)
{
    800046e0:	ff010113          	addi	sp,sp,-16
    800046e4:	00813423          	sd	s0,8(sp)
    800046e8:	01010413          	addi	s0,sp,16
    //initMemory();
    if(memoryInitiliaized == 0)
    800046ec:	00004797          	auipc	a5,0x4
    800046f0:	3bc7a783          	lw	a5,956(a5) # 80008aa8 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    800046f4:	02078c63          	beqz	a5,8000472c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x4c>
        return;
    BlockHeader* prev = 0;
    BlockHeader* curr =  headAllocated;
    800046f8:	00004797          	auipc	a5,0x4
    800046fc:	3b87b783          	ld	a5,952(a5) # 80008ab0 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    80004700:	00053423          	sd	zero,8(a0)
    newAllocated->size = size;
    80004704:	00b53023          	sd	a1,0(a0)
    BlockHeader* prev = 0;
    80004708:	00000713          	li	a4,0
    while(curr != 0)
    8000470c:	00078c63          	beqz	a5,80004724 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x44>
    {
        if((void*)curr > addr)
    80004710:	00f56863          	bltu	a0,a5,80004720 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x40>
        {
            newAllocated->next = curr;
            break;
        }
        prev = curr;
    80004714:	00078713          	mv	a4,a5
        curr = curr->next;
    80004718:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    8000471c:	ff1ff06f          	j	8000470c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x2c>
            newAllocated->next = curr;
    80004720:	00f53423          	sd	a5,8(a0)
    }

    if(prev == 0)
    80004724:	00070a63          	beqz	a4,80004738 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x58>
        headAllocated = newAllocated;
    else
        prev->next = newAllocated;
    80004728:	00a73423          	sd	a0,8(a4)
}
    8000472c:	00813403          	ld	s0,8(sp)
    80004730:	01010113          	addi	sp,sp,16
    80004734:	00008067          	ret
        headAllocated = newAllocated;
    80004738:	00004797          	auipc	a5,0x4
    8000473c:	36a7bc23          	sd	a0,888(a5) # 80008ab0 <_ZN15MemoryAllocator13headAllocatedE>
    80004740:	fedff06f          	j	8000472c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x4c>

0000000080004744 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size)
{
    //initMemory();
    if(memoryInitiliaized == 0)
    80004744:	00004797          	auipc	a5,0x4
    80004748:	3647a783          	lw	a5,868(a5) # 80008aa8 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    8000474c:	0e078e63          	beqz	a5,80004848 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x104>
{
    80004750:	fe010113          	addi	sp,sp,-32
    80004754:	00113c23          	sd	ra,24(sp)
    80004758:	00813823          	sd	s0,16(sp)
    8000475c:	00913423          	sd	s1,8(sp)
    80004760:	02010413          	addi	s0,sp,32
    80004764:	00050593          	mv	a1,a0
        return nullptr;
    uint64 retval = 0;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80004768:	00004497          	auipc	s1,0x4
    8000476c:	3504b483          	ld	s1,848(s1) # 80008ab8 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* prev = 0;
    80004770:	00000713          	li	a4,0
    while(curr != 0)
    80004774:	0a048e63          	beqz	s1,80004830 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xec>
    {
        if(curr->size >= size)
    80004778:	0004b783          	ld	a5,0(s1)
    8000477c:	00b7f863          	bgeu	a5,a1,8000478c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x48>
            //insertNewAllocatedFragment(oldAddr, size);
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
            retval = oldA;
            break;
        }
        prev = curr;
    80004780:	00048713          	mv	a4,s1
        curr = curr->next;
    80004784:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80004788:	fedff06f          	j	80004774 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x30>
            void* newAddr = ((char*)curr + size + sizeof(BlockHeader));
    8000478c:	01058693          	addi	a3,a1,16
    80004790:	00d486b3          	add	a3,s1,a3
            void* nxtAllFrag = ((char*)curr + curr->size + sizeof(BlockHeader));
    80004794:	01078613          	addi	a2,a5,16
    80004798:	00c48633          	add	a2,s1,a2
            if(newAddr <= HEAP_END_ADDR)
    8000479c:	00004517          	auipc	a0,0x4
    800047a0:	1c453503          	ld	a0,452(a0) # 80008960 <_GLOBAL_OFFSET_TABLE_+0x98>
    800047a4:	00053503          	ld	a0,0(a0)
    800047a8:	06d56063          	bltu	a0,a3,80004808 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xc4>
                uint64 size2 = curr->size - size;
    800047ac:	40b78533          	sub	a0,a5,a1
                if(size2 > sizeof(BlockHeader))
    800047b0:	01000813          	li	a6,16
    800047b4:	02a87663          	bgeu	a6,a0,800047e0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x9c>
                    newFree->next = curr->next;
    800047b8:	0084b783          	ld	a5,8(s1)
    800047bc:	00f6b423          	sd	a5,8(a3)
                    newFree->size = size2 - sizeof(BlockHeader);
    800047c0:	ff050513          	addi	a0,a0,-16
    800047c4:	00a6b023          	sd	a0,0(a3)
                    if (prev != 0)
    800047c8:	00070663          	beqz	a4,800047d4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x90>
                        prev->next = newFree;
    800047cc:	00d73423          	sd	a3,8(a4)
    800047d0:	0400006f          	j	80004810 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                        headFree = newFree;
    800047d4:	00004797          	auipc	a5,0x4
    800047d8:	2ed7b223          	sd	a3,740(a5) # 80008ab8 <_ZN15MemoryAllocator8headFreeE>
    800047dc:	0340006f          	j	80004810 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                    if(prev != 0)
    800047e0:	00070a63          	beqz	a4,800047f4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb0>
                        prev->next = curr->next;
    800047e4:	0084b683          	ld	a3,8(s1)
    800047e8:	00d73423          	sd	a3,8(a4)
                    size+=size2;
    800047ec:	00078593          	mv	a1,a5
    800047f0:	0200006f          	j	80004810 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                        headFree = curr->next;
    800047f4:	0084b703          	ld	a4,8(s1)
    800047f8:	00004697          	auipc	a3,0x4
    800047fc:	2ce6b023          	sd	a4,704(a3) # 80008ab8 <_ZN15MemoryAllocator8headFreeE>
                    size+=size2;
    80004800:	00078593          	mv	a1,a5
    80004804:	00c0006f          	j	80004810 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                if(prev != 0)
    80004808:	00070e63          	beqz	a4,80004824 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe0>
                    prev->next = 0;
    8000480c:	00073423          	sd	zero,8(a4)
            insertAllFragment(oldAddr, size, nxtAllFrag);
    80004810:	00048513          	mv	a0,s1
    80004814:	00000097          	auipc	ra,0x0
    80004818:	e5c080e7          	jalr	-420(ra) # 80004670 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_>
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
    8000481c:	01048513          	addi	a0,s1,16
            break;
    80004820:	0140006f          	j	80004834 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xf0>
                    headFree = 0;
    80004824:	00004797          	auipc	a5,0x4
    80004828:	2807ba23          	sd	zero,660(a5) # 80008ab8 <_ZN15MemoryAllocator8headFreeE>
    8000482c:	fe5ff06f          	j	80004810 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
    uint64 retval = 0;
    80004830:	00000513          	li	a0,0
    }

    return (void*)retval;
}
    80004834:	01813083          	ld	ra,24(sp)
    80004838:	01013403          	ld	s0,16(sp)
    8000483c:	00813483          	ld	s1,8(sp)
    80004840:	02010113          	addi	sp,sp,32
    80004844:	00008067          	ret
        return nullptr;
    80004848:	00000513          	li	a0,0
}
    8000484c:	00008067          	ret

0000000080004850 <_ZN15MemoryAllocator9mem_allocEm>:
{
    80004850:	ff010113          	addi	sp,sp,-16
    80004854:	00113423          	sd	ra,8(sp)
    80004858:	00813023          	sd	s0,0(sp)
    8000485c:	01010413          	addi	s0,sp,16
    return tryToAllocateFragment(size);
    80004860:	00000097          	auipc	ra,0x0
    80004864:	ee4080e7          	jalr	-284(ra) # 80004744 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
}
    80004868:	00813083          	ld	ra,8(sp)
    8000486c:	00013403          	ld	s0,0(sp)
    80004870:	01010113          	addi	sp,sp,16
    80004874:	00008067          	ret

0000000080004878 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    80004878:	ff010113          	addi	sp,sp,-16
    8000487c:	00813423          	sd	s0,8(sp)
    80004880:	01010413          	addi	s0,sp,16
    //initMemory();
    if(memoryInitiliaized == 0)
    80004884:	00004797          	auipc	a5,0x4
    80004888:	2247a783          	lw	a5,548(a5) # 80008aa8 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    8000488c:	06078263          	beqz	a5,800048f0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x78>
        return;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80004890:	00004797          	auipc	a5,0x4
    80004894:	2287b783          	ld	a5,552(a5) # 80008ab8 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* newSegment = (BlockHeader*)addr;
    newSegment->size = size;
    80004898:	00b53023          	sd	a1,0(a0)
    newSegment->next = 0;
    8000489c:	00053423          	sd	zero,8(a0)
    BlockHeader* prev = 0;
    800048a0:	00000713          	li	a4,0
    while(curr != 0)
    800048a4:	00078c63          	beqz	a5,800048bc <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x44>
    {
        if((void*)curr > addr)
    800048a8:	00f56863          	bltu	a0,a5,800048b8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x40>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    800048ac:	00078713          	mv	a4,a5
        curr = curr->next;
    800048b0:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    800048b4:	ff1ff06f          	j	800048a4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x2c>
            newSegment->next = curr;
    800048b8:	00f53423          	sd	a5,8(a0)
    }

    if(prev == 0)
    800048bc:	04070063          	beqz	a4,800048fc <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x84>
        headFree = newSegment;
    else
        prev->next = newSegment;
    800048c0:	00a73423          	sd	a0,8(a4)

    if(newSegment->next != 0 && (char*)newSegment->next == (char*)newSegment + newSegment->size + sizeof(BlockHeader))
    800048c4:	00853783          	ld	a5,8(a0)
    800048c8:	00078a63          	beqz	a5,800048dc <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x64>
    800048cc:	00053603          	ld	a2,0(a0)
    800048d0:	01060693          	addi	a3,a2,16
    800048d4:	00d506b3          	add	a3,a0,a3
    800048d8:	02d78863          	beq	a5,a3,80004908 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x90>
    {
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
        newSegment->next = newSegment->next->next;
    }

    if(prev != 0 && (char*)newSegment == (char*)prev + prev->size + sizeof(BlockHeader))
    800048dc:	00070a63          	beqz	a4,800048f0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x78>
    800048e0:	00073683          	ld	a3,0(a4)
    800048e4:	01068793          	addi	a5,a3,16
    800048e8:	00f707b3          	add	a5,a4,a5
    800048ec:	02a78c63          	beq	a5,a0,80004924 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xac>
    {
        prev->size+=newSegment->size + sizeof(BlockHeader);
        prev->next = newSegment->next;
    }
}
    800048f0:	00813403          	ld	s0,8(sp)
    800048f4:	01010113          	addi	sp,sp,16
    800048f8:	00008067          	ret
        headFree = newSegment;
    800048fc:	00004797          	auipc	a5,0x4
    80004900:	1aa7be23          	sd	a0,444(a5) # 80008ab8 <_ZN15MemoryAllocator8headFreeE>
    80004904:	fc1ff06f          	j	800048c4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x4c>
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
    80004908:	0007b683          	ld	a3,0(a5)
    8000490c:	00d60633          	add	a2,a2,a3
    80004910:	01060613          	addi	a2,a2,16
    80004914:	00c53023          	sd	a2,0(a0)
        newSegment->next = newSegment->next->next;
    80004918:	0087b783          	ld	a5,8(a5)
    8000491c:	00f53423          	sd	a5,8(a0)
    80004920:	fbdff06f          	j	800048dc <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x64>
        prev->size+=newSegment->size + sizeof(BlockHeader);
    80004924:	00053783          	ld	a5,0(a0)
    80004928:	00f686b3          	add	a3,a3,a5
    8000492c:	01068693          	addi	a3,a3,16
    80004930:	00d73023          	sd	a3,0(a4)
        prev->next = newSegment->next;
    80004934:	00853783          	ld	a5,8(a0)
    80004938:	00f73423          	sd	a5,8(a4)
    8000493c:	fb5ff06f          	j	800048f0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x78>

0000000080004940 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    //initMemory();
    if(memoryInitiliaized == 0)
    80004940:	00004797          	auipc	a5,0x4
    80004944:	1687a783          	lw	a5,360(a5) # 80008aa8 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004948:	08078263          	beqz	a5,800049cc <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x8c>
{
    8000494c:	fe010113          	addi	sp,sp,-32
    80004950:	00113c23          	sd	ra,24(sp)
    80004954:	00813823          	sd	s0,16(sp)
    80004958:	00913423          	sd	s1,8(sp)
    8000495c:	02010413          	addi	s0,sp,32
        return 1;
    BlockHeader* prev = 0;
    BlockHeader* curr = headAllocated;
    80004960:	00004497          	auipc	s1,0x4
    80004964:	1504b483          	ld	s1,336(s1) # 80008ab0 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* prev = 0;
    80004968:	00000713          	li	a4,0
    while(curr != 0)
    8000496c:	02048a63          	beqz	s1,800049a0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x60>
    {
        if(addr == (void*)((char*)curr + sizeof(BlockHeader)))
    80004970:	01048793          	addi	a5,s1,16
    80004974:	00a78863          	beq	a5,a0,80004984 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x44>
            insertNewFreeSegment((void*)curr, curr->size);

            break;
        }

        prev = curr;
    80004978:	00048713          	mv	a4,s1
        curr = curr->next;
    8000497c:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80004980:	fedff06f          	j	8000496c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x2c>
            if(prev != 0)
    80004984:	02070c63          	beqz	a4,800049bc <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x7c>
                prev->next = curr->next;
    80004988:	0084b783          	ld	a5,8(s1)
    8000498c:	00f73423          	sd	a5,8(a4)
            insertNewFreeSegment((void*)curr, curr->size);
    80004990:	0004b583          	ld	a1,0(s1)
    80004994:	00048513          	mv	a0,s1
    80004998:	00000097          	auipc	ra,0x0
    8000499c:	ee0080e7          	jalr	-288(ra) # 80004878 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>
    }

    if(curr != 0)
    800049a0:	02048a63          	beqz	s1,800049d4 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x94>
        return 0;
    800049a4:	00000513          	li	a0,0
    else
        return 1;
}
    800049a8:	01813083          	ld	ra,24(sp)
    800049ac:	01013403          	ld	s0,16(sp)
    800049b0:	00813483          	ld	s1,8(sp)
    800049b4:	02010113          	addi	sp,sp,32
    800049b8:	00008067          	ret
                headAllocated = curr->next;
    800049bc:	0084b783          	ld	a5,8(s1)
    800049c0:	00004717          	auipc	a4,0x4
    800049c4:	0ef73823          	sd	a5,240(a4) # 80008ab0 <_ZN15MemoryAllocator13headAllocatedE>
    800049c8:	fc9ff06f          	j	80004990 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x50>
        return 1;
    800049cc:	00100513          	li	a0,1
}
    800049d0:	00008067          	ret
        return 1;
    800049d4:	00100513          	li	a0,1
    800049d8:	fd1ff06f          	j	800049a8 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x68>

00000000800049dc <_ZN15MemoryAllocator8mem_freeEPv>:
{
    800049dc:	ff010113          	addi	sp,sp,-16
    800049e0:	00113423          	sd	ra,8(sp)
    800049e4:	00813023          	sd	s0,0(sp)
    800049e8:	01010413          	addi	s0,sp,16
    return tryToFreeSegment(addr);
    800049ec:	00000097          	auipc	ra,0x0
    800049f0:	f54080e7          	jalr	-172(ra) # 80004940 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
}
    800049f4:	00813083          	ld	ra,8(sp)
    800049f8:	00013403          	ld	s0,0(sp)
    800049fc:	01010113          	addi	sp,sp,16
    80004a00:	00008067          	ret

0000000080004a04 <_ZN15MemoryAllocator7kmallocEm>:
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    Riscv::w_a0_sscratch();
}

void* MemoryAllocator::kmalloc(size_t size)
{
    80004a04:	ff010113          	addi	sp,sp,-16
    80004a08:	00113423          	sd	ra,8(sp)
    80004a0c:	00813023          	sd	s0,0(sp)
    80004a10:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    80004a14:	00000097          	auipc	ra,0x0
    80004a18:	e3c080e7          	jalr	-452(ra) # 80004850 <_ZN15MemoryAllocator9mem_allocEm>
}
    80004a1c:	00813083          	ld	ra,8(sp)
    80004a20:	00013403          	ld	s0,0(sp)
    80004a24:	01010113          	addi	sp,sp,16
    80004a28:	00008067          	ret

0000000080004a2c <_ZN15MemoryAllocator15memAllocHandlerEv>:
{
    80004a2c:	ff010113          	addi	sp,sp,-16
    80004a30:	00113423          	sd	ra,8(sp)
    80004a34:	00813023          	sd	s0,0(sp)
    80004a38:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(size));
    80004a3c:	00058513          	mv	a0,a1
    void* allocatedAddr = kmalloc(size);
    80004a40:	00651513          	slli	a0,a0,0x6
    80004a44:	00000097          	auipc	ra,0x0
    80004a48:	fc0080e7          	jalr	-64(ra) # 80004a04 <_ZN15MemoryAllocator7kmallocEm>
    if(allocatedAddr == nullptr)
    80004a4c:	02050063          	beqz	a0,80004a6c <_ZN15MemoryAllocator15memAllocHandlerEv+0x40>
        __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    80004a50:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80004a54:	00000097          	auipc	ra,0x0
    80004a58:	87c080e7          	jalr	-1924(ra) # 800042d0 <_ZN5Riscv13w_a0_sscratchEv>
}
    80004a5c:	00813083          	ld	ra,8(sp)
    80004a60:	00013403          	ld	s0,0(sp)
    80004a64:	01010113          	addi	sp,sp,16
    80004a68:	00008067          	ret
        __asm__ volatile("li a0, 0x0");
    80004a6c:	00000513          	li	a0,0
    80004a70:	fe5ff06f          	j	80004a54 <_ZN15MemoryAllocator15memAllocHandlerEv+0x28>

0000000080004a74 <_ZN15MemoryAllocator5kfreeEPv>:

uint64 MemoryAllocator::kfree(void* p)
{
    80004a74:	ff010113          	addi	sp,sp,-16
    80004a78:	00113423          	sd	ra,8(sp)
    80004a7c:	00813023          	sd	s0,0(sp)
    80004a80:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(p);
    80004a84:	00000097          	auipc	ra,0x0
    80004a88:	f58080e7          	jalr	-168(ra) # 800049dc <_ZN15MemoryAllocator8mem_freeEPv>
    80004a8c:	00813083          	ld	ra,8(sp)
    80004a90:	00013403          	ld	s0,0(sp)
    80004a94:	01010113          	addi	sp,sp,16
    80004a98:	00008067          	ret

0000000080004a9c <_ZN15MemoryAllocator14memFreeHandlerEv>:
{
    80004a9c:	ff010113          	addi	sp,sp,-16
    80004aa0:	00113423          	sd	ra,8(sp)
    80004aa4:	00813023          	sd	s0,0(sp)
    80004aa8:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(addr));
    80004aac:	00058513          	mv	a0,a1
    uint64 retval = kfree((void*)addr);
    80004ab0:	00000097          	auipc	ra,0x0
    80004ab4:	fc4080e7          	jalr	-60(ra) # 80004a74 <_ZN15MemoryAllocator5kfreeEPv>
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    80004ab8:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80004abc:	00000097          	auipc	ra,0x0
    80004ac0:	814080e7          	jalr	-2028(ra) # 800042d0 <_ZN5Riscv13w_a0_sscratchEv>
}
    80004ac4:	00813083          	ld	ra,8(sp)
    80004ac8:	00013403          	ld	s0,0(sp)
    80004acc:	01010113          	addi	sp,sp,16
    80004ad0:	00008067          	ret

0000000080004ad4 <_Z12slabInitTestv>:
#include "../../h/slabTests.hpp"
#include "../../h/KConsole.hpp"

void slabInitTest()
{
    80004ad4:	ff010113          	addi	sp,sp,-16
    80004ad8:	00113423          	sd	ra,8(sp)
    80004adc:	00813023          	sd	s0,0(sp)
    80004ae0:	01010413          	addi	s0,sp,16
    kmem_init((void*)HEAP_START_ADDR, 15);
    80004ae4:	00f00593          	li	a1,15
    80004ae8:	00004797          	auipc	a5,0x4
    80004aec:	df87b783          	ld	a5,-520(a5) # 800088e0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004af0:	0007b503          	ld	a0,0(a5)
    80004af4:	ffffd097          	auipc	ra,0xffffd
    80004af8:	0d4080e7          	jalr	212(ra) # 80001bc8 <_Z9kmem_initPvi>
}
    80004afc:	00813083          	ld	ra,8(sp)
    80004b00:	00013403          	ld	s0,0(sp)
    80004b04:	01010113          	addi	sp,sp,16
    80004b08:	00008067          	ret

0000000080004b0c <_Z19slabCacheCreateTestv>:

void slabCacheCreateTest()
{
    80004b0c:	fe010113          	addi	sp,sp,-32
    80004b10:	00113c23          	sd	ra,24(sp)
    80004b14:	00813823          	sd	s0,16(sp)
    80004b18:	00913423          	sd	s1,8(sp)
    80004b1c:	01213023          	sd	s2,0(sp)
    80004b20:	02010413          	addi	s0,sp,32
    kmem_init((void*)HEAP_START_ADDR, 15);
    80004b24:	00f00593          	li	a1,15
    80004b28:	00004797          	auipc	a5,0x4
    80004b2c:	db87b783          	ld	a5,-584(a5) # 800088e0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004b30:	0007b503          	ld	a0,0(a5)
    80004b34:	ffffd097          	auipc	ra,0xffffd
    80004b38:	094080e7          	jalr	148(ra) # 80001bc8 <_Z9kmem_initPvi>
    kmem_cache_t* cache = kmem_cache_create("Cache test", 10, nullptr,nullptr);
    80004b3c:	00000693          	li	a3,0
    80004b40:	00000613          	li	a2,0
    80004b44:	00a00593          	li	a1,10
    80004b48:	00004517          	auipc	a0,0x4
    80004b4c:	9a850513          	addi	a0,a0,-1624 # 800084f0 <CONSOLE_STATUS+0x4e0>
    80004b50:	ffffd097          	auipc	ra,0xffffd
    80004b54:	1e8080e7          	jalr	488(ra) # 80001d38 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004b58:	00050493          	mv	s1,a0
    kmem_cache_t* cache2 = kmem_cache_create("Cache test 2", 10, nullptr,nullptr);
    80004b5c:	00000693          	li	a3,0
    80004b60:	00000613          	li	a2,0
    80004b64:	00a00593          	li	a1,10
    80004b68:	00004517          	auipc	a0,0x4
    80004b6c:	99850513          	addi	a0,a0,-1640 # 80008500 <CONSOLE_STATUS+0x4f0>
    80004b70:	ffffd097          	auipc	ra,0xffffd
    80004b74:	1c8080e7          	jalr	456(ra) # 80001d38 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004b78:	00050913          	mv	s2,a0
    kmem_cache_t* cache3 = kmem_cache_create("Cache test 3", 10, nullptr,nullptr);
    80004b7c:	00000693          	li	a3,0
    80004b80:	00000613          	li	a2,0
    80004b84:	00a00593          	li	a1,10
    80004b88:	00004517          	auipc	a0,0x4
    80004b8c:	98850513          	addi	a0,a0,-1656 # 80008510 <CONSOLE_STATUS+0x500>
    80004b90:	ffffd097          	auipc	ra,0xffffd
    80004b94:	1a8080e7          	jalr	424(ra) # 80001d38 <_Z17kmem_cache_createPKcmPFvPvES3_>
    if(cache && cache2 && cache3)
    80004b98:	00048a63          	beqz	s1,80004bac <_Z19slabCacheCreateTestv+0xa0>
    80004b9c:	00090863          	beqz	s2,80004bac <_Z19slabCacheCreateTestv+0xa0>
    80004ba0:	00050663          	beqz	a0,80004bac <_Z19slabCacheCreateTestv+0xa0>
        printSlabAllocatorInfo();
    80004ba4:	ffffd097          	auipc	ra,0xffffd
    80004ba8:	3e4080e7          	jalr	996(ra) # 80001f88 <_Z22printSlabAllocatorInfov>
}
    80004bac:	01813083          	ld	ra,24(sp)
    80004bb0:	01013403          	ld	s0,16(sp)
    80004bb4:	00813483          	ld	s1,8(sp)
    80004bb8:	00013903          	ld	s2,0(sp)
    80004bbc:	02010113          	addi	sp,sp,32
    80004bc0:	00008067          	ret

0000000080004bc4 <_Z20slabCacheCreateTest2v>:

void slabCacheCreateTest2()
{
    80004bc4:	fe010113          	addi	sp,sp,-32
    80004bc8:	00113c23          	sd	ra,24(sp)
    80004bcc:	00813823          	sd	s0,16(sp)
    80004bd0:	00913423          	sd	s1,8(sp)
    80004bd4:	01213023          	sd	s2,0(sp)
    80004bd8:	02010413          	addi	s0,sp,32
    kmem_init((void*)HEAP_START_ADDR, 15);
    80004bdc:	00f00593          	li	a1,15
    80004be0:	00004797          	auipc	a5,0x4
    80004be4:	d007b783          	ld	a5,-768(a5) # 800088e0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004be8:	0007b503          	ld	a0,0(a5)
    80004bec:	ffffd097          	auipc	ra,0xffffd
    80004bf0:	fdc080e7          	jalr	-36(ra) # 80001bc8 <_Z9kmem_initPvi>
    kmem_cache_t * cache = nullptr;
    for(int i = 1;i<=68;i++)
    80004bf4:	00100493          	li	s1,1
    kmem_cache_t * cache = nullptr;
    80004bf8:	00000913          	li	s2,0
    for(int i = 1;i<=68;i++)
    80004bfc:	04400793          	li	a5,68
    80004c00:	0297c663          	blt	a5,s1,80004c2c <_Z20slabCacheCreateTest2v+0x68>
    {
        cache = kmem_cache_create("Cache test", 10, nullptr,nullptr);
    80004c04:	00000693          	li	a3,0
    80004c08:	00000613          	li	a2,0
    80004c0c:	00a00593          	li	a1,10
    80004c10:	00004517          	auipc	a0,0x4
    80004c14:	8e050513          	addi	a0,a0,-1824 # 800084f0 <CONSOLE_STATUS+0x4e0>
    80004c18:	ffffd097          	auipc	ra,0xffffd
    80004c1c:	120080e7          	jalr	288(ra) # 80001d38 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004c20:	00050913          	mv	s2,a0
    for(int i = 1;i<=68;i++)
    80004c24:	0014849b          	addiw	s1,s1,1
    80004c28:	fd5ff06f          	j	80004bfc <_Z20slabCacheCreateTest2v+0x38>
    }
    printSlabAllocatorInfo();
    80004c2c:	ffffd097          	auipc	ra,0xffffd
    80004c30:	35c080e7          	jalr	860(ra) # 80001f88 <_Z22printSlabAllocatorInfov>
    kmem_cache_destroy(cache);
    80004c34:	00090513          	mv	a0,s2
    80004c38:	ffffd097          	auipc	ra,0xffffd
    80004c3c:	5e4080e7          	jalr	1508(ra) # 8000221c <_Z18kmem_cache_destroyP12kmem_cache_s>
    printSlabAllocatorInfo();
    80004c40:	ffffd097          	auipc	ra,0xffffd
    80004c44:	348080e7          	jalr	840(ra) # 80001f88 <_Z22printSlabAllocatorInfov>
}
    80004c48:	01813083          	ld	ra,24(sp)
    80004c4c:	01013403          	ld	s0,16(sp)
    80004c50:	00813483          	ld	s1,8(sp)
    80004c54:	00013903          	ld	s2,0(sp)
    80004c58:	02010113          	addi	sp,sp,32
    80004c5c:	00008067          	ret

0000000080004c60 <_Z11testKmallocv>:

void testKmalloc()
{
    80004c60:	fc010113          	addi	sp,sp,-64
    80004c64:	02113c23          	sd	ra,56(sp)
    80004c68:	02813823          	sd	s0,48(sp)
    80004c6c:	02913423          	sd	s1,40(sp)
    80004c70:	03213023          	sd	s2,32(sp)
    80004c74:	01313c23          	sd	s3,24(sp)
    80004c78:	01413823          	sd	s4,16(sp)
    80004c7c:	01513423          	sd	s5,8(sp)
    80004c80:	04010413          	addi	s0,sp,64
    void** x = (void**)kmalloc(sizeof(void*)*200);
    80004c84:	64000513          	li	a0,1600
    80004c88:	ffffd097          	auipc	ra,0xffffd
    80004c8c:	3e8080e7          	jalr	1000(ra) # 80002070 <_Z7kmallocm>
    80004c90:	00050a13          	mv	s4,a0
    int indeks = 0;
    for(int i = 0;i < 10;i++)
    80004c94:	00000a93          	li	s5,0
    int indeks = 0;
    80004c98:	00000493          	li	s1,0
    80004c9c:	0800006f          	j	80004d1c <_Z11testKmallocv+0xbc>
    {
        for(int j = 5;j<=18;j++)
    80004ca0:	0019091b          	addiw	s2,s2,1
        {
            void* adr = kmalloc(1 << j);
            x[indeks++] = adr;
    80004ca4:	00098493          	mv	s1,s3
        for(int j = 5;j<=18;j++)
    80004ca8:	01200793          	li	a5,18
    80004cac:	0727c663          	blt	a5,s2,80004d18 <_Z11testKmallocv+0xb8>
            void* adr = kmalloc(1 << j);
    80004cb0:	00100513          	li	a0,1
    80004cb4:	0125153b          	sllw	a0,a0,s2
    80004cb8:	ffffd097          	auipc	ra,0xffffd
    80004cbc:	3b8080e7          	jalr	952(ra) # 80002070 <_Z7kmallocm>
            x[indeks++] = adr;
    80004cc0:	0014899b          	addiw	s3,s1,1
    80004cc4:	00349493          	slli	s1,s1,0x3
    80004cc8:	009a04b3          	add	s1,s4,s1
    80004ccc:	00a4b023          	sd	a0,0(s1)
            if(adr == nullptr)
    80004cd0:	fc0518e3          	bnez	a0,80004ca0 <_Z11testKmallocv+0x40>
            {
                KConsole::trapPrintString("Nullptr je\n");
    80004cd4:	00004517          	auipc	a0,0x4
    80004cd8:	84c50513          	addi	a0,a0,-1972 # 80008520 <CONSOLE_STATUS+0x510>
    80004cdc:	fffff097          	auipc	ra,0xfffff
    80004ce0:	904080e7          	jalr	-1788(ra) # 800035e0 <_ZN8KConsole15trapPrintStringEPKc>
                KConsole::trapPrintStringInt("i ", i);
    80004ce4:	00a00613          	li	a2,10
    80004ce8:	000a8593          	mv	a1,s5
    80004cec:	00004517          	auipc	a0,0x4
    80004cf0:	84450513          	addi	a0,a0,-1980 # 80008530 <CONSOLE_STATUS+0x520>
    80004cf4:	fffff097          	auipc	ra,0xfffff
    80004cf8:	9c4080e7          	jalr	-1596(ra) # 800036b8 <_ZN8KConsole18trapPrintStringIntEPKcmi>
                KConsole::trapPrintStringInt("j ", j);
    80004cfc:	00a00613          	li	a2,10
    80004d00:	00090593          	mv	a1,s2
    80004d04:	00004517          	auipc	a0,0x4
    80004d08:	83450513          	addi	a0,a0,-1996 # 80008538 <CONSOLE_STATUS+0x528>
    80004d0c:	fffff097          	auipc	ra,0xfffff
    80004d10:	9ac080e7          	jalr	-1620(ra) # 800036b8 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    80004d14:	f8dff06f          	j	80004ca0 <_Z11testKmallocv+0x40>
    for(int i = 0;i < 10;i++)
    80004d18:	001a8a9b          	addiw	s5,s5,1
    80004d1c:	00900793          	li	a5,9
    80004d20:	0157c663          	blt	a5,s5,80004d2c <_Z11testKmallocv+0xcc>
        for(int j = 5;j<=18;j++)
    80004d24:	00500913          	li	s2,5
    80004d28:	f81ff06f          	j	80004ca8 <_Z11testKmallocv+0x48>
    }
    /*for(int i = 0; i < indeks;i++)
    {
        kfree(x[i]);
    }*/
    printSlabAllocatorInfo();
    80004d2c:	ffffd097          	auipc	ra,0xffffd
    80004d30:	25c080e7          	jalr	604(ra) # 80001f88 <_Z22printSlabAllocatorInfov>
}
    80004d34:	03813083          	ld	ra,56(sp)
    80004d38:	03013403          	ld	s0,48(sp)
    80004d3c:	02813483          	ld	s1,40(sp)
    80004d40:	02013903          	ld	s2,32(sp)
    80004d44:	01813983          	ld	s3,24(sp)
    80004d48:	01013a03          	ld	s4,16(sp)
    80004d4c:	00813a83          	ld	s5,8(sp)
    80004d50:	04010113          	addi	sp,sp,64
    80004d54:	00008067          	ret

0000000080004d58 <_Z6memsetPKvii>:
                                    "tc_1",
                                    "tc_2",
                                    "tc_3",
                                    "tc_4"};

void memset(const void *data, int size, int value) {
    80004d58:	ff010113          	addi	sp,sp,-16
    80004d5c:	00813423          	sd	s0,8(sp)
    80004d60:	01010413          	addi	s0,sp,16
    for (int j = 0; j < size; j++) {
    80004d64:	00000793          	li	a5,0
    80004d68:	00b7da63          	bge	a5,a1,80004d7c <_Z6memsetPKvii+0x24>
        *((char *)data + j) = value;
    80004d6c:	00f50733          	add	a4,a0,a5
    80004d70:	00c70023          	sb	a2,0(a4)
    for (int j = 0; j < size; j++) {
    80004d74:	0017879b          	addiw	a5,a5,1
    80004d78:	ff1ff06f          	j	80004d68 <_Z6memsetPKvii+0x10>
    }
}
    80004d7c:	00813403          	ld	s0,8(sp)
    80004d80:	01010113          	addi	sp,sp,16
    80004d84:	00008067          	ret

0000000080004d88 <_Z9constructPv>:

void construct(void *data) {
    80004d88:	ff010113          	addi	sp,sp,-16
    80004d8c:	00113423          	sd	ra,8(sp)
    80004d90:	00813023          	sd	s0,0(sp)
    80004d94:	01010413          	addi	s0,sp,16
    //static int i = 1;
    //KConsole::trapPrintInt(i); i++;
    //KConsole::trapPrintString(" Shared object constructed.\n");
    memset(data, shared_size, MASK);
    80004d98:	0a500613          	li	a2,165
    80004d9c:	00700593          	li	a1,7
    80004da0:	00000097          	auipc	ra,0x0
    80004da4:	fb8080e7          	jalr	-72(ra) # 80004d58 <_Z6memsetPKvii>
}
    80004da8:	00813083          	ld	ra,8(sp)
    80004dac:	00013403          	ld	s0,0(sp)
    80004db0:	01010113          	addi	sp,sp,16
    80004db4:	00008067          	ret

0000000080004db8 <_Z5checkPvm>:

int check(void *data, size_t size) {
    80004db8:	ff010113          	addi	sp,sp,-16
    80004dbc:	00813423          	sd	s0,8(sp)
    80004dc0:	01010413          	addi	s0,sp,16
    80004dc4:	00050613          	mv	a2,a0
    int ret = 1;
    for (size_t i = 0; i < size; i++) {
    80004dc8:	00000793          	li	a5,0
    int ret = 1;
    80004dcc:	00100513          	li	a0,1
    80004dd0:	0080006f          	j	80004dd8 <_Z5checkPvm+0x20>
    for (size_t i = 0; i < size; i++) {
    80004dd4:	00178793          	addi	a5,a5,1
    80004dd8:	00b7fe63          	bgeu	a5,a1,80004df4 <_Z5checkPvm+0x3c>
        if (((unsigned char *)data)[i] != MASK) {
    80004ddc:	00f60733          	add	a4,a2,a5
    80004de0:	00074683          	lbu	a3,0(a4)
    80004de4:	0a500713          	li	a4,165
    80004de8:	fee686e3          	beq	a3,a4,80004dd4 <_Z5checkPvm+0x1c>
            ret = 0;
    80004dec:	00000513          	li	a0,0
    80004df0:	fe5ff06f          	j	80004dd4 <_Z5checkPvm+0x1c>
        }
    }

    return ret;
}
    80004df4:	00813403          	ld	s0,8(sp)
    80004df8:	01010113          	addi	sp,sp,16
    80004dfc:	00008067          	ret

0000000080004e00 <_Z4workPv>:
    kmem_cache_t *cache;
    void *data;
};

void work(void* pdata)
{
    80004e00:	f8010113          	addi	sp,sp,-128
    80004e04:	06113c23          	sd	ra,120(sp)
    80004e08:	06813823          	sd	s0,112(sp)
    80004e0c:	06913423          	sd	s1,104(sp)
    80004e10:	07213023          	sd	s2,96(sp)
    80004e14:	05313c23          	sd	s3,88(sp)
    80004e18:	05413823          	sd	s4,80(sp)
    80004e1c:	05513423          	sd	s5,72(sp)
    80004e20:	05613023          	sd	s6,64(sp)
    80004e24:	03713c23          	sd	s7,56(sp)
    80004e28:	03813823          	sd	s8,48(sp)
    80004e2c:	03913423          	sd	s9,40(sp)
    80004e30:	08010413          	addi	s0,sp,128
    struct data_s data = *(struct data_s*) pdata;
    80004e34:	00053c03          	ld	s8,0(a0)
    80004e38:	f9843423          	sd	s8,-120(s0)
    80004e3c:	00853783          	ld	a5,8(a0)
    80004e40:	f8f43823          	sd	a5,-112(s0)
    80004e44:	01053783          	ld	a5,16(a0)
    80004e48:	f8f43c23          	sd	a5,-104(s0)
    int size = 0;
    int object_size = data.id + 1;
    80004e4c:	000c079b          	sext.w	a5,s8
    80004e50:	001c0c1b          	addiw	s8,s8,1
    kmem_cache_t *cache = kmem_cache_create(CACHE_NAMES[data.id], object_size, 0, 0);
    80004e54:	00379713          	slli	a4,a5,0x3
    80004e58:	00004797          	auipc	a5,0x4
    80004e5c:	a4878793          	addi	a5,a5,-1464 # 800088a0 <_ZL11CACHE_NAMES>
    80004e60:	00e787b3          	add	a5,a5,a4
    80004e64:	000c0b13          	mv	s6,s8
    80004e68:	00000693          	li	a3,0
    80004e6c:	00000613          	li	a2,0
    80004e70:	000c0593          	mv	a1,s8
    80004e74:	0007b503          	ld	a0,0(a5)
    80004e78:	ffffd097          	auipc	ra,0xffffd
    80004e7c:	ec0080e7          	jalr	-320(ra) # 80001d38 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004e80:	00050a13          	mv	s4,a0

    struct objects_s *objs = (struct objects_s*)(kmalloc(sizeof(struct objects_s) * data.iterations));
    80004e84:	f9842b83          	lw	s7,-104(s0)
    80004e88:	004b9513          	slli	a0,s7,0x4
    80004e8c:	ffffd097          	auipc	ra,0xffffd
    80004e90:	1e4080e7          	jalr	484(ra) # 80002070 <_Z7kmallocm>
    80004e94:	00050a93          	mv	s5,a0

    for (int i = 0; i < data.iterations; i++) {
    80004e98:	00000493          	li	s1,0
    int size = 0;
    80004e9c:	00000993          	li	s3,0
    80004ea0:	0380006f          	j	80004ed8 <_Z4workPv+0xd8>
            if (!check(objs[size].data, shared_size)) {
                KConsole::trapPrintString("Value not correct!");
            }
        }
        else {
            objs[size].data = kmem_cache_alloc(cache);
    80004ea4:	00499913          	slli	s2,s3,0x4
    80004ea8:	012a8933          	add	s2,s5,s2
    80004eac:	000a0513          	mv	a0,s4
    80004eb0:	ffffd097          	auipc	ra,0xffffd
    80004eb4:	d50080e7          	jalr	-688(ra) # 80001c00 <_Z16kmem_cache_allocP12kmem_cache_s>
    80004eb8:	00a93423          	sd	a0,8(s2)
            objs[size].cache = cache;
    80004ebc:	01493023          	sd	s4,0(s2)
            memset(objs[size].data, object_size, MASK);
    80004ec0:	0a500613          	li	a2,165
    80004ec4:	000c0593          	mv	a1,s8
    80004ec8:	00000097          	auipc	ra,0x0
    80004ecc:	e90080e7          	jalr	-368(ra) # 80004d58 <_Z6memsetPKvii>
        }
        size++;
    80004ed0:	0019899b          	addiw	s3,s3,1
    for (int i = 0; i < data.iterations; i++) {
    80004ed4:	0014849b          	addiw	s1,s1,1
    80004ed8:	0574da63          	bge	s1,s7,80004f2c <_Z4workPv+0x12c>
        if (i % 100 == 0) {
    80004edc:	06400793          	li	a5,100
    80004ee0:	02f4e7bb          	remw	a5,s1,a5
    80004ee4:	fc0790e3          	bnez	a5,80004ea4 <_Z4workPv+0xa4>
            objs[size].data = kmem_cache_alloc(data.shared);
    80004ee8:	f9043c83          	ld	s9,-112(s0)
    80004eec:	00499913          	slli	s2,s3,0x4
    80004ef0:	012a8933          	add	s2,s5,s2
    80004ef4:	000c8513          	mv	a0,s9
    80004ef8:	ffffd097          	auipc	ra,0xffffd
    80004efc:	d08080e7          	jalr	-760(ra) # 80001c00 <_Z16kmem_cache_allocP12kmem_cache_s>
    80004f00:	00a93423          	sd	a0,8(s2)
            objs[size].cache = data.shared;
    80004f04:	01993023          	sd	s9,0(s2)
            if (!check(objs[size].data, shared_size)) {
    80004f08:	00700593          	li	a1,7
    80004f0c:	00000097          	auipc	ra,0x0
    80004f10:	eac080e7          	jalr	-340(ra) # 80004db8 <_Z5checkPvm>
    80004f14:	fa051ee3          	bnez	a0,80004ed0 <_Z4workPv+0xd0>
                KConsole::trapPrintString("Value not correct!");
    80004f18:	00003517          	auipc	a0,0x3
    80004f1c:	62850513          	addi	a0,a0,1576 # 80008540 <CONSOLE_STATUS+0x530>
    80004f20:	ffffe097          	auipc	ra,0xffffe
    80004f24:	6c0080e7          	jalr	1728(ra) # 800035e0 <_ZN8KConsole15trapPrintStringEPKc>
    80004f28:	fa9ff06f          	j	80004ed0 <_Z4workPv+0xd0>
    }

    kmem_cache_info(cache);
    80004f2c:	000a0513          	mv	a0,s4
    80004f30:	ffffd097          	auipc	ra,0xffffd
    80004f34:	efc080e7          	jalr	-260(ra) # 80001e2c <_Z15kmem_cache_infoP12kmem_cache_s>
    kmem_cache_info(data.shared);
    80004f38:	f9043503          	ld	a0,-112(s0)
    80004f3c:	ffffd097          	auipc	ra,0xffffd
    80004f40:	ef0080e7          	jalr	-272(ra) # 80001e2c <_Z15kmem_cache_infoP12kmem_cache_s>
    //printSlabAllocatorInfo();

    for (int i = 0; i < size; i++) {
    80004f44:	00000913          	li	s2,0
    80004f48:	0300006f          	j	80004f78 <_Z4workPv+0x178>
        if (!check(objs[i].data, (cache == objs[i].cache) ? object_size : shared_size)) {
    80004f4c:	000b0593          	mv	a1,s6
    80004f50:	0440006f          	j	80004f94 <_Z4workPv+0x194>
            KConsole::trapPrintString("Value not correct!");
    80004f54:	00003517          	auipc	a0,0x3
    80004f58:	5ec50513          	addi	a0,a0,1516 # 80008540 <CONSOLE_STATUS+0x530>
    80004f5c:	ffffe097          	auipc	ra,0xffffe
    80004f60:	684080e7          	jalr	1668(ra) # 800035e0 <_ZN8KConsole15trapPrintStringEPKc>
        }
        kmem_cache_free(objs[i].cache, objs[i].data);
    80004f64:	0084b583          	ld	a1,8(s1)
    80004f68:	0004b503          	ld	a0,0(s1)
    80004f6c:	ffffd097          	auipc	ra,0xffffd
    80004f70:	e70080e7          	jalr	-400(ra) # 80001ddc <_Z15kmem_cache_freeP12kmem_cache_sPv>
    for (int i = 0; i < size; i++) {
    80004f74:	0019091b          	addiw	s2,s2,1
    80004f78:	03395663          	bge	s2,s3,80004fa4 <_Z4workPv+0x1a4>
        if (!check(objs[i].data, (cache == objs[i].cache) ? object_size : shared_size)) {
    80004f7c:	00491493          	slli	s1,s2,0x4
    80004f80:	009a84b3          	add	s1,s5,s1
    80004f84:	0084b503          	ld	a0,8(s1)
    80004f88:	0004b783          	ld	a5,0(s1)
    80004f8c:	fd4780e3          	beq	a5,s4,80004f4c <_Z4workPv+0x14c>
    80004f90:	00700593          	li	a1,7
    80004f94:	00000097          	auipc	ra,0x0
    80004f98:	e24080e7          	jalr	-476(ra) # 80004db8 <_Z5checkPvm>
    80004f9c:	fc0514e3          	bnez	a0,80004f64 <_Z4workPv+0x164>
    80004fa0:	fb5ff06f          	j	80004f54 <_Z4workPv+0x154>
    }

    kmem_cache_info(cache);
    80004fa4:	000a0513          	mv	a0,s4
    80004fa8:	ffffd097          	auipc	ra,0xffffd
    80004fac:	e84080e7          	jalr	-380(ra) # 80001e2c <_Z15kmem_cache_infoP12kmem_cache_s>

    //kmem_cache_info(cache);
    //kmem_cache_info(data.shared);
    //printSlabAllocatorInfo();

    kfree(objs);
    80004fb0:	000a8513          	mv	a0,s5
    80004fb4:	ffffd097          	auipc	ra,0xffffd
    80004fb8:	1c0080e7          	jalr	448(ra) # 80002174 <_Z5kfreePKv>
    kmem_cache_destroy(cache);
    80004fbc:	000a0513          	mv	a0,s4
    80004fc0:	ffffd097          	auipc	ra,0xffffd
    80004fc4:	25c080e7          	jalr	604(ra) # 8000221c <_Z18kmem_cache_destroyP12kmem_cache_s>

    //printSlabAllocatorInfo();
}
    80004fc8:	07813083          	ld	ra,120(sp)
    80004fcc:	07013403          	ld	s0,112(sp)
    80004fd0:	06813483          	ld	s1,104(sp)
    80004fd4:	06013903          	ld	s2,96(sp)
    80004fd8:	05813983          	ld	s3,88(sp)
    80004fdc:	05013a03          	ld	s4,80(sp)
    80004fe0:	04813a83          	ld	s5,72(sp)
    80004fe4:	04013b03          	ld	s6,64(sp)
    80004fe8:	03813b83          	ld	s7,56(sp)
    80004fec:	03013c03          	ld	s8,48(sp)
    80004ff0:	02813c83          	ld	s9,40(sp)
    80004ff4:	08010113          	addi	sp,sp,128
    80004ff8:	00008067          	ret

0000000080004ffc <_Z4runsPFvPvEP6data_si>:

void runs(void(*work)(void*), struct data_s* data, int num) {
    80004ffc:	fb010113          	addi	sp,sp,-80
    80005000:	04113423          	sd	ra,72(sp)
    80005004:	04813023          	sd	s0,64(sp)
    80005008:	02913c23          	sd	s1,56(sp)
    8000500c:	03213823          	sd	s2,48(sp)
    80005010:	03313423          	sd	s3,40(sp)
    80005014:	05010413          	addi	s0,sp,80
    80005018:	00050993          	mv	s3,a0
    8000501c:	00058913          	mv	s2,a1
    for (int i = 0; i < RUN_NUM; i++) {
    80005020:	00000493          	li	s1,0
    80005024:	00400793          	li	a5,4
    80005028:	0297c863          	blt	a5,s1,80005058 <_Z4runsPFvPvEP6data_si+0x5c>
        struct data_s private_data;
        private_data = *(struct data_s*) data;
    8000502c:	00093783          	ld	a5,0(s2)
    80005030:	faf43c23          	sd	a5,-72(s0)
    80005034:	00893783          	ld	a5,8(s2)
    80005038:	fcf43023          	sd	a5,-64(s0)
    8000503c:	01093783          	ld	a5,16(s2)
    80005040:	fcf43423          	sd	a5,-56(s0)
        private_data.id = i;
    80005044:	fa942c23          	sw	s1,-72(s0)
        work(&private_data);
    80005048:	fb840513          	addi	a0,s0,-72
    8000504c:	000980e7          	jalr	s3
    for (int i = 0; i < RUN_NUM; i++) {
    80005050:	0014849b          	addiw	s1,s1,1
    80005054:	fd1ff06f          	j	80005024 <_Z4runsPFvPvEP6data_si+0x28>
    }
}
    80005058:	04813083          	ld	ra,72(sp)
    8000505c:	04013403          	ld	s0,64(sp)
    80005060:	03813483          	ld	s1,56(sp)
    80005064:	03013903          	ld	s2,48(sp)
    80005068:	02813983          	ld	s3,40(sp)
    8000506c:	05010113          	addi	sp,sp,80
    80005070:	00008067          	ret

0000000080005074 <_Z7testOS2v>:

void testOS2()
{
    80005074:	fc010113          	addi	sp,sp,-64
    80005078:	02113c23          	sd	ra,56(sp)
    8000507c:	02813823          	sd	s0,48(sp)
    80005080:	02913423          	sd	s1,40(sp)
    80005084:	04010413          	addi	s0,sp,64
    kmem_cache_t *shared = kmem_cache_create("shared object", shared_size, construct, nullptr);
    80005088:	00000693          	li	a3,0
    8000508c:	00000617          	auipc	a2,0x0
    80005090:	cfc60613          	addi	a2,a2,-772 # 80004d88 <_Z9constructPv>
    80005094:	00700593          	li	a1,7
    80005098:	00003517          	auipc	a0,0x3
    8000509c:	4c050513          	addi	a0,a0,1216 # 80008558 <CONSOLE_STATUS+0x548>
    800050a0:	ffffd097          	auipc	ra,0xffffd
    800050a4:	c98080e7          	jalr	-872(ra) # 80001d38 <_Z17kmem_cache_createPKcmPFvPvES3_>
    800050a8:	00050493          	mv	s1,a0

    struct data_s data;
    data.shared = shared;
    800050ac:	fca43823          	sd	a0,-48(s0)
    data.iterations = ITERATIONS;
    800050b0:	3e800793          	li	a5,1000
    800050b4:	fcf42c23          	sw	a5,-40(s0)
    runs(work, &data, RUN_NUM);
    800050b8:	00500613          	li	a2,5
    800050bc:	fc840593          	addi	a1,s0,-56
    800050c0:	00000517          	auipc	a0,0x0
    800050c4:	d4050513          	addi	a0,a0,-704 # 80004e00 <_Z4workPv>
    800050c8:	00000097          	auipc	ra,0x0
    800050cc:	f34080e7          	jalr	-204(ra) # 80004ffc <_Z4runsPFvPvEP6data_si>

    kmem_cache_destroy(shared);
    800050d0:	00048513          	mv	a0,s1
    800050d4:	ffffd097          	auipc	ra,0xffffd
    800050d8:	148080e7          	jalr	328(ra) # 8000221c <_Z18kmem_cache_destroyP12kmem_cache_s>
    800050dc:	03813083          	ld	ra,56(sp)
    800050e0:	03013403          	ld	s0,48(sp)
    800050e4:	02813483          	ld	s1,40(sp)
    800050e8:	04010113          	addi	sp,sp,64
    800050ec:	00008067          	ret

00000000800050f0 <_ZN10KSemaphoreC1Ei>:
#include "../../h/KSemaphore.hpp"
#include "../../h/MemoryAllocator.hpp"
#include "../../h/Riscv.hpp"
#include "../../h/Scheduler.hpp"

KSemaphore::KSemaphore(int val)
    800050f0:	ff010113          	addi	sp,sp,-16
    800050f4:	00813423          	sd	s0,8(sp)
    800050f8:	01010413          	addi	s0,sp,16
{
    this->val = val;
    800050fc:	00b52823          	sw	a1,16(a0)
    headBlocked = tailBlocked = 0;
    80005100:	00053423          	sd	zero,8(a0)
    80005104:	00053023          	sd	zero,0(a0)
}
    80005108:	00813403          	ld	s0,8(sp)
    8000510c:	01010113          	addi	sp,sp,16
    80005110:	00008067          	ret

0000000080005114 <_ZN10KSemaphore12addToBlockedEP3PCB>:
        Scheduler::put(pcb);
    }
}

void KSemaphore::addToBlocked(PCB* pcb)
{
    80005114:	ff010113          	addi	sp,sp,-16
    80005118:	00813423          	sd	s0,8(sp)
    8000511c:	01010413          	addi	s0,sp,16
    pcb->nextPCB = 0;
    80005120:	0005b423          	sd	zero,8(a1)
    if(headBlocked == 0)
    80005124:	00053783          	ld	a5,0(a0)
    80005128:	00078e63          	beqz	a5,80005144 <_ZN10KSemaphore12addToBlockedEP3PCB+0x30>
    {
        headBlocked = tailBlocked = pcb;
    }
    else
    {
        tailBlocked->nextPCB = pcb;
    8000512c:	00853783          	ld	a5,8(a0)
    80005130:	00b7b423          	sd	a1,8(a5)
        tailBlocked = pcb;
    80005134:	00b53423          	sd	a1,8(a0)
    }
}
    80005138:	00813403          	ld	s0,8(sp)
    8000513c:	01010113          	addi	sp,sp,16
    80005140:	00008067          	ret
        headBlocked = tailBlocked = pcb;
    80005144:	00b53423          	sd	a1,8(a0)
    80005148:	00b53023          	sd	a1,0(a0)
    8000514c:	fedff06f          	j	80005138 <_ZN10KSemaphore12addToBlockedEP3PCB+0x24>

0000000080005150 <_ZN10KSemaphore5blockEv>:

void KSemaphore::block()
{
    80005150:	ff010113          	addi	sp,sp,-16
    80005154:	00113423          	sd	ra,8(sp)
    80005158:	00813023          	sd	s0,0(sp)
    8000515c:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SUSPENDED);
    80005160:	00003797          	auipc	a5,0x3
    80005164:	7f87b783          	ld	a5,2040(a5) # 80008958 <_GLOBAL_OFFSET_TABLE_+0x90>
    80005168:	0007b583          	ld	a1,0(a5)
    void setState(State s) {state = s;}
    8000516c:	00200793          	li	a5,2
    80005170:	04f5a023          	sw	a5,64(a1)
    addToBlocked(PCB::running);
    80005174:	00000097          	auipc	ra,0x0
    80005178:	fa0080e7          	jalr	-96(ra) # 80005114 <_ZN10KSemaphore12addToBlockedEP3PCB>
    PCB::dispatch();
    8000517c:	ffffd097          	auipc	ra,0xffffd
    80005180:	3a0080e7          	jalr	928(ra) # 8000251c <_ZN3PCB8dispatchEv>
}
    80005184:	00813083          	ld	ra,8(sp)
    80005188:	00013403          	ld	s0,0(sp)
    8000518c:	01010113          	addi	sp,sp,16
    80005190:	00008067          	ret

0000000080005194 <_ZN10KSemaphore4waitEv>:
    PCB::running->retFromClosedSem = false;
    80005194:	00003797          	auipc	a5,0x3
    80005198:	7c47b783          	ld	a5,1988(a5) # 80008958 <_GLOBAL_OFFSET_TABLE_+0x90>
    8000519c:	0007b783          	ld	a5,0(a5)
    800051a0:	04078c23          	sb	zero,88(a5)
    if(--val < 0)
    800051a4:	01052783          	lw	a5,16(a0)
    800051a8:	fff7879b          	addiw	a5,a5,-1
    800051ac:	00f52823          	sw	a5,16(a0)
    800051b0:	02079713          	slli	a4,a5,0x20
    800051b4:	00074663          	bltz	a4,800051c0 <_ZN10KSemaphore4waitEv+0x2c>
}
    800051b8:	00000513          	li	a0,0
    800051bc:	00008067          	ret
{
    800051c0:	ff010113          	addi	sp,sp,-16
    800051c4:	00113423          	sd	ra,8(sp)
    800051c8:	00813023          	sd	s0,0(sp)
    800051cc:	01010413          	addi	s0,sp,16
        block();
    800051d0:	00000097          	auipc	ra,0x0
    800051d4:	f80080e7          	jalr	-128(ra) # 80005150 <_ZN10KSemaphore5blockEv>
}
    800051d8:	00000513          	li	a0,0
    800051dc:	00813083          	ld	ra,8(sp)
    800051e0:	00013403          	ld	s0,0(sp)
    800051e4:	01010113          	addi	sp,sp,16
    800051e8:	00008067          	ret

00000000800051ec <_ZN10KSemaphore15getFirstBlockedEv>:

PCB* KSemaphore::getFirstBlocked()
{
    800051ec:	ff010113          	addi	sp,sp,-16
    800051f0:	00813423          	sd	s0,8(sp)
    800051f4:	01010413          	addi	s0,sp,16
   return headBlocked;
}
    800051f8:	00053503          	ld	a0,0(a0)
    800051fc:	00813403          	ld	s0,8(sp)
    80005200:	01010113          	addi	sp,sp,16
    80005204:	00008067          	ret

0000000080005208 <_ZN10KSemaphore18removeFirstBlockedEv>:

void KSemaphore::removeFirstBlocked()
{
    80005208:	ff010113          	addi	sp,sp,-16
    8000520c:	00813423          	sd	s0,8(sp)
    80005210:	01010413          	addi	s0,sp,16
    if(headBlocked == 0)
    80005214:	00053783          	ld	a5,0(a0)
    80005218:	00078c63          	beqz	a5,80005230 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>
        return;
    PCB* first = headBlocked;
    headBlocked = headBlocked->nextPCB;
    8000521c:	0087b703          	ld	a4,8(a5)
    80005220:	00e53023          	sd	a4,0(a0)
    first->nextPCB = 0;
    80005224:	0007b423          	sd	zero,8(a5)
    if(headBlocked == 0)
    80005228:	00053783          	ld	a5,0(a0)
    8000522c:	00078863          	beqz	a5,8000523c <_ZN10KSemaphore18removeFirstBlockedEv+0x34>
        tailBlocked =0;
}
    80005230:	00813403          	ld	s0,8(sp)
    80005234:	01010113          	addi	sp,sp,16
    80005238:	00008067          	ret
        tailBlocked =0;
    8000523c:	00053423          	sd	zero,8(a0)
    80005240:	ff1ff06f          	j	80005230 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>

0000000080005244 <_ZN10KSemaphoreD1Ev>:
KSemaphore::~KSemaphore()
    80005244:	fe010113          	addi	sp,sp,-32
    80005248:	00113c23          	sd	ra,24(sp)
    8000524c:	00813823          	sd	s0,16(sp)
    80005250:	00913423          	sd	s1,8(sp)
    80005254:	01213023          	sd	s2,0(sp)
    80005258:	02010413          	addi	s0,sp,32
    8000525c:	00050913          	mv	s2,a0
    while(getFirstBlocked() != 0)
    80005260:	00090513          	mv	a0,s2
    80005264:	00000097          	auipc	ra,0x0
    80005268:	f88080e7          	jalr	-120(ra) # 800051ec <_ZN10KSemaphore15getFirstBlockedEv>
    8000526c:	00050493          	mv	s1,a0
    80005270:	02050463          	beqz	a0,80005298 <_ZN10KSemaphoreD1Ev+0x54>
        removeFirstBlocked();
    80005274:	00090513          	mv	a0,s2
    80005278:	00000097          	auipc	ra,0x0
    8000527c:	f90080e7          	jalr	-112(ra) # 80005208 <_ZN10KSemaphore18removeFirstBlockedEv>
        pcb->retFromClosedSem = true;
    80005280:	00100793          	li	a5,1
    80005284:	04f48c23          	sb	a5,88(s1)
        Scheduler::put(pcb);
    80005288:	00048513          	mv	a0,s1
    8000528c:	ffffe097          	auipc	ra,0xffffe
    80005290:	60c080e7          	jalr	1548(ra) # 80003898 <_ZN9Scheduler3putEP3PCB>
    while(getFirstBlocked() != 0)
    80005294:	fcdff06f          	j	80005260 <_ZN10KSemaphoreD1Ev+0x1c>
}
    80005298:	01813083          	ld	ra,24(sp)
    8000529c:	01013403          	ld	s0,16(sp)
    800052a0:	00813483          	ld	s1,8(sp)
    800052a4:	00013903          	ld	s2,0(sp)
    800052a8:	02010113          	addi	sp,sp,32
    800052ac:	00008067          	ret

00000000800052b0 <_ZN10KSemaphore7unblockEv>:

void KSemaphore::unblock() {
    800052b0:	fe010113          	addi	sp,sp,-32
    800052b4:	00113c23          	sd	ra,24(sp)
    800052b8:	00813823          	sd	s0,16(sp)
    800052bc:	00913423          	sd	s1,8(sp)
    800052c0:	01213023          	sd	s2,0(sp)
    800052c4:	02010413          	addi	s0,sp,32
    800052c8:	00050913          	mv	s2,a0
    PCB* fr = getFirstBlocked();
    800052cc:	00000097          	auipc	ra,0x0
    800052d0:	f20080e7          	jalr	-224(ra) # 800051ec <_ZN10KSemaphore15getFirstBlockedEv>
    800052d4:	00050493          	mv	s1,a0
    removeFirstBlocked();
    800052d8:	00090513          	mv	a0,s2
    800052dc:	00000097          	auipc	ra,0x0
    800052e0:	f2c080e7          	jalr	-212(ra) # 80005208 <_ZN10KSemaphore18removeFirstBlockedEv>
    if(fr != 0)
    800052e4:	00048863          	beqz	s1,800052f4 <_ZN10KSemaphore7unblockEv+0x44>
    {
        Scheduler::put(fr);
    800052e8:	00048513          	mv	a0,s1
    800052ec:	ffffe097          	auipc	ra,0xffffe
    800052f0:	5ac080e7          	jalr	1452(ra) # 80003898 <_ZN9Scheduler3putEP3PCB>
    }
}
    800052f4:	01813083          	ld	ra,24(sp)
    800052f8:	01013403          	ld	s0,16(sp)
    800052fc:	00813483          	ld	s1,8(sp)
    80005300:	00013903          	ld	s2,0(sp)
    80005304:	02010113          	addi	sp,sp,32
    80005308:	00008067          	ret

000000008000530c <_ZN10KSemaphore6signalEv>:
    if(++val <= 0)
    8000530c:	01052783          	lw	a5,16(a0)
    80005310:	0017879b          	addiw	a5,a5,1
    80005314:	0007871b          	sext.w	a4,a5
    80005318:	00f52823          	sw	a5,16(a0)
    8000531c:	00e05663          	blez	a4,80005328 <_ZN10KSemaphore6signalEv+0x1c>
}
    80005320:	00000513          	li	a0,0
    80005324:	00008067          	ret
uint64 KSemaphore::signal() {
    80005328:	ff010113          	addi	sp,sp,-16
    8000532c:	00113423          	sd	ra,8(sp)
    80005330:	00813023          	sd	s0,0(sp)
    80005334:	01010413          	addi	s0,sp,16
        unblock();
    80005338:	00000097          	auipc	ra,0x0
    8000533c:	f78080e7          	jalr	-136(ra) # 800052b0 <_ZN10KSemaphore7unblockEv>
}
    80005340:	00000513          	li	a0,0
    80005344:	00813083          	ld	ra,8(sp)
    80005348:	00013403          	ld	s0,0(sp)
    8000534c:	01010113          	addi	sp,sp,16
    80005350:	00008067          	ret

0000000080005354 <_ZN10KSemaphorenwEm>:
void *KSemaphore::operator new(size_t size) {
    80005354:	ff010113          	addi	sp,sp,-16
    80005358:	00113423          	sd	ra,8(sp)
    8000535c:	00813023          	sd	s0,0(sp)
    80005360:	01010413          	addi	s0,sp,16
    return kmem_cache_alloc(Riscv::semaphoreCache);
    80005364:	00003797          	auipc	a5,0x3
    80005368:	5847b783          	ld	a5,1412(a5) # 800088e8 <_GLOBAL_OFFSET_TABLE_+0x20>
    8000536c:	0007b503          	ld	a0,0(a5)
    80005370:	ffffd097          	auipc	ra,0xffffd
    80005374:	890080e7          	jalr	-1904(ra) # 80001c00 <_Z16kmem_cache_allocP12kmem_cache_s>
    //return MemoryAllocator::kmalloc(size);
}
    80005378:	00813083          	ld	ra,8(sp)
    8000537c:	00013403          	ld	s0,0(sp)
    80005380:	01010113          	addi	sp,sp,16
    80005384:	00008067          	ret

0000000080005388 <_ZN10KSemaphore14semOpenHandlerEv>:
{
    80005388:	fd010113          	addi	sp,sp,-48
    8000538c:	02113423          	sd	ra,40(sp)
    80005390:	02813023          	sd	s0,32(sp)
    80005394:	00913c23          	sd	s1,24(sp)
    80005398:	01213823          	sd	s2,16(sp)
    8000539c:	01313423          	sd	s3,8(sp)
    800053a0:	03010413          	addi	s0,sp,48
    __asm__ volatile("mv %0, a1" : "=r"(semaphoreHandle));
    800053a4:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(val));
    800053a8:	00060993          	mv	s3,a2
    KSemaphore* newSem = new KSemaphore(val);
    800053ac:	01800513          	li	a0,24
    800053b0:	00000097          	auipc	ra,0x0
    800053b4:	fa4080e7          	jalr	-92(ra) # 80005354 <_ZN10KSemaphorenwEm>
    800053b8:	00050493          	mv	s1,a0
    800053bc:	00050863          	beqz	a0,800053cc <_ZN10KSemaphore14semOpenHandlerEv+0x44>
    800053c0:	0009859b          	sext.w	a1,s3
    800053c4:	00000097          	auipc	ra,0x0
    800053c8:	d2c080e7          	jalr	-724(ra) # 800050f0 <_ZN10KSemaphoreC1Ei>
    (*semaphoreHandle) = newSem;
    800053cc:	00993023          	sd	s1,0(s2)
    if(newSem == 0)
    800053d0:	02048663          	beqz	s1,800053fc <_ZN10KSemaphore14semOpenHandlerEv+0x74>
            __asm__ volatile("li a0, 0");
    800053d4:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    800053d8:	fffff097          	auipc	ra,0xfffff
    800053dc:	ef8080e7          	jalr	-264(ra) # 800042d0 <_ZN5Riscv13w_a0_sscratchEv>
}
    800053e0:	02813083          	ld	ra,40(sp)
    800053e4:	02013403          	ld	s0,32(sp)
    800053e8:	01813483          	ld	s1,24(sp)
    800053ec:	01013903          	ld	s2,16(sp)
    800053f0:	00813983          	ld	s3,8(sp)
    800053f4:	03010113          	addi	sp,sp,48
    800053f8:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    800053fc:	fff00513          	li	a0,-1
    80005400:	fd9ff06f          	j	800053d8 <_ZN10KSemaphore14semOpenHandlerEv+0x50>

0000000080005404 <_ZN10KSemaphoredlEPv>:

void KSemaphore::operator delete(void *p)
{
    80005404:	ff010113          	addi	sp,sp,-16
    80005408:	00113423          	sd	ra,8(sp)
    8000540c:	00813023          	sd	s0,0(sp)
    80005410:	01010413          	addi	s0,sp,16
    80005414:	00050593          	mv	a1,a0
    kmem_cache_free(Riscv::semaphoreCache, p);
    80005418:	00003797          	auipc	a5,0x3
    8000541c:	4d07b783          	ld	a5,1232(a5) # 800088e8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80005420:	0007b503          	ld	a0,0(a5)
    80005424:	ffffd097          	auipc	ra,0xffffd
    80005428:	9b8080e7          	jalr	-1608(ra) # 80001ddc <_Z15kmem_cache_freeP12kmem_cache_sPv>
    //MemoryAllocator::kfree(p);
}
    8000542c:	00813083          	ld	ra,8(sp)
    80005430:	00013403          	ld	s0,0(sp)
    80005434:	01010113          	addi	sp,sp,16
    80005438:	00008067          	ret

000000008000543c <_ZN10KSemaphore14semWaitHandlerEv>:

void KSemaphore::semWaitHandler()
{
    8000543c:	ff010113          	addi	sp,sp,-16
    80005440:	00113423          	sd	ra,8(sp)
    80005444:	00813023          	sd	s0,0(sp)
    80005448:	01010413          	addi	s0,sp,16
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    8000544c:	00058513          	mv	a0,a1
    kSem->wait();
    80005450:	00000097          	auipc	ra,0x0
    80005454:	d44080e7          	jalr	-700(ra) # 80005194 <_ZN10KSemaphore4waitEv>
    if(PCB::running->retFromClosedSem)
    80005458:	00003797          	auipc	a5,0x3
    8000545c:	5007b783          	ld	a5,1280(a5) # 80008958 <_GLOBAL_OFFSET_TABLE_+0x90>
    80005460:	0007b783          	ld	a5,0(a5)
    80005464:	0587c783          	lbu	a5,88(a5)
    80005468:	02078063          	beqz	a5,80005488 <_ZN10KSemaphore14semWaitHandlerEv+0x4c>
        __asm__ volatile("li a0, 0x1");
    8000546c:	00100513          	li	a0,1
    else
        __asm__ volatile("li a0, 0x0");
    Riscv::w_a0_sscratch();
    80005470:	fffff097          	auipc	ra,0xfffff
    80005474:	e60080e7          	jalr	-416(ra) # 800042d0 <_ZN5Riscv13w_a0_sscratchEv>
}
    80005478:	00813083          	ld	ra,8(sp)
    8000547c:	00013403          	ld	s0,0(sp)
    80005480:	01010113          	addi	sp,sp,16
    80005484:	00008067          	ret
        __asm__ volatile("li a0, 0x0");
    80005488:	00000513          	li	a0,0
    8000548c:	fe5ff06f          	j	80005470 <_ZN10KSemaphore14semWaitHandlerEv+0x34>

0000000080005490 <_ZN10KSemaphore16semSignalHandlerEv>:

void KSemaphore::semSignalHandler() {
    80005490:	ff010113          	addi	sp,sp,-16
    80005494:	00113423          	sd	ra,8(sp)
    80005498:	00813023          	sd	s0,0(sp)
    8000549c:	01010413          	addi	s0,sp,16
    KSemaphore *kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    800054a0:	00058513          	mv	a0,a1
    if (kSem == 0)
    800054a4:	02050463          	beqz	a0,800054cc <_ZN10KSemaphore16semSignalHandlerEv+0x3c>
    {
        __asm__ volatile("li a0, 0x1");
    }
    else
    {
        kSem->signal();
    800054a8:	00000097          	auipc	ra,0x0
    800054ac:	e64080e7          	jalr	-412(ra) # 8000530c <_ZN10KSemaphore6signalEv>
        __asm__ volatile("li a0, 0x0");
    800054b0:	00000513          	li	a0,0
    }
    Riscv::w_a0_sscratch();
    800054b4:	fffff097          	auipc	ra,0xfffff
    800054b8:	e1c080e7          	jalr	-484(ra) # 800042d0 <_ZN5Riscv13w_a0_sscratchEv>
}
    800054bc:	00813083          	ld	ra,8(sp)
    800054c0:	00013403          	ld	s0,0(sp)
    800054c4:	01010113          	addi	sp,sp,16
    800054c8:	00008067          	ret
        __asm__ volatile("li a0, 0x1");
    800054cc:	00100513          	li	a0,1
    800054d0:	fe5ff06f          	j	800054b4 <_ZN10KSemaphore16semSignalHandlerEv+0x24>

00000000800054d4 <_ZN10KSemaphore15semCloseHandlerEv>:

void KSemaphore::semCloseHandler()
{
    800054d4:	fe010113          	addi	sp,sp,-32
    800054d8:	00113c23          	sd	ra,24(sp)
    800054dc:	00813823          	sd	s0,16(sp)
    800054e0:	00913423          	sd	s1,8(sp)
    800054e4:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    800054e8:	00058493          	mv	s1,a1
    delete kSem;
    800054ec:	00048e63          	beqz	s1,80005508 <_ZN10KSemaphore15semCloseHandlerEv+0x34>
    800054f0:	00048513          	mv	a0,s1
    800054f4:	00000097          	auipc	ra,0x0
    800054f8:	d50080e7          	jalr	-688(ra) # 80005244 <_ZN10KSemaphoreD1Ev>
    800054fc:	00048513          	mv	a0,s1
    80005500:	00000097          	auipc	ra,0x0
    80005504:	f04080e7          	jalr	-252(ra) # 80005404 <_ZN10KSemaphoredlEPv>
    __asm__ volatile("li a0, 0");
    80005508:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    8000550c:	fffff097          	auipc	ra,0xfffff
    80005510:	dc4080e7          	jalr	-572(ra) # 800042d0 <_ZN5Riscv13w_a0_sscratchEv>
}
    80005514:	01813083          	ld	ra,24(sp)
    80005518:	01013403          	ld	s0,16(sp)
    8000551c:	00813483          	ld	s1,8(sp)
    80005520:	02010113          	addi	sp,sp,32
    80005524:	00008067          	ret

0000000080005528 <start>:
    80005528:	ff010113          	addi	sp,sp,-16
    8000552c:	00813423          	sd	s0,8(sp)
    80005530:	01010413          	addi	s0,sp,16
    80005534:	300027f3          	csrr	a5,mstatus
    80005538:	ffffe737          	lui	a4,0xffffe
    8000553c:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7ffef7ff>
    80005540:	00e7f7b3          	and	a5,a5,a4
    80005544:	00001737          	lui	a4,0x1
    80005548:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    8000554c:	00e7e7b3          	or	a5,a5,a4
    80005550:	30079073          	csrw	mstatus,a5
    80005554:	00000797          	auipc	a5,0x0
    80005558:	16078793          	addi	a5,a5,352 # 800056b4 <system_main>
    8000555c:	34179073          	csrw	mepc,a5
    80005560:	00000793          	li	a5,0
    80005564:	18079073          	csrw	satp,a5
    80005568:	000107b7          	lui	a5,0x10
    8000556c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80005570:	30279073          	csrw	medeleg,a5
    80005574:	30379073          	csrw	mideleg,a5
    80005578:	104027f3          	csrr	a5,sie
    8000557c:	2227e793          	ori	a5,a5,546
    80005580:	10479073          	csrw	sie,a5
    80005584:	fff00793          	li	a5,-1
    80005588:	00a7d793          	srli	a5,a5,0xa
    8000558c:	3b079073          	csrw	pmpaddr0,a5
    80005590:	00f00793          	li	a5,15
    80005594:	3a079073          	csrw	pmpcfg0,a5
    80005598:	f14027f3          	csrr	a5,mhartid
    8000559c:	0200c737          	lui	a4,0x200c
    800055a0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800055a4:	0007869b          	sext.w	a3,a5
    800055a8:	00269713          	slli	a4,a3,0x2
    800055ac:	000f4637          	lui	a2,0xf4
    800055b0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800055b4:	00d70733          	add	a4,a4,a3
    800055b8:	0037979b          	slliw	a5,a5,0x3
    800055bc:	020046b7          	lui	a3,0x2004
    800055c0:	00d787b3          	add	a5,a5,a3
    800055c4:	00c585b3          	add	a1,a1,a2
    800055c8:	00371693          	slli	a3,a4,0x3
    800055cc:	00003717          	auipc	a4,0x3
    800055d0:	4f470713          	addi	a4,a4,1268 # 80008ac0 <timer_scratch>
    800055d4:	00b7b023          	sd	a1,0(a5)
    800055d8:	00d70733          	add	a4,a4,a3
    800055dc:	00f73c23          	sd	a5,24(a4)
    800055e0:	02c73023          	sd	a2,32(a4)
    800055e4:	34071073          	csrw	mscratch,a4
    800055e8:	00000797          	auipc	a5,0x0
    800055ec:	6e878793          	addi	a5,a5,1768 # 80005cd0 <timervec>
    800055f0:	30579073          	csrw	mtvec,a5
    800055f4:	300027f3          	csrr	a5,mstatus
    800055f8:	0087e793          	ori	a5,a5,8
    800055fc:	30079073          	csrw	mstatus,a5
    80005600:	304027f3          	csrr	a5,mie
    80005604:	0807e793          	ori	a5,a5,128
    80005608:	30479073          	csrw	mie,a5
    8000560c:	f14027f3          	csrr	a5,mhartid
    80005610:	0007879b          	sext.w	a5,a5
    80005614:	00078213          	mv	tp,a5
    80005618:	30200073          	mret
    8000561c:	00813403          	ld	s0,8(sp)
    80005620:	01010113          	addi	sp,sp,16
    80005624:	00008067          	ret

0000000080005628 <timerinit>:
    80005628:	ff010113          	addi	sp,sp,-16
    8000562c:	00813423          	sd	s0,8(sp)
    80005630:	01010413          	addi	s0,sp,16
    80005634:	f14027f3          	csrr	a5,mhartid
    80005638:	0200c737          	lui	a4,0x200c
    8000563c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005640:	0007869b          	sext.w	a3,a5
    80005644:	00269713          	slli	a4,a3,0x2
    80005648:	000f4637          	lui	a2,0xf4
    8000564c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005650:	00d70733          	add	a4,a4,a3
    80005654:	0037979b          	slliw	a5,a5,0x3
    80005658:	020046b7          	lui	a3,0x2004
    8000565c:	00d787b3          	add	a5,a5,a3
    80005660:	00c585b3          	add	a1,a1,a2
    80005664:	00371693          	slli	a3,a4,0x3
    80005668:	00003717          	auipc	a4,0x3
    8000566c:	45870713          	addi	a4,a4,1112 # 80008ac0 <timer_scratch>
    80005670:	00b7b023          	sd	a1,0(a5)
    80005674:	00d70733          	add	a4,a4,a3
    80005678:	00f73c23          	sd	a5,24(a4)
    8000567c:	02c73023          	sd	a2,32(a4)
    80005680:	34071073          	csrw	mscratch,a4
    80005684:	00000797          	auipc	a5,0x0
    80005688:	64c78793          	addi	a5,a5,1612 # 80005cd0 <timervec>
    8000568c:	30579073          	csrw	mtvec,a5
    80005690:	300027f3          	csrr	a5,mstatus
    80005694:	0087e793          	ori	a5,a5,8
    80005698:	30079073          	csrw	mstatus,a5
    8000569c:	304027f3          	csrr	a5,mie
    800056a0:	0807e793          	ori	a5,a5,128
    800056a4:	30479073          	csrw	mie,a5
    800056a8:	00813403          	ld	s0,8(sp)
    800056ac:	01010113          	addi	sp,sp,16
    800056b0:	00008067          	ret

00000000800056b4 <system_main>:
    800056b4:	fe010113          	addi	sp,sp,-32
    800056b8:	00813823          	sd	s0,16(sp)
    800056bc:	00913423          	sd	s1,8(sp)
    800056c0:	00113c23          	sd	ra,24(sp)
    800056c4:	02010413          	addi	s0,sp,32
    800056c8:	00000097          	auipc	ra,0x0
    800056cc:	0c4080e7          	jalr	196(ra) # 8000578c <cpuid>
    800056d0:	00003497          	auipc	s1,0x3
    800056d4:	2d048493          	addi	s1,s1,720 # 800089a0 <started>
    800056d8:	02050263          	beqz	a0,800056fc <system_main+0x48>
    800056dc:	0004a783          	lw	a5,0(s1)
    800056e0:	0007879b          	sext.w	a5,a5
    800056e4:	fe078ce3          	beqz	a5,800056dc <system_main+0x28>
    800056e8:	0ff0000f          	fence
    800056ec:	00003517          	auipc	a0,0x3
    800056f0:	ed450513          	addi	a0,a0,-300 # 800085c0 <CONSOLE_STATUS+0x5b0>
    800056f4:	00001097          	auipc	ra,0x1
    800056f8:	a78080e7          	jalr	-1416(ra) # 8000616c <panic>
    800056fc:	00001097          	auipc	ra,0x1
    80005700:	9cc080e7          	jalr	-1588(ra) # 800060c8 <consoleinit>
    80005704:	00001097          	auipc	ra,0x1
    80005708:	158080e7          	jalr	344(ra) # 8000685c <printfinit>
    8000570c:	00003517          	auipc	a0,0x3
    80005710:	a6c50513          	addi	a0,a0,-1428 # 80008178 <CONSOLE_STATUS+0x168>
    80005714:	00001097          	auipc	ra,0x1
    80005718:	ab4080e7          	jalr	-1356(ra) # 800061c8 <__printf>
    8000571c:	00003517          	auipc	a0,0x3
    80005720:	e7450513          	addi	a0,a0,-396 # 80008590 <CONSOLE_STATUS+0x580>
    80005724:	00001097          	auipc	ra,0x1
    80005728:	aa4080e7          	jalr	-1372(ra) # 800061c8 <__printf>
    8000572c:	00003517          	auipc	a0,0x3
    80005730:	a4c50513          	addi	a0,a0,-1460 # 80008178 <CONSOLE_STATUS+0x168>
    80005734:	00001097          	auipc	ra,0x1
    80005738:	a94080e7          	jalr	-1388(ra) # 800061c8 <__printf>
    8000573c:	00001097          	auipc	ra,0x1
    80005740:	4ac080e7          	jalr	1196(ra) # 80006be8 <kinit>
    80005744:	00000097          	auipc	ra,0x0
    80005748:	148080e7          	jalr	328(ra) # 8000588c <trapinit>
    8000574c:	00000097          	auipc	ra,0x0
    80005750:	16c080e7          	jalr	364(ra) # 800058b8 <trapinithart>
    80005754:	00000097          	auipc	ra,0x0
    80005758:	5bc080e7          	jalr	1468(ra) # 80005d10 <plicinit>
    8000575c:	00000097          	auipc	ra,0x0
    80005760:	5dc080e7          	jalr	1500(ra) # 80005d38 <plicinithart>
    80005764:	00000097          	auipc	ra,0x0
    80005768:	078080e7          	jalr	120(ra) # 800057dc <userinit>
    8000576c:	0ff0000f          	fence
    80005770:	00100793          	li	a5,1
    80005774:	00003517          	auipc	a0,0x3
    80005778:	e3450513          	addi	a0,a0,-460 # 800085a8 <CONSOLE_STATUS+0x598>
    8000577c:	00f4a023          	sw	a5,0(s1)
    80005780:	00001097          	auipc	ra,0x1
    80005784:	a48080e7          	jalr	-1464(ra) # 800061c8 <__printf>
    80005788:	0000006f          	j	80005788 <system_main+0xd4>

000000008000578c <cpuid>:
    8000578c:	ff010113          	addi	sp,sp,-16
    80005790:	00813423          	sd	s0,8(sp)
    80005794:	01010413          	addi	s0,sp,16
    80005798:	00020513          	mv	a0,tp
    8000579c:	00813403          	ld	s0,8(sp)
    800057a0:	0005051b          	sext.w	a0,a0
    800057a4:	01010113          	addi	sp,sp,16
    800057a8:	00008067          	ret

00000000800057ac <mycpu>:
    800057ac:	ff010113          	addi	sp,sp,-16
    800057b0:	00813423          	sd	s0,8(sp)
    800057b4:	01010413          	addi	s0,sp,16
    800057b8:	00020793          	mv	a5,tp
    800057bc:	00813403          	ld	s0,8(sp)
    800057c0:	0007879b          	sext.w	a5,a5
    800057c4:	00779793          	slli	a5,a5,0x7
    800057c8:	00004517          	auipc	a0,0x4
    800057cc:	32850513          	addi	a0,a0,808 # 80009af0 <cpus>
    800057d0:	00f50533          	add	a0,a0,a5
    800057d4:	01010113          	addi	sp,sp,16
    800057d8:	00008067          	ret

00000000800057dc <userinit>:
    800057dc:	ff010113          	addi	sp,sp,-16
    800057e0:	00813423          	sd	s0,8(sp)
    800057e4:	01010413          	addi	s0,sp,16
    800057e8:	00813403          	ld	s0,8(sp)
    800057ec:	01010113          	addi	sp,sp,16
    800057f0:	ffffe317          	auipc	t1,0xffffe
    800057f4:	1a830067          	jr	424(t1) # 80003998 <main>

00000000800057f8 <either_copyout>:
    800057f8:	ff010113          	addi	sp,sp,-16
    800057fc:	00813023          	sd	s0,0(sp)
    80005800:	00113423          	sd	ra,8(sp)
    80005804:	01010413          	addi	s0,sp,16
    80005808:	02051663          	bnez	a0,80005834 <either_copyout+0x3c>
    8000580c:	00058513          	mv	a0,a1
    80005810:	00060593          	mv	a1,a2
    80005814:	0006861b          	sext.w	a2,a3
    80005818:	00002097          	auipc	ra,0x2
    8000581c:	c5c080e7          	jalr	-932(ra) # 80007474 <__memmove>
    80005820:	00813083          	ld	ra,8(sp)
    80005824:	00013403          	ld	s0,0(sp)
    80005828:	00000513          	li	a0,0
    8000582c:	01010113          	addi	sp,sp,16
    80005830:	00008067          	ret
    80005834:	00003517          	auipc	a0,0x3
    80005838:	db450513          	addi	a0,a0,-588 # 800085e8 <CONSOLE_STATUS+0x5d8>
    8000583c:	00001097          	auipc	ra,0x1
    80005840:	930080e7          	jalr	-1744(ra) # 8000616c <panic>

0000000080005844 <either_copyin>:
    80005844:	ff010113          	addi	sp,sp,-16
    80005848:	00813023          	sd	s0,0(sp)
    8000584c:	00113423          	sd	ra,8(sp)
    80005850:	01010413          	addi	s0,sp,16
    80005854:	02059463          	bnez	a1,8000587c <either_copyin+0x38>
    80005858:	00060593          	mv	a1,a2
    8000585c:	0006861b          	sext.w	a2,a3
    80005860:	00002097          	auipc	ra,0x2
    80005864:	c14080e7          	jalr	-1004(ra) # 80007474 <__memmove>
    80005868:	00813083          	ld	ra,8(sp)
    8000586c:	00013403          	ld	s0,0(sp)
    80005870:	00000513          	li	a0,0
    80005874:	01010113          	addi	sp,sp,16
    80005878:	00008067          	ret
    8000587c:	00003517          	auipc	a0,0x3
    80005880:	d9450513          	addi	a0,a0,-620 # 80008610 <CONSOLE_STATUS+0x600>
    80005884:	00001097          	auipc	ra,0x1
    80005888:	8e8080e7          	jalr	-1816(ra) # 8000616c <panic>

000000008000588c <trapinit>:
    8000588c:	ff010113          	addi	sp,sp,-16
    80005890:	00813423          	sd	s0,8(sp)
    80005894:	01010413          	addi	s0,sp,16
    80005898:	00813403          	ld	s0,8(sp)
    8000589c:	00003597          	auipc	a1,0x3
    800058a0:	d9c58593          	addi	a1,a1,-612 # 80008638 <CONSOLE_STATUS+0x628>
    800058a4:	00004517          	auipc	a0,0x4
    800058a8:	2cc50513          	addi	a0,a0,716 # 80009b70 <tickslock>
    800058ac:	01010113          	addi	sp,sp,16
    800058b0:	00001317          	auipc	t1,0x1
    800058b4:	5c830067          	jr	1480(t1) # 80006e78 <initlock>

00000000800058b8 <trapinithart>:
    800058b8:	ff010113          	addi	sp,sp,-16
    800058bc:	00813423          	sd	s0,8(sp)
    800058c0:	01010413          	addi	s0,sp,16
    800058c4:	00000797          	auipc	a5,0x0
    800058c8:	2fc78793          	addi	a5,a5,764 # 80005bc0 <kernelvec>
    800058cc:	10579073          	csrw	stvec,a5
    800058d0:	00813403          	ld	s0,8(sp)
    800058d4:	01010113          	addi	sp,sp,16
    800058d8:	00008067          	ret

00000000800058dc <usertrap>:
    800058dc:	ff010113          	addi	sp,sp,-16
    800058e0:	00813423          	sd	s0,8(sp)
    800058e4:	01010413          	addi	s0,sp,16
    800058e8:	00813403          	ld	s0,8(sp)
    800058ec:	01010113          	addi	sp,sp,16
    800058f0:	00008067          	ret

00000000800058f4 <usertrapret>:
    800058f4:	ff010113          	addi	sp,sp,-16
    800058f8:	00813423          	sd	s0,8(sp)
    800058fc:	01010413          	addi	s0,sp,16
    80005900:	00813403          	ld	s0,8(sp)
    80005904:	01010113          	addi	sp,sp,16
    80005908:	00008067          	ret

000000008000590c <kerneltrap>:
    8000590c:	fe010113          	addi	sp,sp,-32
    80005910:	00813823          	sd	s0,16(sp)
    80005914:	00113c23          	sd	ra,24(sp)
    80005918:	00913423          	sd	s1,8(sp)
    8000591c:	02010413          	addi	s0,sp,32
    80005920:	142025f3          	csrr	a1,scause
    80005924:	100027f3          	csrr	a5,sstatus
    80005928:	0027f793          	andi	a5,a5,2
    8000592c:	10079c63          	bnez	a5,80005a44 <kerneltrap+0x138>
    80005930:	142027f3          	csrr	a5,scause
    80005934:	0207ce63          	bltz	a5,80005970 <kerneltrap+0x64>
    80005938:	00003517          	auipc	a0,0x3
    8000593c:	d4850513          	addi	a0,a0,-696 # 80008680 <CONSOLE_STATUS+0x670>
    80005940:	00001097          	auipc	ra,0x1
    80005944:	888080e7          	jalr	-1912(ra) # 800061c8 <__printf>
    80005948:	141025f3          	csrr	a1,sepc
    8000594c:	14302673          	csrr	a2,stval
    80005950:	00003517          	auipc	a0,0x3
    80005954:	d4050513          	addi	a0,a0,-704 # 80008690 <CONSOLE_STATUS+0x680>
    80005958:	00001097          	auipc	ra,0x1
    8000595c:	870080e7          	jalr	-1936(ra) # 800061c8 <__printf>
    80005960:	00003517          	auipc	a0,0x3
    80005964:	d4850513          	addi	a0,a0,-696 # 800086a8 <CONSOLE_STATUS+0x698>
    80005968:	00001097          	auipc	ra,0x1
    8000596c:	804080e7          	jalr	-2044(ra) # 8000616c <panic>
    80005970:	0ff7f713          	andi	a4,a5,255
    80005974:	00900693          	li	a3,9
    80005978:	04d70063          	beq	a4,a3,800059b8 <kerneltrap+0xac>
    8000597c:	fff00713          	li	a4,-1
    80005980:	03f71713          	slli	a4,a4,0x3f
    80005984:	00170713          	addi	a4,a4,1
    80005988:	fae798e3          	bne	a5,a4,80005938 <kerneltrap+0x2c>
    8000598c:	00000097          	auipc	ra,0x0
    80005990:	e00080e7          	jalr	-512(ra) # 8000578c <cpuid>
    80005994:	06050663          	beqz	a0,80005a00 <kerneltrap+0xf4>
    80005998:	144027f3          	csrr	a5,sip
    8000599c:	ffd7f793          	andi	a5,a5,-3
    800059a0:	14479073          	csrw	sip,a5
    800059a4:	01813083          	ld	ra,24(sp)
    800059a8:	01013403          	ld	s0,16(sp)
    800059ac:	00813483          	ld	s1,8(sp)
    800059b0:	02010113          	addi	sp,sp,32
    800059b4:	00008067          	ret
    800059b8:	00000097          	auipc	ra,0x0
    800059bc:	3cc080e7          	jalr	972(ra) # 80005d84 <plic_claim>
    800059c0:	00a00793          	li	a5,10
    800059c4:	00050493          	mv	s1,a0
    800059c8:	06f50863          	beq	a0,a5,80005a38 <kerneltrap+0x12c>
    800059cc:	fc050ce3          	beqz	a0,800059a4 <kerneltrap+0x98>
    800059d0:	00050593          	mv	a1,a0
    800059d4:	00003517          	auipc	a0,0x3
    800059d8:	c8c50513          	addi	a0,a0,-884 # 80008660 <CONSOLE_STATUS+0x650>
    800059dc:	00000097          	auipc	ra,0x0
    800059e0:	7ec080e7          	jalr	2028(ra) # 800061c8 <__printf>
    800059e4:	01013403          	ld	s0,16(sp)
    800059e8:	01813083          	ld	ra,24(sp)
    800059ec:	00048513          	mv	a0,s1
    800059f0:	00813483          	ld	s1,8(sp)
    800059f4:	02010113          	addi	sp,sp,32
    800059f8:	00000317          	auipc	t1,0x0
    800059fc:	3c430067          	jr	964(t1) # 80005dbc <plic_complete>
    80005a00:	00004517          	auipc	a0,0x4
    80005a04:	17050513          	addi	a0,a0,368 # 80009b70 <tickslock>
    80005a08:	00001097          	auipc	ra,0x1
    80005a0c:	494080e7          	jalr	1172(ra) # 80006e9c <acquire>
    80005a10:	00003717          	auipc	a4,0x3
    80005a14:	f9470713          	addi	a4,a4,-108 # 800089a4 <ticks>
    80005a18:	00072783          	lw	a5,0(a4)
    80005a1c:	00004517          	auipc	a0,0x4
    80005a20:	15450513          	addi	a0,a0,340 # 80009b70 <tickslock>
    80005a24:	0017879b          	addiw	a5,a5,1
    80005a28:	00f72023          	sw	a5,0(a4)
    80005a2c:	00001097          	auipc	ra,0x1
    80005a30:	53c080e7          	jalr	1340(ra) # 80006f68 <release>
    80005a34:	f65ff06f          	j	80005998 <kerneltrap+0x8c>
    80005a38:	00001097          	auipc	ra,0x1
    80005a3c:	098080e7          	jalr	152(ra) # 80006ad0 <uartintr>
    80005a40:	fa5ff06f          	j	800059e4 <kerneltrap+0xd8>
    80005a44:	00003517          	auipc	a0,0x3
    80005a48:	bfc50513          	addi	a0,a0,-1028 # 80008640 <CONSOLE_STATUS+0x630>
    80005a4c:	00000097          	auipc	ra,0x0
    80005a50:	720080e7          	jalr	1824(ra) # 8000616c <panic>

0000000080005a54 <clockintr>:
    80005a54:	fe010113          	addi	sp,sp,-32
    80005a58:	00813823          	sd	s0,16(sp)
    80005a5c:	00913423          	sd	s1,8(sp)
    80005a60:	00113c23          	sd	ra,24(sp)
    80005a64:	02010413          	addi	s0,sp,32
    80005a68:	00004497          	auipc	s1,0x4
    80005a6c:	10848493          	addi	s1,s1,264 # 80009b70 <tickslock>
    80005a70:	00048513          	mv	a0,s1
    80005a74:	00001097          	auipc	ra,0x1
    80005a78:	428080e7          	jalr	1064(ra) # 80006e9c <acquire>
    80005a7c:	00003717          	auipc	a4,0x3
    80005a80:	f2870713          	addi	a4,a4,-216 # 800089a4 <ticks>
    80005a84:	00072783          	lw	a5,0(a4)
    80005a88:	01013403          	ld	s0,16(sp)
    80005a8c:	01813083          	ld	ra,24(sp)
    80005a90:	00048513          	mv	a0,s1
    80005a94:	0017879b          	addiw	a5,a5,1
    80005a98:	00813483          	ld	s1,8(sp)
    80005a9c:	00f72023          	sw	a5,0(a4)
    80005aa0:	02010113          	addi	sp,sp,32
    80005aa4:	00001317          	auipc	t1,0x1
    80005aa8:	4c430067          	jr	1220(t1) # 80006f68 <release>

0000000080005aac <devintr>:
    80005aac:	142027f3          	csrr	a5,scause
    80005ab0:	00000513          	li	a0,0
    80005ab4:	0007c463          	bltz	a5,80005abc <devintr+0x10>
    80005ab8:	00008067          	ret
    80005abc:	fe010113          	addi	sp,sp,-32
    80005ac0:	00813823          	sd	s0,16(sp)
    80005ac4:	00113c23          	sd	ra,24(sp)
    80005ac8:	00913423          	sd	s1,8(sp)
    80005acc:	02010413          	addi	s0,sp,32
    80005ad0:	0ff7f713          	andi	a4,a5,255
    80005ad4:	00900693          	li	a3,9
    80005ad8:	04d70c63          	beq	a4,a3,80005b30 <devintr+0x84>
    80005adc:	fff00713          	li	a4,-1
    80005ae0:	03f71713          	slli	a4,a4,0x3f
    80005ae4:	00170713          	addi	a4,a4,1
    80005ae8:	00e78c63          	beq	a5,a4,80005b00 <devintr+0x54>
    80005aec:	01813083          	ld	ra,24(sp)
    80005af0:	01013403          	ld	s0,16(sp)
    80005af4:	00813483          	ld	s1,8(sp)
    80005af8:	02010113          	addi	sp,sp,32
    80005afc:	00008067          	ret
    80005b00:	00000097          	auipc	ra,0x0
    80005b04:	c8c080e7          	jalr	-884(ra) # 8000578c <cpuid>
    80005b08:	06050663          	beqz	a0,80005b74 <devintr+0xc8>
    80005b0c:	144027f3          	csrr	a5,sip
    80005b10:	ffd7f793          	andi	a5,a5,-3
    80005b14:	14479073          	csrw	sip,a5
    80005b18:	01813083          	ld	ra,24(sp)
    80005b1c:	01013403          	ld	s0,16(sp)
    80005b20:	00813483          	ld	s1,8(sp)
    80005b24:	00200513          	li	a0,2
    80005b28:	02010113          	addi	sp,sp,32
    80005b2c:	00008067          	ret
    80005b30:	00000097          	auipc	ra,0x0
    80005b34:	254080e7          	jalr	596(ra) # 80005d84 <plic_claim>
    80005b38:	00a00793          	li	a5,10
    80005b3c:	00050493          	mv	s1,a0
    80005b40:	06f50663          	beq	a0,a5,80005bac <devintr+0x100>
    80005b44:	00100513          	li	a0,1
    80005b48:	fa0482e3          	beqz	s1,80005aec <devintr+0x40>
    80005b4c:	00048593          	mv	a1,s1
    80005b50:	00003517          	auipc	a0,0x3
    80005b54:	b1050513          	addi	a0,a0,-1264 # 80008660 <CONSOLE_STATUS+0x650>
    80005b58:	00000097          	auipc	ra,0x0
    80005b5c:	670080e7          	jalr	1648(ra) # 800061c8 <__printf>
    80005b60:	00048513          	mv	a0,s1
    80005b64:	00000097          	auipc	ra,0x0
    80005b68:	258080e7          	jalr	600(ra) # 80005dbc <plic_complete>
    80005b6c:	00100513          	li	a0,1
    80005b70:	f7dff06f          	j	80005aec <devintr+0x40>
    80005b74:	00004517          	auipc	a0,0x4
    80005b78:	ffc50513          	addi	a0,a0,-4 # 80009b70 <tickslock>
    80005b7c:	00001097          	auipc	ra,0x1
    80005b80:	320080e7          	jalr	800(ra) # 80006e9c <acquire>
    80005b84:	00003717          	auipc	a4,0x3
    80005b88:	e2070713          	addi	a4,a4,-480 # 800089a4 <ticks>
    80005b8c:	00072783          	lw	a5,0(a4)
    80005b90:	00004517          	auipc	a0,0x4
    80005b94:	fe050513          	addi	a0,a0,-32 # 80009b70 <tickslock>
    80005b98:	0017879b          	addiw	a5,a5,1
    80005b9c:	00f72023          	sw	a5,0(a4)
    80005ba0:	00001097          	auipc	ra,0x1
    80005ba4:	3c8080e7          	jalr	968(ra) # 80006f68 <release>
    80005ba8:	f65ff06f          	j	80005b0c <devintr+0x60>
    80005bac:	00001097          	auipc	ra,0x1
    80005bb0:	f24080e7          	jalr	-220(ra) # 80006ad0 <uartintr>
    80005bb4:	fadff06f          	j	80005b60 <devintr+0xb4>
	...

0000000080005bc0 <kernelvec>:
    80005bc0:	f0010113          	addi	sp,sp,-256
    80005bc4:	00113023          	sd	ra,0(sp)
    80005bc8:	00213423          	sd	sp,8(sp)
    80005bcc:	00313823          	sd	gp,16(sp)
    80005bd0:	00413c23          	sd	tp,24(sp)
    80005bd4:	02513023          	sd	t0,32(sp)
    80005bd8:	02613423          	sd	t1,40(sp)
    80005bdc:	02713823          	sd	t2,48(sp)
    80005be0:	02813c23          	sd	s0,56(sp)
    80005be4:	04913023          	sd	s1,64(sp)
    80005be8:	04a13423          	sd	a0,72(sp)
    80005bec:	04b13823          	sd	a1,80(sp)
    80005bf0:	04c13c23          	sd	a2,88(sp)
    80005bf4:	06d13023          	sd	a3,96(sp)
    80005bf8:	06e13423          	sd	a4,104(sp)
    80005bfc:	06f13823          	sd	a5,112(sp)
    80005c00:	07013c23          	sd	a6,120(sp)
    80005c04:	09113023          	sd	a7,128(sp)
    80005c08:	09213423          	sd	s2,136(sp)
    80005c0c:	09313823          	sd	s3,144(sp)
    80005c10:	09413c23          	sd	s4,152(sp)
    80005c14:	0b513023          	sd	s5,160(sp)
    80005c18:	0b613423          	sd	s6,168(sp)
    80005c1c:	0b713823          	sd	s7,176(sp)
    80005c20:	0b813c23          	sd	s8,184(sp)
    80005c24:	0d913023          	sd	s9,192(sp)
    80005c28:	0da13423          	sd	s10,200(sp)
    80005c2c:	0db13823          	sd	s11,208(sp)
    80005c30:	0dc13c23          	sd	t3,216(sp)
    80005c34:	0fd13023          	sd	t4,224(sp)
    80005c38:	0fe13423          	sd	t5,232(sp)
    80005c3c:	0ff13823          	sd	t6,240(sp)
    80005c40:	ccdff0ef          	jal	ra,8000590c <kerneltrap>
    80005c44:	00013083          	ld	ra,0(sp)
    80005c48:	00813103          	ld	sp,8(sp)
    80005c4c:	01013183          	ld	gp,16(sp)
    80005c50:	02013283          	ld	t0,32(sp)
    80005c54:	02813303          	ld	t1,40(sp)
    80005c58:	03013383          	ld	t2,48(sp)
    80005c5c:	03813403          	ld	s0,56(sp)
    80005c60:	04013483          	ld	s1,64(sp)
    80005c64:	04813503          	ld	a0,72(sp)
    80005c68:	05013583          	ld	a1,80(sp)
    80005c6c:	05813603          	ld	a2,88(sp)
    80005c70:	06013683          	ld	a3,96(sp)
    80005c74:	06813703          	ld	a4,104(sp)
    80005c78:	07013783          	ld	a5,112(sp)
    80005c7c:	07813803          	ld	a6,120(sp)
    80005c80:	08013883          	ld	a7,128(sp)
    80005c84:	08813903          	ld	s2,136(sp)
    80005c88:	09013983          	ld	s3,144(sp)
    80005c8c:	09813a03          	ld	s4,152(sp)
    80005c90:	0a013a83          	ld	s5,160(sp)
    80005c94:	0a813b03          	ld	s6,168(sp)
    80005c98:	0b013b83          	ld	s7,176(sp)
    80005c9c:	0b813c03          	ld	s8,184(sp)
    80005ca0:	0c013c83          	ld	s9,192(sp)
    80005ca4:	0c813d03          	ld	s10,200(sp)
    80005ca8:	0d013d83          	ld	s11,208(sp)
    80005cac:	0d813e03          	ld	t3,216(sp)
    80005cb0:	0e013e83          	ld	t4,224(sp)
    80005cb4:	0e813f03          	ld	t5,232(sp)
    80005cb8:	0f013f83          	ld	t6,240(sp)
    80005cbc:	10010113          	addi	sp,sp,256
    80005cc0:	10200073          	sret
    80005cc4:	00000013          	nop
    80005cc8:	00000013          	nop
    80005ccc:	00000013          	nop

0000000080005cd0 <timervec>:
    80005cd0:	34051573          	csrrw	a0,mscratch,a0
    80005cd4:	00b53023          	sd	a1,0(a0)
    80005cd8:	00c53423          	sd	a2,8(a0)
    80005cdc:	00d53823          	sd	a3,16(a0)
    80005ce0:	01853583          	ld	a1,24(a0)
    80005ce4:	02053603          	ld	a2,32(a0)
    80005ce8:	0005b683          	ld	a3,0(a1)
    80005cec:	00c686b3          	add	a3,a3,a2
    80005cf0:	00d5b023          	sd	a3,0(a1)
    80005cf4:	00200593          	li	a1,2
    80005cf8:	14459073          	csrw	sip,a1
    80005cfc:	01053683          	ld	a3,16(a0)
    80005d00:	00853603          	ld	a2,8(a0)
    80005d04:	00053583          	ld	a1,0(a0)
    80005d08:	34051573          	csrrw	a0,mscratch,a0
    80005d0c:	30200073          	mret

0000000080005d10 <plicinit>:
    80005d10:	ff010113          	addi	sp,sp,-16
    80005d14:	00813423          	sd	s0,8(sp)
    80005d18:	01010413          	addi	s0,sp,16
    80005d1c:	00813403          	ld	s0,8(sp)
    80005d20:	0c0007b7          	lui	a5,0xc000
    80005d24:	00100713          	li	a4,1
    80005d28:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80005d2c:	00e7a223          	sw	a4,4(a5)
    80005d30:	01010113          	addi	sp,sp,16
    80005d34:	00008067          	ret

0000000080005d38 <plicinithart>:
    80005d38:	ff010113          	addi	sp,sp,-16
    80005d3c:	00813023          	sd	s0,0(sp)
    80005d40:	00113423          	sd	ra,8(sp)
    80005d44:	01010413          	addi	s0,sp,16
    80005d48:	00000097          	auipc	ra,0x0
    80005d4c:	a44080e7          	jalr	-1468(ra) # 8000578c <cpuid>
    80005d50:	0085171b          	slliw	a4,a0,0x8
    80005d54:	0c0027b7          	lui	a5,0xc002
    80005d58:	00e787b3          	add	a5,a5,a4
    80005d5c:	40200713          	li	a4,1026
    80005d60:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80005d64:	00813083          	ld	ra,8(sp)
    80005d68:	00013403          	ld	s0,0(sp)
    80005d6c:	00d5151b          	slliw	a0,a0,0xd
    80005d70:	0c2017b7          	lui	a5,0xc201
    80005d74:	00a78533          	add	a0,a5,a0
    80005d78:	00052023          	sw	zero,0(a0)
    80005d7c:	01010113          	addi	sp,sp,16
    80005d80:	00008067          	ret

0000000080005d84 <plic_claim>:
    80005d84:	ff010113          	addi	sp,sp,-16
    80005d88:	00813023          	sd	s0,0(sp)
    80005d8c:	00113423          	sd	ra,8(sp)
    80005d90:	01010413          	addi	s0,sp,16
    80005d94:	00000097          	auipc	ra,0x0
    80005d98:	9f8080e7          	jalr	-1544(ra) # 8000578c <cpuid>
    80005d9c:	00813083          	ld	ra,8(sp)
    80005da0:	00013403          	ld	s0,0(sp)
    80005da4:	00d5151b          	slliw	a0,a0,0xd
    80005da8:	0c2017b7          	lui	a5,0xc201
    80005dac:	00a78533          	add	a0,a5,a0
    80005db0:	00452503          	lw	a0,4(a0)
    80005db4:	01010113          	addi	sp,sp,16
    80005db8:	00008067          	ret

0000000080005dbc <plic_complete>:
    80005dbc:	fe010113          	addi	sp,sp,-32
    80005dc0:	00813823          	sd	s0,16(sp)
    80005dc4:	00913423          	sd	s1,8(sp)
    80005dc8:	00113c23          	sd	ra,24(sp)
    80005dcc:	02010413          	addi	s0,sp,32
    80005dd0:	00050493          	mv	s1,a0
    80005dd4:	00000097          	auipc	ra,0x0
    80005dd8:	9b8080e7          	jalr	-1608(ra) # 8000578c <cpuid>
    80005ddc:	01813083          	ld	ra,24(sp)
    80005de0:	01013403          	ld	s0,16(sp)
    80005de4:	00d5179b          	slliw	a5,a0,0xd
    80005de8:	0c201737          	lui	a4,0xc201
    80005dec:	00f707b3          	add	a5,a4,a5
    80005df0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80005df4:	00813483          	ld	s1,8(sp)
    80005df8:	02010113          	addi	sp,sp,32
    80005dfc:	00008067          	ret

0000000080005e00 <consolewrite>:
    80005e00:	fb010113          	addi	sp,sp,-80
    80005e04:	04813023          	sd	s0,64(sp)
    80005e08:	04113423          	sd	ra,72(sp)
    80005e0c:	02913c23          	sd	s1,56(sp)
    80005e10:	03213823          	sd	s2,48(sp)
    80005e14:	03313423          	sd	s3,40(sp)
    80005e18:	03413023          	sd	s4,32(sp)
    80005e1c:	01513c23          	sd	s5,24(sp)
    80005e20:	05010413          	addi	s0,sp,80
    80005e24:	06c05c63          	blez	a2,80005e9c <consolewrite+0x9c>
    80005e28:	00060993          	mv	s3,a2
    80005e2c:	00050a13          	mv	s4,a0
    80005e30:	00058493          	mv	s1,a1
    80005e34:	00000913          	li	s2,0
    80005e38:	fff00a93          	li	s5,-1
    80005e3c:	01c0006f          	j	80005e58 <consolewrite+0x58>
    80005e40:	fbf44503          	lbu	a0,-65(s0)
    80005e44:	0019091b          	addiw	s2,s2,1
    80005e48:	00148493          	addi	s1,s1,1
    80005e4c:	00001097          	auipc	ra,0x1
    80005e50:	a9c080e7          	jalr	-1380(ra) # 800068e8 <uartputc>
    80005e54:	03298063          	beq	s3,s2,80005e74 <consolewrite+0x74>
    80005e58:	00048613          	mv	a2,s1
    80005e5c:	00100693          	li	a3,1
    80005e60:	000a0593          	mv	a1,s4
    80005e64:	fbf40513          	addi	a0,s0,-65
    80005e68:	00000097          	auipc	ra,0x0
    80005e6c:	9dc080e7          	jalr	-1572(ra) # 80005844 <either_copyin>
    80005e70:	fd5518e3          	bne	a0,s5,80005e40 <consolewrite+0x40>
    80005e74:	04813083          	ld	ra,72(sp)
    80005e78:	04013403          	ld	s0,64(sp)
    80005e7c:	03813483          	ld	s1,56(sp)
    80005e80:	02813983          	ld	s3,40(sp)
    80005e84:	02013a03          	ld	s4,32(sp)
    80005e88:	01813a83          	ld	s5,24(sp)
    80005e8c:	00090513          	mv	a0,s2
    80005e90:	03013903          	ld	s2,48(sp)
    80005e94:	05010113          	addi	sp,sp,80
    80005e98:	00008067          	ret
    80005e9c:	00000913          	li	s2,0
    80005ea0:	fd5ff06f          	j	80005e74 <consolewrite+0x74>

0000000080005ea4 <consoleread>:
    80005ea4:	f9010113          	addi	sp,sp,-112
    80005ea8:	06813023          	sd	s0,96(sp)
    80005eac:	04913c23          	sd	s1,88(sp)
    80005eb0:	05213823          	sd	s2,80(sp)
    80005eb4:	05313423          	sd	s3,72(sp)
    80005eb8:	05413023          	sd	s4,64(sp)
    80005ebc:	03513c23          	sd	s5,56(sp)
    80005ec0:	03613823          	sd	s6,48(sp)
    80005ec4:	03713423          	sd	s7,40(sp)
    80005ec8:	03813023          	sd	s8,32(sp)
    80005ecc:	06113423          	sd	ra,104(sp)
    80005ed0:	01913c23          	sd	s9,24(sp)
    80005ed4:	07010413          	addi	s0,sp,112
    80005ed8:	00060b93          	mv	s7,a2
    80005edc:	00050913          	mv	s2,a0
    80005ee0:	00058c13          	mv	s8,a1
    80005ee4:	00060b1b          	sext.w	s6,a2
    80005ee8:	00004497          	auipc	s1,0x4
    80005eec:	cb048493          	addi	s1,s1,-848 # 80009b98 <cons>
    80005ef0:	00400993          	li	s3,4
    80005ef4:	fff00a13          	li	s4,-1
    80005ef8:	00a00a93          	li	s5,10
    80005efc:	05705e63          	blez	s7,80005f58 <consoleread+0xb4>
    80005f00:	09c4a703          	lw	a4,156(s1)
    80005f04:	0984a783          	lw	a5,152(s1)
    80005f08:	0007071b          	sext.w	a4,a4
    80005f0c:	08e78463          	beq	a5,a4,80005f94 <consoleread+0xf0>
    80005f10:	07f7f713          	andi	a4,a5,127
    80005f14:	00e48733          	add	a4,s1,a4
    80005f18:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80005f1c:	0017869b          	addiw	a3,a5,1
    80005f20:	08d4ac23          	sw	a3,152(s1)
    80005f24:	00070c9b          	sext.w	s9,a4
    80005f28:	0b370663          	beq	a4,s3,80005fd4 <consoleread+0x130>
    80005f2c:	00100693          	li	a3,1
    80005f30:	f9f40613          	addi	a2,s0,-97
    80005f34:	000c0593          	mv	a1,s8
    80005f38:	00090513          	mv	a0,s2
    80005f3c:	f8e40fa3          	sb	a4,-97(s0)
    80005f40:	00000097          	auipc	ra,0x0
    80005f44:	8b8080e7          	jalr	-1864(ra) # 800057f8 <either_copyout>
    80005f48:	01450863          	beq	a0,s4,80005f58 <consoleread+0xb4>
    80005f4c:	001c0c13          	addi	s8,s8,1
    80005f50:	fffb8b9b          	addiw	s7,s7,-1
    80005f54:	fb5c94e3          	bne	s9,s5,80005efc <consoleread+0x58>
    80005f58:	000b851b          	sext.w	a0,s7
    80005f5c:	06813083          	ld	ra,104(sp)
    80005f60:	06013403          	ld	s0,96(sp)
    80005f64:	05813483          	ld	s1,88(sp)
    80005f68:	05013903          	ld	s2,80(sp)
    80005f6c:	04813983          	ld	s3,72(sp)
    80005f70:	04013a03          	ld	s4,64(sp)
    80005f74:	03813a83          	ld	s5,56(sp)
    80005f78:	02813b83          	ld	s7,40(sp)
    80005f7c:	02013c03          	ld	s8,32(sp)
    80005f80:	01813c83          	ld	s9,24(sp)
    80005f84:	40ab053b          	subw	a0,s6,a0
    80005f88:	03013b03          	ld	s6,48(sp)
    80005f8c:	07010113          	addi	sp,sp,112
    80005f90:	00008067          	ret
    80005f94:	00001097          	auipc	ra,0x1
    80005f98:	1d8080e7          	jalr	472(ra) # 8000716c <push_on>
    80005f9c:	0984a703          	lw	a4,152(s1)
    80005fa0:	09c4a783          	lw	a5,156(s1)
    80005fa4:	0007879b          	sext.w	a5,a5
    80005fa8:	fef70ce3          	beq	a4,a5,80005fa0 <consoleread+0xfc>
    80005fac:	00001097          	auipc	ra,0x1
    80005fb0:	234080e7          	jalr	564(ra) # 800071e0 <pop_on>
    80005fb4:	0984a783          	lw	a5,152(s1)
    80005fb8:	07f7f713          	andi	a4,a5,127
    80005fbc:	00e48733          	add	a4,s1,a4
    80005fc0:	01874703          	lbu	a4,24(a4)
    80005fc4:	0017869b          	addiw	a3,a5,1
    80005fc8:	08d4ac23          	sw	a3,152(s1)
    80005fcc:	00070c9b          	sext.w	s9,a4
    80005fd0:	f5371ee3          	bne	a4,s3,80005f2c <consoleread+0x88>
    80005fd4:	000b851b          	sext.w	a0,s7
    80005fd8:	f96bf2e3          	bgeu	s7,s6,80005f5c <consoleread+0xb8>
    80005fdc:	08f4ac23          	sw	a5,152(s1)
    80005fe0:	f7dff06f          	j	80005f5c <consoleread+0xb8>

0000000080005fe4 <consputc>:
    80005fe4:	10000793          	li	a5,256
    80005fe8:	00f50663          	beq	a0,a5,80005ff4 <consputc+0x10>
    80005fec:	00001317          	auipc	t1,0x1
    80005ff0:	9f430067          	jr	-1548(t1) # 800069e0 <uartputc_sync>
    80005ff4:	ff010113          	addi	sp,sp,-16
    80005ff8:	00113423          	sd	ra,8(sp)
    80005ffc:	00813023          	sd	s0,0(sp)
    80006000:	01010413          	addi	s0,sp,16
    80006004:	00800513          	li	a0,8
    80006008:	00001097          	auipc	ra,0x1
    8000600c:	9d8080e7          	jalr	-1576(ra) # 800069e0 <uartputc_sync>
    80006010:	02000513          	li	a0,32
    80006014:	00001097          	auipc	ra,0x1
    80006018:	9cc080e7          	jalr	-1588(ra) # 800069e0 <uartputc_sync>
    8000601c:	00013403          	ld	s0,0(sp)
    80006020:	00813083          	ld	ra,8(sp)
    80006024:	00800513          	li	a0,8
    80006028:	01010113          	addi	sp,sp,16
    8000602c:	00001317          	auipc	t1,0x1
    80006030:	9b430067          	jr	-1612(t1) # 800069e0 <uartputc_sync>

0000000080006034 <consoleintr>:
    80006034:	fe010113          	addi	sp,sp,-32
    80006038:	00813823          	sd	s0,16(sp)
    8000603c:	00913423          	sd	s1,8(sp)
    80006040:	01213023          	sd	s2,0(sp)
    80006044:	00113c23          	sd	ra,24(sp)
    80006048:	02010413          	addi	s0,sp,32
    8000604c:	00004917          	auipc	s2,0x4
    80006050:	b4c90913          	addi	s2,s2,-1204 # 80009b98 <cons>
    80006054:	00050493          	mv	s1,a0
    80006058:	00090513          	mv	a0,s2
    8000605c:	00001097          	auipc	ra,0x1
    80006060:	e40080e7          	jalr	-448(ra) # 80006e9c <acquire>
    80006064:	02048c63          	beqz	s1,8000609c <consoleintr+0x68>
    80006068:	0a092783          	lw	a5,160(s2)
    8000606c:	09892703          	lw	a4,152(s2)
    80006070:	07f00693          	li	a3,127
    80006074:	40e7873b          	subw	a4,a5,a4
    80006078:	02e6e263          	bltu	a3,a4,8000609c <consoleintr+0x68>
    8000607c:	00d00713          	li	a4,13
    80006080:	04e48063          	beq	s1,a4,800060c0 <consoleintr+0x8c>
    80006084:	07f7f713          	andi	a4,a5,127
    80006088:	00e90733          	add	a4,s2,a4
    8000608c:	0017879b          	addiw	a5,a5,1
    80006090:	0af92023          	sw	a5,160(s2)
    80006094:	00970c23          	sb	s1,24(a4)
    80006098:	08f92e23          	sw	a5,156(s2)
    8000609c:	01013403          	ld	s0,16(sp)
    800060a0:	01813083          	ld	ra,24(sp)
    800060a4:	00813483          	ld	s1,8(sp)
    800060a8:	00013903          	ld	s2,0(sp)
    800060ac:	00004517          	auipc	a0,0x4
    800060b0:	aec50513          	addi	a0,a0,-1300 # 80009b98 <cons>
    800060b4:	02010113          	addi	sp,sp,32
    800060b8:	00001317          	auipc	t1,0x1
    800060bc:	eb030067          	jr	-336(t1) # 80006f68 <release>
    800060c0:	00a00493          	li	s1,10
    800060c4:	fc1ff06f          	j	80006084 <consoleintr+0x50>

00000000800060c8 <consoleinit>:
    800060c8:	fe010113          	addi	sp,sp,-32
    800060cc:	00113c23          	sd	ra,24(sp)
    800060d0:	00813823          	sd	s0,16(sp)
    800060d4:	00913423          	sd	s1,8(sp)
    800060d8:	02010413          	addi	s0,sp,32
    800060dc:	00004497          	auipc	s1,0x4
    800060e0:	abc48493          	addi	s1,s1,-1348 # 80009b98 <cons>
    800060e4:	00048513          	mv	a0,s1
    800060e8:	00002597          	auipc	a1,0x2
    800060ec:	5d058593          	addi	a1,a1,1488 # 800086b8 <CONSOLE_STATUS+0x6a8>
    800060f0:	00001097          	auipc	ra,0x1
    800060f4:	d88080e7          	jalr	-632(ra) # 80006e78 <initlock>
    800060f8:	00000097          	auipc	ra,0x0
    800060fc:	7ac080e7          	jalr	1964(ra) # 800068a4 <uartinit>
    80006100:	01813083          	ld	ra,24(sp)
    80006104:	01013403          	ld	s0,16(sp)
    80006108:	00000797          	auipc	a5,0x0
    8000610c:	d9c78793          	addi	a5,a5,-612 # 80005ea4 <consoleread>
    80006110:	0af4bc23          	sd	a5,184(s1)
    80006114:	00000797          	auipc	a5,0x0
    80006118:	cec78793          	addi	a5,a5,-788 # 80005e00 <consolewrite>
    8000611c:	0cf4b023          	sd	a5,192(s1)
    80006120:	00813483          	ld	s1,8(sp)
    80006124:	02010113          	addi	sp,sp,32
    80006128:	00008067          	ret

000000008000612c <console_read>:
    8000612c:	ff010113          	addi	sp,sp,-16
    80006130:	00813423          	sd	s0,8(sp)
    80006134:	01010413          	addi	s0,sp,16
    80006138:	00813403          	ld	s0,8(sp)
    8000613c:	00004317          	auipc	t1,0x4
    80006140:	b1433303          	ld	t1,-1260(t1) # 80009c50 <devsw+0x10>
    80006144:	01010113          	addi	sp,sp,16
    80006148:	00030067          	jr	t1

000000008000614c <console_write>:
    8000614c:	ff010113          	addi	sp,sp,-16
    80006150:	00813423          	sd	s0,8(sp)
    80006154:	01010413          	addi	s0,sp,16
    80006158:	00813403          	ld	s0,8(sp)
    8000615c:	00004317          	auipc	t1,0x4
    80006160:	afc33303          	ld	t1,-1284(t1) # 80009c58 <devsw+0x18>
    80006164:	01010113          	addi	sp,sp,16
    80006168:	00030067          	jr	t1

000000008000616c <panic>:
    8000616c:	fe010113          	addi	sp,sp,-32
    80006170:	00113c23          	sd	ra,24(sp)
    80006174:	00813823          	sd	s0,16(sp)
    80006178:	00913423          	sd	s1,8(sp)
    8000617c:	02010413          	addi	s0,sp,32
    80006180:	00050493          	mv	s1,a0
    80006184:	00002517          	auipc	a0,0x2
    80006188:	53c50513          	addi	a0,a0,1340 # 800086c0 <CONSOLE_STATUS+0x6b0>
    8000618c:	00004797          	auipc	a5,0x4
    80006190:	b607a623          	sw	zero,-1172(a5) # 80009cf8 <pr+0x18>
    80006194:	00000097          	auipc	ra,0x0
    80006198:	034080e7          	jalr	52(ra) # 800061c8 <__printf>
    8000619c:	00048513          	mv	a0,s1
    800061a0:	00000097          	auipc	ra,0x0
    800061a4:	028080e7          	jalr	40(ra) # 800061c8 <__printf>
    800061a8:	00002517          	auipc	a0,0x2
    800061ac:	fd050513          	addi	a0,a0,-48 # 80008178 <CONSOLE_STATUS+0x168>
    800061b0:	00000097          	auipc	ra,0x0
    800061b4:	018080e7          	jalr	24(ra) # 800061c8 <__printf>
    800061b8:	00100793          	li	a5,1
    800061bc:	00002717          	auipc	a4,0x2
    800061c0:	7ef72623          	sw	a5,2028(a4) # 800089a8 <panicked>
    800061c4:	0000006f          	j	800061c4 <panic+0x58>

00000000800061c8 <__printf>:
    800061c8:	f3010113          	addi	sp,sp,-208
    800061cc:	08813023          	sd	s0,128(sp)
    800061d0:	07313423          	sd	s3,104(sp)
    800061d4:	09010413          	addi	s0,sp,144
    800061d8:	05813023          	sd	s8,64(sp)
    800061dc:	08113423          	sd	ra,136(sp)
    800061e0:	06913c23          	sd	s1,120(sp)
    800061e4:	07213823          	sd	s2,112(sp)
    800061e8:	07413023          	sd	s4,96(sp)
    800061ec:	05513c23          	sd	s5,88(sp)
    800061f0:	05613823          	sd	s6,80(sp)
    800061f4:	05713423          	sd	s7,72(sp)
    800061f8:	03913c23          	sd	s9,56(sp)
    800061fc:	03a13823          	sd	s10,48(sp)
    80006200:	03b13423          	sd	s11,40(sp)
    80006204:	00004317          	auipc	t1,0x4
    80006208:	adc30313          	addi	t1,t1,-1316 # 80009ce0 <pr>
    8000620c:	01832c03          	lw	s8,24(t1)
    80006210:	00b43423          	sd	a1,8(s0)
    80006214:	00c43823          	sd	a2,16(s0)
    80006218:	00d43c23          	sd	a3,24(s0)
    8000621c:	02e43023          	sd	a4,32(s0)
    80006220:	02f43423          	sd	a5,40(s0)
    80006224:	03043823          	sd	a6,48(s0)
    80006228:	03143c23          	sd	a7,56(s0)
    8000622c:	00050993          	mv	s3,a0
    80006230:	4a0c1663          	bnez	s8,800066dc <__printf+0x514>
    80006234:	60098c63          	beqz	s3,8000684c <__printf+0x684>
    80006238:	0009c503          	lbu	a0,0(s3)
    8000623c:	00840793          	addi	a5,s0,8
    80006240:	f6f43c23          	sd	a5,-136(s0)
    80006244:	00000493          	li	s1,0
    80006248:	22050063          	beqz	a0,80006468 <__printf+0x2a0>
    8000624c:	00002a37          	lui	s4,0x2
    80006250:	00018ab7          	lui	s5,0x18
    80006254:	000f4b37          	lui	s6,0xf4
    80006258:	00989bb7          	lui	s7,0x989
    8000625c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80006260:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80006264:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80006268:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000626c:	00148c9b          	addiw	s9,s1,1
    80006270:	02500793          	li	a5,37
    80006274:	01998933          	add	s2,s3,s9
    80006278:	38f51263          	bne	a0,a5,800065fc <__printf+0x434>
    8000627c:	00094783          	lbu	a5,0(s2)
    80006280:	00078c9b          	sext.w	s9,a5
    80006284:	1e078263          	beqz	a5,80006468 <__printf+0x2a0>
    80006288:	0024849b          	addiw	s1,s1,2
    8000628c:	07000713          	li	a4,112
    80006290:	00998933          	add	s2,s3,s1
    80006294:	38e78a63          	beq	a5,a4,80006628 <__printf+0x460>
    80006298:	20f76863          	bltu	a4,a5,800064a8 <__printf+0x2e0>
    8000629c:	42a78863          	beq	a5,a0,800066cc <__printf+0x504>
    800062a0:	06400713          	li	a4,100
    800062a4:	40e79663          	bne	a5,a4,800066b0 <__printf+0x4e8>
    800062a8:	f7843783          	ld	a5,-136(s0)
    800062ac:	0007a603          	lw	a2,0(a5)
    800062b0:	00878793          	addi	a5,a5,8
    800062b4:	f6f43c23          	sd	a5,-136(s0)
    800062b8:	42064a63          	bltz	a2,800066ec <__printf+0x524>
    800062bc:	00a00713          	li	a4,10
    800062c0:	02e677bb          	remuw	a5,a2,a4
    800062c4:	00002d97          	auipc	s11,0x2
    800062c8:	424d8d93          	addi	s11,s11,1060 # 800086e8 <digits>
    800062cc:	00900593          	li	a1,9
    800062d0:	0006051b          	sext.w	a0,a2
    800062d4:	00000c93          	li	s9,0
    800062d8:	02079793          	slli	a5,a5,0x20
    800062dc:	0207d793          	srli	a5,a5,0x20
    800062e0:	00fd87b3          	add	a5,s11,a5
    800062e4:	0007c783          	lbu	a5,0(a5)
    800062e8:	02e656bb          	divuw	a3,a2,a4
    800062ec:	f8f40023          	sb	a5,-128(s0)
    800062f0:	14c5d863          	bge	a1,a2,80006440 <__printf+0x278>
    800062f4:	06300593          	li	a1,99
    800062f8:	00100c93          	li	s9,1
    800062fc:	02e6f7bb          	remuw	a5,a3,a4
    80006300:	02079793          	slli	a5,a5,0x20
    80006304:	0207d793          	srli	a5,a5,0x20
    80006308:	00fd87b3          	add	a5,s11,a5
    8000630c:	0007c783          	lbu	a5,0(a5)
    80006310:	02e6d73b          	divuw	a4,a3,a4
    80006314:	f8f400a3          	sb	a5,-127(s0)
    80006318:	12a5f463          	bgeu	a1,a0,80006440 <__printf+0x278>
    8000631c:	00a00693          	li	a3,10
    80006320:	00900593          	li	a1,9
    80006324:	02d777bb          	remuw	a5,a4,a3
    80006328:	02079793          	slli	a5,a5,0x20
    8000632c:	0207d793          	srli	a5,a5,0x20
    80006330:	00fd87b3          	add	a5,s11,a5
    80006334:	0007c503          	lbu	a0,0(a5)
    80006338:	02d757bb          	divuw	a5,a4,a3
    8000633c:	f8a40123          	sb	a0,-126(s0)
    80006340:	48e5f263          	bgeu	a1,a4,800067c4 <__printf+0x5fc>
    80006344:	06300513          	li	a0,99
    80006348:	02d7f5bb          	remuw	a1,a5,a3
    8000634c:	02059593          	slli	a1,a1,0x20
    80006350:	0205d593          	srli	a1,a1,0x20
    80006354:	00bd85b3          	add	a1,s11,a1
    80006358:	0005c583          	lbu	a1,0(a1)
    8000635c:	02d7d7bb          	divuw	a5,a5,a3
    80006360:	f8b401a3          	sb	a1,-125(s0)
    80006364:	48e57263          	bgeu	a0,a4,800067e8 <__printf+0x620>
    80006368:	3e700513          	li	a0,999
    8000636c:	02d7f5bb          	remuw	a1,a5,a3
    80006370:	02059593          	slli	a1,a1,0x20
    80006374:	0205d593          	srli	a1,a1,0x20
    80006378:	00bd85b3          	add	a1,s11,a1
    8000637c:	0005c583          	lbu	a1,0(a1)
    80006380:	02d7d7bb          	divuw	a5,a5,a3
    80006384:	f8b40223          	sb	a1,-124(s0)
    80006388:	46e57663          	bgeu	a0,a4,800067f4 <__printf+0x62c>
    8000638c:	02d7f5bb          	remuw	a1,a5,a3
    80006390:	02059593          	slli	a1,a1,0x20
    80006394:	0205d593          	srli	a1,a1,0x20
    80006398:	00bd85b3          	add	a1,s11,a1
    8000639c:	0005c583          	lbu	a1,0(a1)
    800063a0:	02d7d7bb          	divuw	a5,a5,a3
    800063a4:	f8b402a3          	sb	a1,-123(s0)
    800063a8:	46ea7863          	bgeu	s4,a4,80006818 <__printf+0x650>
    800063ac:	02d7f5bb          	remuw	a1,a5,a3
    800063b0:	02059593          	slli	a1,a1,0x20
    800063b4:	0205d593          	srli	a1,a1,0x20
    800063b8:	00bd85b3          	add	a1,s11,a1
    800063bc:	0005c583          	lbu	a1,0(a1)
    800063c0:	02d7d7bb          	divuw	a5,a5,a3
    800063c4:	f8b40323          	sb	a1,-122(s0)
    800063c8:	3eeaf863          	bgeu	s5,a4,800067b8 <__printf+0x5f0>
    800063cc:	02d7f5bb          	remuw	a1,a5,a3
    800063d0:	02059593          	slli	a1,a1,0x20
    800063d4:	0205d593          	srli	a1,a1,0x20
    800063d8:	00bd85b3          	add	a1,s11,a1
    800063dc:	0005c583          	lbu	a1,0(a1)
    800063e0:	02d7d7bb          	divuw	a5,a5,a3
    800063e4:	f8b403a3          	sb	a1,-121(s0)
    800063e8:	42eb7e63          	bgeu	s6,a4,80006824 <__printf+0x65c>
    800063ec:	02d7f5bb          	remuw	a1,a5,a3
    800063f0:	02059593          	slli	a1,a1,0x20
    800063f4:	0205d593          	srli	a1,a1,0x20
    800063f8:	00bd85b3          	add	a1,s11,a1
    800063fc:	0005c583          	lbu	a1,0(a1)
    80006400:	02d7d7bb          	divuw	a5,a5,a3
    80006404:	f8b40423          	sb	a1,-120(s0)
    80006408:	42ebfc63          	bgeu	s7,a4,80006840 <__printf+0x678>
    8000640c:	02079793          	slli	a5,a5,0x20
    80006410:	0207d793          	srli	a5,a5,0x20
    80006414:	00fd8db3          	add	s11,s11,a5
    80006418:	000dc703          	lbu	a4,0(s11)
    8000641c:	00a00793          	li	a5,10
    80006420:	00900c93          	li	s9,9
    80006424:	f8e404a3          	sb	a4,-119(s0)
    80006428:	00065c63          	bgez	a2,80006440 <__printf+0x278>
    8000642c:	f9040713          	addi	a4,s0,-112
    80006430:	00f70733          	add	a4,a4,a5
    80006434:	02d00693          	li	a3,45
    80006438:	fed70823          	sb	a3,-16(a4)
    8000643c:	00078c93          	mv	s9,a5
    80006440:	f8040793          	addi	a5,s0,-128
    80006444:	01978cb3          	add	s9,a5,s9
    80006448:	f7f40d13          	addi	s10,s0,-129
    8000644c:	000cc503          	lbu	a0,0(s9)
    80006450:	fffc8c93          	addi	s9,s9,-1
    80006454:	00000097          	auipc	ra,0x0
    80006458:	b90080e7          	jalr	-1136(ra) # 80005fe4 <consputc>
    8000645c:	ffac98e3          	bne	s9,s10,8000644c <__printf+0x284>
    80006460:	00094503          	lbu	a0,0(s2)
    80006464:	e00514e3          	bnez	a0,8000626c <__printf+0xa4>
    80006468:	1a0c1663          	bnez	s8,80006614 <__printf+0x44c>
    8000646c:	08813083          	ld	ra,136(sp)
    80006470:	08013403          	ld	s0,128(sp)
    80006474:	07813483          	ld	s1,120(sp)
    80006478:	07013903          	ld	s2,112(sp)
    8000647c:	06813983          	ld	s3,104(sp)
    80006480:	06013a03          	ld	s4,96(sp)
    80006484:	05813a83          	ld	s5,88(sp)
    80006488:	05013b03          	ld	s6,80(sp)
    8000648c:	04813b83          	ld	s7,72(sp)
    80006490:	04013c03          	ld	s8,64(sp)
    80006494:	03813c83          	ld	s9,56(sp)
    80006498:	03013d03          	ld	s10,48(sp)
    8000649c:	02813d83          	ld	s11,40(sp)
    800064a0:	0d010113          	addi	sp,sp,208
    800064a4:	00008067          	ret
    800064a8:	07300713          	li	a4,115
    800064ac:	1ce78a63          	beq	a5,a4,80006680 <__printf+0x4b8>
    800064b0:	07800713          	li	a4,120
    800064b4:	1ee79e63          	bne	a5,a4,800066b0 <__printf+0x4e8>
    800064b8:	f7843783          	ld	a5,-136(s0)
    800064bc:	0007a703          	lw	a4,0(a5)
    800064c0:	00878793          	addi	a5,a5,8
    800064c4:	f6f43c23          	sd	a5,-136(s0)
    800064c8:	28074263          	bltz	a4,8000674c <__printf+0x584>
    800064cc:	00002d97          	auipc	s11,0x2
    800064d0:	21cd8d93          	addi	s11,s11,540 # 800086e8 <digits>
    800064d4:	00f77793          	andi	a5,a4,15
    800064d8:	00fd87b3          	add	a5,s11,a5
    800064dc:	0007c683          	lbu	a3,0(a5)
    800064e0:	00f00613          	li	a2,15
    800064e4:	0007079b          	sext.w	a5,a4
    800064e8:	f8d40023          	sb	a3,-128(s0)
    800064ec:	0047559b          	srliw	a1,a4,0x4
    800064f0:	0047569b          	srliw	a3,a4,0x4
    800064f4:	00000c93          	li	s9,0
    800064f8:	0ee65063          	bge	a2,a4,800065d8 <__printf+0x410>
    800064fc:	00f6f693          	andi	a3,a3,15
    80006500:	00dd86b3          	add	a3,s11,a3
    80006504:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80006508:	0087d79b          	srliw	a5,a5,0x8
    8000650c:	00100c93          	li	s9,1
    80006510:	f8d400a3          	sb	a3,-127(s0)
    80006514:	0cb67263          	bgeu	a2,a1,800065d8 <__printf+0x410>
    80006518:	00f7f693          	andi	a3,a5,15
    8000651c:	00dd86b3          	add	a3,s11,a3
    80006520:	0006c583          	lbu	a1,0(a3)
    80006524:	00f00613          	li	a2,15
    80006528:	0047d69b          	srliw	a3,a5,0x4
    8000652c:	f8b40123          	sb	a1,-126(s0)
    80006530:	0047d593          	srli	a1,a5,0x4
    80006534:	28f67e63          	bgeu	a2,a5,800067d0 <__printf+0x608>
    80006538:	00f6f693          	andi	a3,a3,15
    8000653c:	00dd86b3          	add	a3,s11,a3
    80006540:	0006c503          	lbu	a0,0(a3)
    80006544:	0087d813          	srli	a6,a5,0x8
    80006548:	0087d69b          	srliw	a3,a5,0x8
    8000654c:	f8a401a3          	sb	a0,-125(s0)
    80006550:	28b67663          	bgeu	a2,a1,800067dc <__printf+0x614>
    80006554:	00f6f693          	andi	a3,a3,15
    80006558:	00dd86b3          	add	a3,s11,a3
    8000655c:	0006c583          	lbu	a1,0(a3)
    80006560:	00c7d513          	srli	a0,a5,0xc
    80006564:	00c7d69b          	srliw	a3,a5,0xc
    80006568:	f8b40223          	sb	a1,-124(s0)
    8000656c:	29067a63          	bgeu	a2,a6,80006800 <__printf+0x638>
    80006570:	00f6f693          	andi	a3,a3,15
    80006574:	00dd86b3          	add	a3,s11,a3
    80006578:	0006c583          	lbu	a1,0(a3)
    8000657c:	0107d813          	srli	a6,a5,0x10
    80006580:	0107d69b          	srliw	a3,a5,0x10
    80006584:	f8b402a3          	sb	a1,-123(s0)
    80006588:	28a67263          	bgeu	a2,a0,8000680c <__printf+0x644>
    8000658c:	00f6f693          	andi	a3,a3,15
    80006590:	00dd86b3          	add	a3,s11,a3
    80006594:	0006c683          	lbu	a3,0(a3)
    80006598:	0147d79b          	srliw	a5,a5,0x14
    8000659c:	f8d40323          	sb	a3,-122(s0)
    800065a0:	21067663          	bgeu	a2,a6,800067ac <__printf+0x5e4>
    800065a4:	02079793          	slli	a5,a5,0x20
    800065a8:	0207d793          	srli	a5,a5,0x20
    800065ac:	00fd8db3          	add	s11,s11,a5
    800065b0:	000dc683          	lbu	a3,0(s11)
    800065b4:	00800793          	li	a5,8
    800065b8:	00700c93          	li	s9,7
    800065bc:	f8d403a3          	sb	a3,-121(s0)
    800065c0:	00075c63          	bgez	a4,800065d8 <__printf+0x410>
    800065c4:	f9040713          	addi	a4,s0,-112
    800065c8:	00f70733          	add	a4,a4,a5
    800065cc:	02d00693          	li	a3,45
    800065d0:	fed70823          	sb	a3,-16(a4)
    800065d4:	00078c93          	mv	s9,a5
    800065d8:	f8040793          	addi	a5,s0,-128
    800065dc:	01978cb3          	add	s9,a5,s9
    800065e0:	f7f40d13          	addi	s10,s0,-129
    800065e4:	000cc503          	lbu	a0,0(s9)
    800065e8:	fffc8c93          	addi	s9,s9,-1
    800065ec:	00000097          	auipc	ra,0x0
    800065f0:	9f8080e7          	jalr	-1544(ra) # 80005fe4 <consputc>
    800065f4:	ff9d18e3          	bne	s10,s9,800065e4 <__printf+0x41c>
    800065f8:	0100006f          	j	80006608 <__printf+0x440>
    800065fc:	00000097          	auipc	ra,0x0
    80006600:	9e8080e7          	jalr	-1560(ra) # 80005fe4 <consputc>
    80006604:	000c8493          	mv	s1,s9
    80006608:	00094503          	lbu	a0,0(s2)
    8000660c:	c60510e3          	bnez	a0,8000626c <__printf+0xa4>
    80006610:	e40c0ee3          	beqz	s8,8000646c <__printf+0x2a4>
    80006614:	00003517          	auipc	a0,0x3
    80006618:	6cc50513          	addi	a0,a0,1740 # 80009ce0 <pr>
    8000661c:	00001097          	auipc	ra,0x1
    80006620:	94c080e7          	jalr	-1716(ra) # 80006f68 <release>
    80006624:	e49ff06f          	j	8000646c <__printf+0x2a4>
    80006628:	f7843783          	ld	a5,-136(s0)
    8000662c:	03000513          	li	a0,48
    80006630:	01000d13          	li	s10,16
    80006634:	00878713          	addi	a4,a5,8
    80006638:	0007bc83          	ld	s9,0(a5)
    8000663c:	f6e43c23          	sd	a4,-136(s0)
    80006640:	00000097          	auipc	ra,0x0
    80006644:	9a4080e7          	jalr	-1628(ra) # 80005fe4 <consputc>
    80006648:	07800513          	li	a0,120
    8000664c:	00000097          	auipc	ra,0x0
    80006650:	998080e7          	jalr	-1640(ra) # 80005fe4 <consputc>
    80006654:	00002d97          	auipc	s11,0x2
    80006658:	094d8d93          	addi	s11,s11,148 # 800086e8 <digits>
    8000665c:	03ccd793          	srli	a5,s9,0x3c
    80006660:	00fd87b3          	add	a5,s11,a5
    80006664:	0007c503          	lbu	a0,0(a5)
    80006668:	fffd0d1b          	addiw	s10,s10,-1
    8000666c:	004c9c93          	slli	s9,s9,0x4
    80006670:	00000097          	auipc	ra,0x0
    80006674:	974080e7          	jalr	-1676(ra) # 80005fe4 <consputc>
    80006678:	fe0d12e3          	bnez	s10,8000665c <__printf+0x494>
    8000667c:	f8dff06f          	j	80006608 <__printf+0x440>
    80006680:	f7843783          	ld	a5,-136(s0)
    80006684:	0007bc83          	ld	s9,0(a5)
    80006688:	00878793          	addi	a5,a5,8
    8000668c:	f6f43c23          	sd	a5,-136(s0)
    80006690:	000c9a63          	bnez	s9,800066a4 <__printf+0x4dc>
    80006694:	1080006f          	j	8000679c <__printf+0x5d4>
    80006698:	001c8c93          	addi	s9,s9,1
    8000669c:	00000097          	auipc	ra,0x0
    800066a0:	948080e7          	jalr	-1720(ra) # 80005fe4 <consputc>
    800066a4:	000cc503          	lbu	a0,0(s9)
    800066a8:	fe0518e3          	bnez	a0,80006698 <__printf+0x4d0>
    800066ac:	f5dff06f          	j	80006608 <__printf+0x440>
    800066b0:	02500513          	li	a0,37
    800066b4:	00000097          	auipc	ra,0x0
    800066b8:	930080e7          	jalr	-1744(ra) # 80005fe4 <consputc>
    800066bc:	000c8513          	mv	a0,s9
    800066c0:	00000097          	auipc	ra,0x0
    800066c4:	924080e7          	jalr	-1756(ra) # 80005fe4 <consputc>
    800066c8:	f41ff06f          	j	80006608 <__printf+0x440>
    800066cc:	02500513          	li	a0,37
    800066d0:	00000097          	auipc	ra,0x0
    800066d4:	914080e7          	jalr	-1772(ra) # 80005fe4 <consputc>
    800066d8:	f31ff06f          	j	80006608 <__printf+0x440>
    800066dc:	00030513          	mv	a0,t1
    800066e0:	00000097          	auipc	ra,0x0
    800066e4:	7bc080e7          	jalr	1980(ra) # 80006e9c <acquire>
    800066e8:	b4dff06f          	j	80006234 <__printf+0x6c>
    800066ec:	40c0053b          	negw	a0,a2
    800066f0:	00a00713          	li	a4,10
    800066f4:	02e576bb          	remuw	a3,a0,a4
    800066f8:	00002d97          	auipc	s11,0x2
    800066fc:	ff0d8d93          	addi	s11,s11,-16 # 800086e8 <digits>
    80006700:	ff700593          	li	a1,-9
    80006704:	02069693          	slli	a3,a3,0x20
    80006708:	0206d693          	srli	a3,a3,0x20
    8000670c:	00dd86b3          	add	a3,s11,a3
    80006710:	0006c683          	lbu	a3,0(a3)
    80006714:	02e557bb          	divuw	a5,a0,a4
    80006718:	f8d40023          	sb	a3,-128(s0)
    8000671c:	10b65e63          	bge	a2,a1,80006838 <__printf+0x670>
    80006720:	06300593          	li	a1,99
    80006724:	02e7f6bb          	remuw	a3,a5,a4
    80006728:	02069693          	slli	a3,a3,0x20
    8000672c:	0206d693          	srli	a3,a3,0x20
    80006730:	00dd86b3          	add	a3,s11,a3
    80006734:	0006c683          	lbu	a3,0(a3)
    80006738:	02e7d73b          	divuw	a4,a5,a4
    8000673c:	00200793          	li	a5,2
    80006740:	f8d400a3          	sb	a3,-127(s0)
    80006744:	bca5ece3          	bltu	a1,a0,8000631c <__printf+0x154>
    80006748:	ce5ff06f          	j	8000642c <__printf+0x264>
    8000674c:	40e007bb          	negw	a5,a4
    80006750:	00002d97          	auipc	s11,0x2
    80006754:	f98d8d93          	addi	s11,s11,-104 # 800086e8 <digits>
    80006758:	00f7f693          	andi	a3,a5,15
    8000675c:	00dd86b3          	add	a3,s11,a3
    80006760:	0006c583          	lbu	a1,0(a3)
    80006764:	ff100613          	li	a2,-15
    80006768:	0047d69b          	srliw	a3,a5,0x4
    8000676c:	f8b40023          	sb	a1,-128(s0)
    80006770:	0047d59b          	srliw	a1,a5,0x4
    80006774:	0ac75e63          	bge	a4,a2,80006830 <__printf+0x668>
    80006778:	00f6f693          	andi	a3,a3,15
    8000677c:	00dd86b3          	add	a3,s11,a3
    80006780:	0006c603          	lbu	a2,0(a3)
    80006784:	00f00693          	li	a3,15
    80006788:	0087d79b          	srliw	a5,a5,0x8
    8000678c:	f8c400a3          	sb	a2,-127(s0)
    80006790:	d8b6e4e3          	bltu	a3,a1,80006518 <__printf+0x350>
    80006794:	00200793          	li	a5,2
    80006798:	e2dff06f          	j	800065c4 <__printf+0x3fc>
    8000679c:	00002c97          	auipc	s9,0x2
    800067a0:	f2cc8c93          	addi	s9,s9,-212 # 800086c8 <CONSOLE_STATUS+0x6b8>
    800067a4:	02800513          	li	a0,40
    800067a8:	ef1ff06f          	j	80006698 <__printf+0x4d0>
    800067ac:	00700793          	li	a5,7
    800067b0:	00600c93          	li	s9,6
    800067b4:	e0dff06f          	j	800065c0 <__printf+0x3f8>
    800067b8:	00700793          	li	a5,7
    800067bc:	00600c93          	li	s9,6
    800067c0:	c69ff06f          	j	80006428 <__printf+0x260>
    800067c4:	00300793          	li	a5,3
    800067c8:	00200c93          	li	s9,2
    800067cc:	c5dff06f          	j	80006428 <__printf+0x260>
    800067d0:	00300793          	li	a5,3
    800067d4:	00200c93          	li	s9,2
    800067d8:	de9ff06f          	j	800065c0 <__printf+0x3f8>
    800067dc:	00400793          	li	a5,4
    800067e0:	00300c93          	li	s9,3
    800067e4:	dddff06f          	j	800065c0 <__printf+0x3f8>
    800067e8:	00400793          	li	a5,4
    800067ec:	00300c93          	li	s9,3
    800067f0:	c39ff06f          	j	80006428 <__printf+0x260>
    800067f4:	00500793          	li	a5,5
    800067f8:	00400c93          	li	s9,4
    800067fc:	c2dff06f          	j	80006428 <__printf+0x260>
    80006800:	00500793          	li	a5,5
    80006804:	00400c93          	li	s9,4
    80006808:	db9ff06f          	j	800065c0 <__printf+0x3f8>
    8000680c:	00600793          	li	a5,6
    80006810:	00500c93          	li	s9,5
    80006814:	dadff06f          	j	800065c0 <__printf+0x3f8>
    80006818:	00600793          	li	a5,6
    8000681c:	00500c93          	li	s9,5
    80006820:	c09ff06f          	j	80006428 <__printf+0x260>
    80006824:	00800793          	li	a5,8
    80006828:	00700c93          	li	s9,7
    8000682c:	bfdff06f          	j	80006428 <__printf+0x260>
    80006830:	00100793          	li	a5,1
    80006834:	d91ff06f          	j	800065c4 <__printf+0x3fc>
    80006838:	00100793          	li	a5,1
    8000683c:	bf1ff06f          	j	8000642c <__printf+0x264>
    80006840:	00900793          	li	a5,9
    80006844:	00800c93          	li	s9,8
    80006848:	be1ff06f          	j	80006428 <__printf+0x260>
    8000684c:	00002517          	auipc	a0,0x2
    80006850:	e8450513          	addi	a0,a0,-380 # 800086d0 <CONSOLE_STATUS+0x6c0>
    80006854:	00000097          	auipc	ra,0x0
    80006858:	918080e7          	jalr	-1768(ra) # 8000616c <panic>

000000008000685c <printfinit>:
    8000685c:	fe010113          	addi	sp,sp,-32
    80006860:	00813823          	sd	s0,16(sp)
    80006864:	00913423          	sd	s1,8(sp)
    80006868:	00113c23          	sd	ra,24(sp)
    8000686c:	02010413          	addi	s0,sp,32
    80006870:	00003497          	auipc	s1,0x3
    80006874:	47048493          	addi	s1,s1,1136 # 80009ce0 <pr>
    80006878:	00048513          	mv	a0,s1
    8000687c:	00002597          	auipc	a1,0x2
    80006880:	e6458593          	addi	a1,a1,-412 # 800086e0 <CONSOLE_STATUS+0x6d0>
    80006884:	00000097          	auipc	ra,0x0
    80006888:	5f4080e7          	jalr	1524(ra) # 80006e78 <initlock>
    8000688c:	01813083          	ld	ra,24(sp)
    80006890:	01013403          	ld	s0,16(sp)
    80006894:	0004ac23          	sw	zero,24(s1)
    80006898:	00813483          	ld	s1,8(sp)
    8000689c:	02010113          	addi	sp,sp,32
    800068a0:	00008067          	ret

00000000800068a4 <uartinit>:
    800068a4:	ff010113          	addi	sp,sp,-16
    800068a8:	00813423          	sd	s0,8(sp)
    800068ac:	01010413          	addi	s0,sp,16
    800068b0:	100007b7          	lui	a5,0x10000
    800068b4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800068b8:	f8000713          	li	a4,-128
    800068bc:	00e781a3          	sb	a4,3(a5)
    800068c0:	00300713          	li	a4,3
    800068c4:	00e78023          	sb	a4,0(a5)
    800068c8:	000780a3          	sb	zero,1(a5)
    800068cc:	00e781a3          	sb	a4,3(a5)
    800068d0:	00700693          	li	a3,7
    800068d4:	00d78123          	sb	a3,2(a5)
    800068d8:	00e780a3          	sb	a4,1(a5)
    800068dc:	00813403          	ld	s0,8(sp)
    800068e0:	01010113          	addi	sp,sp,16
    800068e4:	00008067          	ret

00000000800068e8 <uartputc>:
    800068e8:	00002797          	auipc	a5,0x2
    800068ec:	0c07a783          	lw	a5,192(a5) # 800089a8 <panicked>
    800068f0:	00078463          	beqz	a5,800068f8 <uartputc+0x10>
    800068f4:	0000006f          	j	800068f4 <uartputc+0xc>
    800068f8:	fd010113          	addi	sp,sp,-48
    800068fc:	02813023          	sd	s0,32(sp)
    80006900:	00913c23          	sd	s1,24(sp)
    80006904:	01213823          	sd	s2,16(sp)
    80006908:	01313423          	sd	s3,8(sp)
    8000690c:	02113423          	sd	ra,40(sp)
    80006910:	03010413          	addi	s0,sp,48
    80006914:	00002917          	auipc	s2,0x2
    80006918:	09c90913          	addi	s2,s2,156 # 800089b0 <uart_tx_r>
    8000691c:	00093783          	ld	a5,0(s2)
    80006920:	00002497          	auipc	s1,0x2
    80006924:	09848493          	addi	s1,s1,152 # 800089b8 <uart_tx_w>
    80006928:	0004b703          	ld	a4,0(s1)
    8000692c:	02078693          	addi	a3,a5,32
    80006930:	00050993          	mv	s3,a0
    80006934:	02e69c63          	bne	a3,a4,8000696c <uartputc+0x84>
    80006938:	00001097          	auipc	ra,0x1
    8000693c:	834080e7          	jalr	-1996(ra) # 8000716c <push_on>
    80006940:	00093783          	ld	a5,0(s2)
    80006944:	0004b703          	ld	a4,0(s1)
    80006948:	02078793          	addi	a5,a5,32
    8000694c:	00e79463          	bne	a5,a4,80006954 <uartputc+0x6c>
    80006950:	0000006f          	j	80006950 <uartputc+0x68>
    80006954:	00001097          	auipc	ra,0x1
    80006958:	88c080e7          	jalr	-1908(ra) # 800071e0 <pop_on>
    8000695c:	00093783          	ld	a5,0(s2)
    80006960:	0004b703          	ld	a4,0(s1)
    80006964:	02078693          	addi	a3,a5,32
    80006968:	fce688e3          	beq	a3,a4,80006938 <uartputc+0x50>
    8000696c:	01f77693          	andi	a3,a4,31
    80006970:	00003597          	auipc	a1,0x3
    80006974:	39058593          	addi	a1,a1,912 # 80009d00 <uart_tx_buf>
    80006978:	00d586b3          	add	a3,a1,a3
    8000697c:	00170713          	addi	a4,a4,1
    80006980:	01368023          	sb	s3,0(a3)
    80006984:	00e4b023          	sd	a4,0(s1)
    80006988:	10000637          	lui	a2,0x10000
    8000698c:	02f71063          	bne	a4,a5,800069ac <uartputc+0xc4>
    80006990:	0340006f          	j	800069c4 <uartputc+0xdc>
    80006994:	00074703          	lbu	a4,0(a4)
    80006998:	00f93023          	sd	a5,0(s2)
    8000699c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800069a0:	00093783          	ld	a5,0(s2)
    800069a4:	0004b703          	ld	a4,0(s1)
    800069a8:	00f70e63          	beq	a4,a5,800069c4 <uartputc+0xdc>
    800069ac:	00564683          	lbu	a3,5(a2)
    800069b0:	01f7f713          	andi	a4,a5,31
    800069b4:	00e58733          	add	a4,a1,a4
    800069b8:	0206f693          	andi	a3,a3,32
    800069bc:	00178793          	addi	a5,a5,1
    800069c0:	fc069ae3          	bnez	a3,80006994 <uartputc+0xac>
    800069c4:	02813083          	ld	ra,40(sp)
    800069c8:	02013403          	ld	s0,32(sp)
    800069cc:	01813483          	ld	s1,24(sp)
    800069d0:	01013903          	ld	s2,16(sp)
    800069d4:	00813983          	ld	s3,8(sp)
    800069d8:	03010113          	addi	sp,sp,48
    800069dc:	00008067          	ret

00000000800069e0 <uartputc_sync>:
    800069e0:	ff010113          	addi	sp,sp,-16
    800069e4:	00813423          	sd	s0,8(sp)
    800069e8:	01010413          	addi	s0,sp,16
    800069ec:	00002717          	auipc	a4,0x2
    800069f0:	fbc72703          	lw	a4,-68(a4) # 800089a8 <panicked>
    800069f4:	02071663          	bnez	a4,80006a20 <uartputc_sync+0x40>
    800069f8:	00050793          	mv	a5,a0
    800069fc:	100006b7          	lui	a3,0x10000
    80006a00:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80006a04:	02077713          	andi	a4,a4,32
    80006a08:	fe070ce3          	beqz	a4,80006a00 <uartputc_sync+0x20>
    80006a0c:	0ff7f793          	andi	a5,a5,255
    80006a10:	00f68023          	sb	a5,0(a3)
    80006a14:	00813403          	ld	s0,8(sp)
    80006a18:	01010113          	addi	sp,sp,16
    80006a1c:	00008067          	ret
    80006a20:	0000006f          	j	80006a20 <uartputc_sync+0x40>

0000000080006a24 <uartstart>:
    80006a24:	ff010113          	addi	sp,sp,-16
    80006a28:	00813423          	sd	s0,8(sp)
    80006a2c:	01010413          	addi	s0,sp,16
    80006a30:	00002617          	auipc	a2,0x2
    80006a34:	f8060613          	addi	a2,a2,-128 # 800089b0 <uart_tx_r>
    80006a38:	00002517          	auipc	a0,0x2
    80006a3c:	f8050513          	addi	a0,a0,-128 # 800089b8 <uart_tx_w>
    80006a40:	00063783          	ld	a5,0(a2)
    80006a44:	00053703          	ld	a4,0(a0)
    80006a48:	04f70263          	beq	a4,a5,80006a8c <uartstart+0x68>
    80006a4c:	100005b7          	lui	a1,0x10000
    80006a50:	00003817          	auipc	a6,0x3
    80006a54:	2b080813          	addi	a6,a6,688 # 80009d00 <uart_tx_buf>
    80006a58:	01c0006f          	j	80006a74 <uartstart+0x50>
    80006a5c:	0006c703          	lbu	a4,0(a3)
    80006a60:	00f63023          	sd	a5,0(a2)
    80006a64:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80006a68:	00063783          	ld	a5,0(a2)
    80006a6c:	00053703          	ld	a4,0(a0)
    80006a70:	00f70e63          	beq	a4,a5,80006a8c <uartstart+0x68>
    80006a74:	01f7f713          	andi	a4,a5,31
    80006a78:	00e806b3          	add	a3,a6,a4
    80006a7c:	0055c703          	lbu	a4,5(a1)
    80006a80:	00178793          	addi	a5,a5,1
    80006a84:	02077713          	andi	a4,a4,32
    80006a88:	fc071ae3          	bnez	a4,80006a5c <uartstart+0x38>
    80006a8c:	00813403          	ld	s0,8(sp)
    80006a90:	01010113          	addi	sp,sp,16
    80006a94:	00008067          	ret

0000000080006a98 <uartgetc>:
    80006a98:	ff010113          	addi	sp,sp,-16
    80006a9c:	00813423          	sd	s0,8(sp)
    80006aa0:	01010413          	addi	s0,sp,16
    80006aa4:	10000737          	lui	a4,0x10000
    80006aa8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80006aac:	0017f793          	andi	a5,a5,1
    80006ab0:	00078c63          	beqz	a5,80006ac8 <uartgetc+0x30>
    80006ab4:	00074503          	lbu	a0,0(a4)
    80006ab8:	0ff57513          	andi	a0,a0,255
    80006abc:	00813403          	ld	s0,8(sp)
    80006ac0:	01010113          	addi	sp,sp,16
    80006ac4:	00008067          	ret
    80006ac8:	fff00513          	li	a0,-1
    80006acc:	ff1ff06f          	j	80006abc <uartgetc+0x24>

0000000080006ad0 <uartintr>:
    80006ad0:	100007b7          	lui	a5,0x10000
    80006ad4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80006ad8:	0017f793          	andi	a5,a5,1
    80006adc:	0a078463          	beqz	a5,80006b84 <uartintr+0xb4>
    80006ae0:	fe010113          	addi	sp,sp,-32
    80006ae4:	00813823          	sd	s0,16(sp)
    80006ae8:	00913423          	sd	s1,8(sp)
    80006aec:	00113c23          	sd	ra,24(sp)
    80006af0:	02010413          	addi	s0,sp,32
    80006af4:	100004b7          	lui	s1,0x10000
    80006af8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80006afc:	0ff57513          	andi	a0,a0,255
    80006b00:	fffff097          	auipc	ra,0xfffff
    80006b04:	534080e7          	jalr	1332(ra) # 80006034 <consoleintr>
    80006b08:	0054c783          	lbu	a5,5(s1)
    80006b0c:	0017f793          	andi	a5,a5,1
    80006b10:	fe0794e3          	bnez	a5,80006af8 <uartintr+0x28>
    80006b14:	00002617          	auipc	a2,0x2
    80006b18:	e9c60613          	addi	a2,a2,-356 # 800089b0 <uart_tx_r>
    80006b1c:	00002517          	auipc	a0,0x2
    80006b20:	e9c50513          	addi	a0,a0,-356 # 800089b8 <uart_tx_w>
    80006b24:	00063783          	ld	a5,0(a2)
    80006b28:	00053703          	ld	a4,0(a0)
    80006b2c:	04f70263          	beq	a4,a5,80006b70 <uartintr+0xa0>
    80006b30:	100005b7          	lui	a1,0x10000
    80006b34:	00003817          	auipc	a6,0x3
    80006b38:	1cc80813          	addi	a6,a6,460 # 80009d00 <uart_tx_buf>
    80006b3c:	01c0006f          	j	80006b58 <uartintr+0x88>
    80006b40:	0006c703          	lbu	a4,0(a3)
    80006b44:	00f63023          	sd	a5,0(a2)
    80006b48:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80006b4c:	00063783          	ld	a5,0(a2)
    80006b50:	00053703          	ld	a4,0(a0)
    80006b54:	00f70e63          	beq	a4,a5,80006b70 <uartintr+0xa0>
    80006b58:	01f7f713          	andi	a4,a5,31
    80006b5c:	00e806b3          	add	a3,a6,a4
    80006b60:	0055c703          	lbu	a4,5(a1)
    80006b64:	00178793          	addi	a5,a5,1
    80006b68:	02077713          	andi	a4,a4,32
    80006b6c:	fc071ae3          	bnez	a4,80006b40 <uartintr+0x70>
    80006b70:	01813083          	ld	ra,24(sp)
    80006b74:	01013403          	ld	s0,16(sp)
    80006b78:	00813483          	ld	s1,8(sp)
    80006b7c:	02010113          	addi	sp,sp,32
    80006b80:	00008067          	ret
    80006b84:	00002617          	auipc	a2,0x2
    80006b88:	e2c60613          	addi	a2,a2,-468 # 800089b0 <uart_tx_r>
    80006b8c:	00002517          	auipc	a0,0x2
    80006b90:	e2c50513          	addi	a0,a0,-468 # 800089b8 <uart_tx_w>
    80006b94:	00063783          	ld	a5,0(a2)
    80006b98:	00053703          	ld	a4,0(a0)
    80006b9c:	04f70263          	beq	a4,a5,80006be0 <uartintr+0x110>
    80006ba0:	100005b7          	lui	a1,0x10000
    80006ba4:	00003817          	auipc	a6,0x3
    80006ba8:	15c80813          	addi	a6,a6,348 # 80009d00 <uart_tx_buf>
    80006bac:	01c0006f          	j	80006bc8 <uartintr+0xf8>
    80006bb0:	0006c703          	lbu	a4,0(a3)
    80006bb4:	00f63023          	sd	a5,0(a2)
    80006bb8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80006bbc:	00063783          	ld	a5,0(a2)
    80006bc0:	00053703          	ld	a4,0(a0)
    80006bc4:	02f70063          	beq	a4,a5,80006be4 <uartintr+0x114>
    80006bc8:	01f7f713          	andi	a4,a5,31
    80006bcc:	00e806b3          	add	a3,a6,a4
    80006bd0:	0055c703          	lbu	a4,5(a1)
    80006bd4:	00178793          	addi	a5,a5,1
    80006bd8:	02077713          	andi	a4,a4,32
    80006bdc:	fc071ae3          	bnez	a4,80006bb0 <uartintr+0xe0>
    80006be0:	00008067          	ret
    80006be4:	00008067          	ret

0000000080006be8 <kinit>:
    80006be8:	fc010113          	addi	sp,sp,-64
    80006bec:	02913423          	sd	s1,40(sp)
    80006bf0:	fffff7b7          	lui	a5,0xfffff
    80006bf4:	00009497          	auipc	s1,0x9
    80006bf8:	40b48493          	addi	s1,s1,1035 # 8000ffff <end+0xfff>
    80006bfc:	02813823          	sd	s0,48(sp)
    80006c00:	01313c23          	sd	s3,24(sp)
    80006c04:	00f4f4b3          	and	s1,s1,a5
    80006c08:	02113c23          	sd	ra,56(sp)
    80006c0c:	03213023          	sd	s2,32(sp)
    80006c10:	01413823          	sd	s4,16(sp)
    80006c14:	01513423          	sd	s5,8(sp)
    80006c18:	04010413          	addi	s0,sp,64
    80006c1c:	000017b7          	lui	a5,0x1
    80006c20:	01100993          	li	s3,17
    80006c24:	00f487b3          	add	a5,s1,a5
    80006c28:	01b99993          	slli	s3,s3,0x1b
    80006c2c:	06f9e063          	bltu	s3,a5,80006c8c <kinit+0xa4>
    80006c30:	00008a97          	auipc	s5,0x8
    80006c34:	3d0a8a93          	addi	s5,s5,976 # 8000f000 <end>
    80006c38:	0754ec63          	bltu	s1,s5,80006cb0 <kinit+0xc8>
    80006c3c:	0734fa63          	bgeu	s1,s3,80006cb0 <kinit+0xc8>
    80006c40:	00088a37          	lui	s4,0x88
    80006c44:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80006c48:	00002917          	auipc	s2,0x2
    80006c4c:	d7890913          	addi	s2,s2,-648 # 800089c0 <kmem>
    80006c50:	00ca1a13          	slli	s4,s4,0xc
    80006c54:	0140006f          	j	80006c68 <kinit+0x80>
    80006c58:	000017b7          	lui	a5,0x1
    80006c5c:	00f484b3          	add	s1,s1,a5
    80006c60:	0554e863          	bltu	s1,s5,80006cb0 <kinit+0xc8>
    80006c64:	0534f663          	bgeu	s1,s3,80006cb0 <kinit+0xc8>
    80006c68:	00001637          	lui	a2,0x1
    80006c6c:	00100593          	li	a1,1
    80006c70:	00048513          	mv	a0,s1
    80006c74:	00000097          	auipc	ra,0x0
    80006c78:	5e4080e7          	jalr	1508(ra) # 80007258 <__memset>
    80006c7c:	00093783          	ld	a5,0(s2)
    80006c80:	00f4b023          	sd	a5,0(s1)
    80006c84:	00993023          	sd	s1,0(s2)
    80006c88:	fd4498e3          	bne	s1,s4,80006c58 <kinit+0x70>
    80006c8c:	03813083          	ld	ra,56(sp)
    80006c90:	03013403          	ld	s0,48(sp)
    80006c94:	02813483          	ld	s1,40(sp)
    80006c98:	02013903          	ld	s2,32(sp)
    80006c9c:	01813983          	ld	s3,24(sp)
    80006ca0:	01013a03          	ld	s4,16(sp)
    80006ca4:	00813a83          	ld	s5,8(sp)
    80006ca8:	04010113          	addi	sp,sp,64
    80006cac:	00008067          	ret
    80006cb0:	00002517          	auipc	a0,0x2
    80006cb4:	a5050513          	addi	a0,a0,-1456 # 80008700 <digits+0x18>
    80006cb8:	fffff097          	auipc	ra,0xfffff
    80006cbc:	4b4080e7          	jalr	1204(ra) # 8000616c <panic>

0000000080006cc0 <freerange>:
    80006cc0:	fc010113          	addi	sp,sp,-64
    80006cc4:	000017b7          	lui	a5,0x1
    80006cc8:	02913423          	sd	s1,40(sp)
    80006ccc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80006cd0:	009504b3          	add	s1,a0,s1
    80006cd4:	fffff537          	lui	a0,0xfffff
    80006cd8:	02813823          	sd	s0,48(sp)
    80006cdc:	02113c23          	sd	ra,56(sp)
    80006ce0:	03213023          	sd	s2,32(sp)
    80006ce4:	01313c23          	sd	s3,24(sp)
    80006ce8:	01413823          	sd	s4,16(sp)
    80006cec:	01513423          	sd	s5,8(sp)
    80006cf0:	01613023          	sd	s6,0(sp)
    80006cf4:	04010413          	addi	s0,sp,64
    80006cf8:	00a4f4b3          	and	s1,s1,a0
    80006cfc:	00f487b3          	add	a5,s1,a5
    80006d00:	06f5e463          	bltu	a1,a5,80006d68 <freerange+0xa8>
    80006d04:	00008a97          	auipc	s5,0x8
    80006d08:	2fca8a93          	addi	s5,s5,764 # 8000f000 <end>
    80006d0c:	0954e263          	bltu	s1,s5,80006d90 <freerange+0xd0>
    80006d10:	01100993          	li	s3,17
    80006d14:	01b99993          	slli	s3,s3,0x1b
    80006d18:	0734fc63          	bgeu	s1,s3,80006d90 <freerange+0xd0>
    80006d1c:	00058a13          	mv	s4,a1
    80006d20:	00002917          	auipc	s2,0x2
    80006d24:	ca090913          	addi	s2,s2,-864 # 800089c0 <kmem>
    80006d28:	00002b37          	lui	s6,0x2
    80006d2c:	0140006f          	j	80006d40 <freerange+0x80>
    80006d30:	000017b7          	lui	a5,0x1
    80006d34:	00f484b3          	add	s1,s1,a5
    80006d38:	0554ec63          	bltu	s1,s5,80006d90 <freerange+0xd0>
    80006d3c:	0534fa63          	bgeu	s1,s3,80006d90 <freerange+0xd0>
    80006d40:	00001637          	lui	a2,0x1
    80006d44:	00100593          	li	a1,1
    80006d48:	00048513          	mv	a0,s1
    80006d4c:	00000097          	auipc	ra,0x0
    80006d50:	50c080e7          	jalr	1292(ra) # 80007258 <__memset>
    80006d54:	00093703          	ld	a4,0(s2)
    80006d58:	016487b3          	add	a5,s1,s6
    80006d5c:	00e4b023          	sd	a4,0(s1)
    80006d60:	00993023          	sd	s1,0(s2)
    80006d64:	fcfa76e3          	bgeu	s4,a5,80006d30 <freerange+0x70>
    80006d68:	03813083          	ld	ra,56(sp)
    80006d6c:	03013403          	ld	s0,48(sp)
    80006d70:	02813483          	ld	s1,40(sp)
    80006d74:	02013903          	ld	s2,32(sp)
    80006d78:	01813983          	ld	s3,24(sp)
    80006d7c:	01013a03          	ld	s4,16(sp)
    80006d80:	00813a83          	ld	s5,8(sp)
    80006d84:	00013b03          	ld	s6,0(sp)
    80006d88:	04010113          	addi	sp,sp,64
    80006d8c:	00008067          	ret
    80006d90:	00002517          	auipc	a0,0x2
    80006d94:	97050513          	addi	a0,a0,-1680 # 80008700 <digits+0x18>
    80006d98:	fffff097          	auipc	ra,0xfffff
    80006d9c:	3d4080e7          	jalr	980(ra) # 8000616c <panic>

0000000080006da0 <kfree>:
    80006da0:	fe010113          	addi	sp,sp,-32
    80006da4:	00813823          	sd	s0,16(sp)
    80006da8:	00113c23          	sd	ra,24(sp)
    80006dac:	00913423          	sd	s1,8(sp)
    80006db0:	02010413          	addi	s0,sp,32
    80006db4:	03451793          	slli	a5,a0,0x34
    80006db8:	04079c63          	bnez	a5,80006e10 <kfree+0x70>
    80006dbc:	00008797          	auipc	a5,0x8
    80006dc0:	24478793          	addi	a5,a5,580 # 8000f000 <end>
    80006dc4:	00050493          	mv	s1,a0
    80006dc8:	04f56463          	bltu	a0,a5,80006e10 <kfree+0x70>
    80006dcc:	01100793          	li	a5,17
    80006dd0:	01b79793          	slli	a5,a5,0x1b
    80006dd4:	02f57e63          	bgeu	a0,a5,80006e10 <kfree+0x70>
    80006dd8:	00001637          	lui	a2,0x1
    80006ddc:	00100593          	li	a1,1
    80006de0:	00000097          	auipc	ra,0x0
    80006de4:	478080e7          	jalr	1144(ra) # 80007258 <__memset>
    80006de8:	00002797          	auipc	a5,0x2
    80006dec:	bd878793          	addi	a5,a5,-1064 # 800089c0 <kmem>
    80006df0:	0007b703          	ld	a4,0(a5)
    80006df4:	01813083          	ld	ra,24(sp)
    80006df8:	01013403          	ld	s0,16(sp)
    80006dfc:	00e4b023          	sd	a4,0(s1)
    80006e00:	0097b023          	sd	s1,0(a5)
    80006e04:	00813483          	ld	s1,8(sp)
    80006e08:	02010113          	addi	sp,sp,32
    80006e0c:	00008067          	ret
    80006e10:	00002517          	auipc	a0,0x2
    80006e14:	8f050513          	addi	a0,a0,-1808 # 80008700 <digits+0x18>
    80006e18:	fffff097          	auipc	ra,0xfffff
    80006e1c:	354080e7          	jalr	852(ra) # 8000616c <panic>

0000000080006e20 <kalloc>:
    80006e20:	fe010113          	addi	sp,sp,-32
    80006e24:	00813823          	sd	s0,16(sp)
    80006e28:	00913423          	sd	s1,8(sp)
    80006e2c:	00113c23          	sd	ra,24(sp)
    80006e30:	02010413          	addi	s0,sp,32
    80006e34:	00002797          	auipc	a5,0x2
    80006e38:	b8c78793          	addi	a5,a5,-1140 # 800089c0 <kmem>
    80006e3c:	0007b483          	ld	s1,0(a5)
    80006e40:	02048063          	beqz	s1,80006e60 <kalloc+0x40>
    80006e44:	0004b703          	ld	a4,0(s1)
    80006e48:	00001637          	lui	a2,0x1
    80006e4c:	00500593          	li	a1,5
    80006e50:	00048513          	mv	a0,s1
    80006e54:	00e7b023          	sd	a4,0(a5)
    80006e58:	00000097          	auipc	ra,0x0
    80006e5c:	400080e7          	jalr	1024(ra) # 80007258 <__memset>
    80006e60:	01813083          	ld	ra,24(sp)
    80006e64:	01013403          	ld	s0,16(sp)
    80006e68:	00048513          	mv	a0,s1
    80006e6c:	00813483          	ld	s1,8(sp)
    80006e70:	02010113          	addi	sp,sp,32
    80006e74:	00008067          	ret

0000000080006e78 <initlock>:
    80006e78:	ff010113          	addi	sp,sp,-16
    80006e7c:	00813423          	sd	s0,8(sp)
    80006e80:	01010413          	addi	s0,sp,16
    80006e84:	00813403          	ld	s0,8(sp)
    80006e88:	00b53423          	sd	a1,8(a0)
    80006e8c:	00052023          	sw	zero,0(a0)
    80006e90:	00053823          	sd	zero,16(a0)
    80006e94:	01010113          	addi	sp,sp,16
    80006e98:	00008067          	ret

0000000080006e9c <acquire>:
    80006e9c:	fe010113          	addi	sp,sp,-32
    80006ea0:	00813823          	sd	s0,16(sp)
    80006ea4:	00913423          	sd	s1,8(sp)
    80006ea8:	00113c23          	sd	ra,24(sp)
    80006eac:	01213023          	sd	s2,0(sp)
    80006eb0:	02010413          	addi	s0,sp,32
    80006eb4:	00050493          	mv	s1,a0
    80006eb8:	10002973          	csrr	s2,sstatus
    80006ebc:	100027f3          	csrr	a5,sstatus
    80006ec0:	ffd7f793          	andi	a5,a5,-3
    80006ec4:	10079073          	csrw	sstatus,a5
    80006ec8:	fffff097          	auipc	ra,0xfffff
    80006ecc:	8e4080e7          	jalr	-1820(ra) # 800057ac <mycpu>
    80006ed0:	07852783          	lw	a5,120(a0)
    80006ed4:	06078e63          	beqz	a5,80006f50 <acquire+0xb4>
    80006ed8:	fffff097          	auipc	ra,0xfffff
    80006edc:	8d4080e7          	jalr	-1836(ra) # 800057ac <mycpu>
    80006ee0:	07852783          	lw	a5,120(a0)
    80006ee4:	0004a703          	lw	a4,0(s1)
    80006ee8:	0017879b          	addiw	a5,a5,1
    80006eec:	06f52c23          	sw	a5,120(a0)
    80006ef0:	04071063          	bnez	a4,80006f30 <acquire+0x94>
    80006ef4:	00100713          	li	a4,1
    80006ef8:	00070793          	mv	a5,a4
    80006efc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80006f00:	0007879b          	sext.w	a5,a5
    80006f04:	fe079ae3          	bnez	a5,80006ef8 <acquire+0x5c>
    80006f08:	0ff0000f          	fence
    80006f0c:	fffff097          	auipc	ra,0xfffff
    80006f10:	8a0080e7          	jalr	-1888(ra) # 800057ac <mycpu>
    80006f14:	01813083          	ld	ra,24(sp)
    80006f18:	01013403          	ld	s0,16(sp)
    80006f1c:	00a4b823          	sd	a0,16(s1)
    80006f20:	00013903          	ld	s2,0(sp)
    80006f24:	00813483          	ld	s1,8(sp)
    80006f28:	02010113          	addi	sp,sp,32
    80006f2c:	00008067          	ret
    80006f30:	0104b903          	ld	s2,16(s1)
    80006f34:	fffff097          	auipc	ra,0xfffff
    80006f38:	878080e7          	jalr	-1928(ra) # 800057ac <mycpu>
    80006f3c:	faa91ce3          	bne	s2,a0,80006ef4 <acquire+0x58>
    80006f40:	00001517          	auipc	a0,0x1
    80006f44:	7c850513          	addi	a0,a0,1992 # 80008708 <digits+0x20>
    80006f48:	fffff097          	auipc	ra,0xfffff
    80006f4c:	224080e7          	jalr	548(ra) # 8000616c <panic>
    80006f50:	00195913          	srli	s2,s2,0x1
    80006f54:	fffff097          	auipc	ra,0xfffff
    80006f58:	858080e7          	jalr	-1960(ra) # 800057ac <mycpu>
    80006f5c:	00197913          	andi	s2,s2,1
    80006f60:	07252e23          	sw	s2,124(a0)
    80006f64:	f75ff06f          	j	80006ed8 <acquire+0x3c>

0000000080006f68 <release>:
    80006f68:	fe010113          	addi	sp,sp,-32
    80006f6c:	00813823          	sd	s0,16(sp)
    80006f70:	00113c23          	sd	ra,24(sp)
    80006f74:	00913423          	sd	s1,8(sp)
    80006f78:	01213023          	sd	s2,0(sp)
    80006f7c:	02010413          	addi	s0,sp,32
    80006f80:	00052783          	lw	a5,0(a0)
    80006f84:	00079a63          	bnez	a5,80006f98 <release+0x30>
    80006f88:	00001517          	auipc	a0,0x1
    80006f8c:	78850513          	addi	a0,a0,1928 # 80008710 <digits+0x28>
    80006f90:	fffff097          	auipc	ra,0xfffff
    80006f94:	1dc080e7          	jalr	476(ra) # 8000616c <panic>
    80006f98:	01053903          	ld	s2,16(a0)
    80006f9c:	00050493          	mv	s1,a0
    80006fa0:	fffff097          	auipc	ra,0xfffff
    80006fa4:	80c080e7          	jalr	-2036(ra) # 800057ac <mycpu>
    80006fa8:	fea910e3          	bne	s2,a0,80006f88 <release+0x20>
    80006fac:	0004b823          	sd	zero,16(s1)
    80006fb0:	0ff0000f          	fence
    80006fb4:	0f50000f          	fence	iorw,ow
    80006fb8:	0804a02f          	amoswap.w	zero,zero,(s1)
    80006fbc:	ffffe097          	auipc	ra,0xffffe
    80006fc0:	7f0080e7          	jalr	2032(ra) # 800057ac <mycpu>
    80006fc4:	100027f3          	csrr	a5,sstatus
    80006fc8:	0027f793          	andi	a5,a5,2
    80006fcc:	04079a63          	bnez	a5,80007020 <release+0xb8>
    80006fd0:	07852783          	lw	a5,120(a0)
    80006fd4:	02f05e63          	blez	a5,80007010 <release+0xa8>
    80006fd8:	fff7871b          	addiw	a4,a5,-1
    80006fdc:	06e52c23          	sw	a4,120(a0)
    80006fe0:	00071c63          	bnez	a4,80006ff8 <release+0x90>
    80006fe4:	07c52783          	lw	a5,124(a0)
    80006fe8:	00078863          	beqz	a5,80006ff8 <release+0x90>
    80006fec:	100027f3          	csrr	a5,sstatus
    80006ff0:	0027e793          	ori	a5,a5,2
    80006ff4:	10079073          	csrw	sstatus,a5
    80006ff8:	01813083          	ld	ra,24(sp)
    80006ffc:	01013403          	ld	s0,16(sp)
    80007000:	00813483          	ld	s1,8(sp)
    80007004:	00013903          	ld	s2,0(sp)
    80007008:	02010113          	addi	sp,sp,32
    8000700c:	00008067          	ret
    80007010:	00001517          	auipc	a0,0x1
    80007014:	72050513          	addi	a0,a0,1824 # 80008730 <digits+0x48>
    80007018:	fffff097          	auipc	ra,0xfffff
    8000701c:	154080e7          	jalr	340(ra) # 8000616c <panic>
    80007020:	00001517          	auipc	a0,0x1
    80007024:	6f850513          	addi	a0,a0,1784 # 80008718 <digits+0x30>
    80007028:	fffff097          	auipc	ra,0xfffff
    8000702c:	144080e7          	jalr	324(ra) # 8000616c <panic>

0000000080007030 <holding>:
    80007030:	00052783          	lw	a5,0(a0)
    80007034:	00079663          	bnez	a5,80007040 <holding+0x10>
    80007038:	00000513          	li	a0,0
    8000703c:	00008067          	ret
    80007040:	fe010113          	addi	sp,sp,-32
    80007044:	00813823          	sd	s0,16(sp)
    80007048:	00913423          	sd	s1,8(sp)
    8000704c:	00113c23          	sd	ra,24(sp)
    80007050:	02010413          	addi	s0,sp,32
    80007054:	01053483          	ld	s1,16(a0)
    80007058:	ffffe097          	auipc	ra,0xffffe
    8000705c:	754080e7          	jalr	1876(ra) # 800057ac <mycpu>
    80007060:	01813083          	ld	ra,24(sp)
    80007064:	01013403          	ld	s0,16(sp)
    80007068:	40a48533          	sub	a0,s1,a0
    8000706c:	00153513          	seqz	a0,a0
    80007070:	00813483          	ld	s1,8(sp)
    80007074:	02010113          	addi	sp,sp,32
    80007078:	00008067          	ret

000000008000707c <push_off>:
    8000707c:	fe010113          	addi	sp,sp,-32
    80007080:	00813823          	sd	s0,16(sp)
    80007084:	00113c23          	sd	ra,24(sp)
    80007088:	00913423          	sd	s1,8(sp)
    8000708c:	02010413          	addi	s0,sp,32
    80007090:	100024f3          	csrr	s1,sstatus
    80007094:	100027f3          	csrr	a5,sstatus
    80007098:	ffd7f793          	andi	a5,a5,-3
    8000709c:	10079073          	csrw	sstatus,a5
    800070a0:	ffffe097          	auipc	ra,0xffffe
    800070a4:	70c080e7          	jalr	1804(ra) # 800057ac <mycpu>
    800070a8:	07852783          	lw	a5,120(a0)
    800070ac:	02078663          	beqz	a5,800070d8 <push_off+0x5c>
    800070b0:	ffffe097          	auipc	ra,0xffffe
    800070b4:	6fc080e7          	jalr	1788(ra) # 800057ac <mycpu>
    800070b8:	07852783          	lw	a5,120(a0)
    800070bc:	01813083          	ld	ra,24(sp)
    800070c0:	01013403          	ld	s0,16(sp)
    800070c4:	0017879b          	addiw	a5,a5,1
    800070c8:	06f52c23          	sw	a5,120(a0)
    800070cc:	00813483          	ld	s1,8(sp)
    800070d0:	02010113          	addi	sp,sp,32
    800070d4:	00008067          	ret
    800070d8:	0014d493          	srli	s1,s1,0x1
    800070dc:	ffffe097          	auipc	ra,0xffffe
    800070e0:	6d0080e7          	jalr	1744(ra) # 800057ac <mycpu>
    800070e4:	0014f493          	andi	s1,s1,1
    800070e8:	06952e23          	sw	s1,124(a0)
    800070ec:	fc5ff06f          	j	800070b0 <push_off+0x34>

00000000800070f0 <pop_off>:
    800070f0:	ff010113          	addi	sp,sp,-16
    800070f4:	00813023          	sd	s0,0(sp)
    800070f8:	00113423          	sd	ra,8(sp)
    800070fc:	01010413          	addi	s0,sp,16
    80007100:	ffffe097          	auipc	ra,0xffffe
    80007104:	6ac080e7          	jalr	1708(ra) # 800057ac <mycpu>
    80007108:	100027f3          	csrr	a5,sstatus
    8000710c:	0027f793          	andi	a5,a5,2
    80007110:	04079663          	bnez	a5,8000715c <pop_off+0x6c>
    80007114:	07852783          	lw	a5,120(a0)
    80007118:	02f05a63          	blez	a5,8000714c <pop_off+0x5c>
    8000711c:	fff7871b          	addiw	a4,a5,-1
    80007120:	06e52c23          	sw	a4,120(a0)
    80007124:	00071c63          	bnez	a4,8000713c <pop_off+0x4c>
    80007128:	07c52783          	lw	a5,124(a0)
    8000712c:	00078863          	beqz	a5,8000713c <pop_off+0x4c>
    80007130:	100027f3          	csrr	a5,sstatus
    80007134:	0027e793          	ori	a5,a5,2
    80007138:	10079073          	csrw	sstatus,a5
    8000713c:	00813083          	ld	ra,8(sp)
    80007140:	00013403          	ld	s0,0(sp)
    80007144:	01010113          	addi	sp,sp,16
    80007148:	00008067          	ret
    8000714c:	00001517          	auipc	a0,0x1
    80007150:	5e450513          	addi	a0,a0,1508 # 80008730 <digits+0x48>
    80007154:	fffff097          	auipc	ra,0xfffff
    80007158:	018080e7          	jalr	24(ra) # 8000616c <panic>
    8000715c:	00001517          	auipc	a0,0x1
    80007160:	5bc50513          	addi	a0,a0,1468 # 80008718 <digits+0x30>
    80007164:	fffff097          	auipc	ra,0xfffff
    80007168:	008080e7          	jalr	8(ra) # 8000616c <panic>

000000008000716c <push_on>:
    8000716c:	fe010113          	addi	sp,sp,-32
    80007170:	00813823          	sd	s0,16(sp)
    80007174:	00113c23          	sd	ra,24(sp)
    80007178:	00913423          	sd	s1,8(sp)
    8000717c:	02010413          	addi	s0,sp,32
    80007180:	100024f3          	csrr	s1,sstatus
    80007184:	100027f3          	csrr	a5,sstatus
    80007188:	0027e793          	ori	a5,a5,2
    8000718c:	10079073          	csrw	sstatus,a5
    80007190:	ffffe097          	auipc	ra,0xffffe
    80007194:	61c080e7          	jalr	1564(ra) # 800057ac <mycpu>
    80007198:	07852783          	lw	a5,120(a0)
    8000719c:	02078663          	beqz	a5,800071c8 <push_on+0x5c>
    800071a0:	ffffe097          	auipc	ra,0xffffe
    800071a4:	60c080e7          	jalr	1548(ra) # 800057ac <mycpu>
    800071a8:	07852783          	lw	a5,120(a0)
    800071ac:	01813083          	ld	ra,24(sp)
    800071b0:	01013403          	ld	s0,16(sp)
    800071b4:	0017879b          	addiw	a5,a5,1
    800071b8:	06f52c23          	sw	a5,120(a0)
    800071bc:	00813483          	ld	s1,8(sp)
    800071c0:	02010113          	addi	sp,sp,32
    800071c4:	00008067          	ret
    800071c8:	0014d493          	srli	s1,s1,0x1
    800071cc:	ffffe097          	auipc	ra,0xffffe
    800071d0:	5e0080e7          	jalr	1504(ra) # 800057ac <mycpu>
    800071d4:	0014f493          	andi	s1,s1,1
    800071d8:	06952e23          	sw	s1,124(a0)
    800071dc:	fc5ff06f          	j	800071a0 <push_on+0x34>

00000000800071e0 <pop_on>:
    800071e0:	ff010113          	addi	sp,sp,-16
    800071e4:	00813023          	sd	s0,0(sp)
    800071e8:	00113423          	sd	ra,8(sp)
    800071ec:	01010413          	addi	s0,sp,16
    800071f0:	ffffe097          	auipc	ra,0xffffe
    800071f4:	5bc080e7          	jalr	1468(ra) # 800057ac <mycpu>
    800071f8:	100027f3          	csrr	a5,sstatus
    800071fc:	0027f793          	andi	a5,a5,2
    80007200:	04078463          	beqz	a5,80007248 <pop_on+0x68>
    80007204:	07852783          	lw	a5,120(a0)
    80007208:	02f05863          	blez	a5,80007238 <pop_on+0x58>
    8000720c:	fff7879b          	addiw	a5,a5,-1
    80007210:	06f52c23          	sw	a5,120(a0)
    80007214:	07853783          	ld	a5,120(a0)
    80007218:	00079863          	bnez	a5,80007228 <pop_on+0x48>
    8000721c:	100027f3          	csrr	a5,sstatus
    80007220:	ffd7f793          	andi	a5,a5,-3
    80007224:	10079073          	csrw	sstatus,a5
    80007228:	00813083          	ld	ra,8(sp)
    8000722c:	00013403          	ld	s0,0(sp)
    80007230:	01010113          	addi	sp,sp,16
    80007234:	00008067          	ret
    80007238:	00001517          	auipc	a0,0x1
    8000723c:	52050513          	addi	a0,a0,1312 # 80008758 <digits+0x70>
    80007240:	fffff097          	auipc	ra,0xfffff
    80007244:	f2c080e7          	jalr	-212(ra) # 8000616c <panic>
    80007248:	00001517          	auipc	a0,0x1
    8000724c:	4f050513          	addi	a0,a0,1264 # 80008738 <digits+0x50>
    80007250:	fffff097          	auipc	ra,0xfffff
    80007254:	f1c080e7          	jalr	-228(ra) # 8000616c <panic>

0000000080007258 <__memset>:
    80007258:	ff010113          	addi	sp,sp,-16
    8000725c:	00813423          	sd	s0,8(sp)
    80007260:	01010413          	addi	s0,sp,16
    80007264:	1a060e63          	beqz	a2,80007420 <__memset+0x1c8>
    80007268:	40a007b3          	neg	a5,a0
    8000726c:	0077f793          	andi	a5,a5,7
    80007270:	00778693          	addi	a3,a5,7
    80007274:	00b00813          	li	a6,11
    80007278:	0ff5f593          	andi	a1,a1,255
    8000727c:	fff6071b          	addiw	a4,a2,-1
    80007280:	1b06e663          	bltu	a3,a6,8000742c <__memset+0x1d4>
    80007284:	1cd76463          	bltu	a4,a3,8000744c <__memset+0x1f4>
    80007288:	1a078e63          	beqz	a5,80007444 <__memset+0x1ec>
    8000728c:	00b50023          	sb	a1,0(a0)
    80007290:	00100713          	li	a4,1
    80007294:	1ae78463          	beq	a5,a4,8000743c <__memset+0x1e4>
    80007298:	00b500a3          	sb	a1,1(a0)
    8000729c:	00200713          	li	a4,2
    800072a0:	1ae78a63          	beq	a5,a4,80007454 <__memset+0x1fc>
    800072a4:	00b50123          	sb	a1,2(a0)
    800072a8:	00300713          	li	a4,3
    800072ac:	18e78463          	beq	a5,a4,80007434 <__memset+0x1dc>
    800072b0:	00b501a3          	sb	a1,3(a0)
    800072b4:	00400713          	li	a4,4
    800072b8:	1ae78263          	beq	a5,a4,8000745c <__memset+0x204>
    800072bc:	00b50223          	sb	a1,4(a0)
    800072c0:	00500713          	li	a4,5
    800072c4:	1ae78063          	beq	a5,a4,80007464 <__memset+0x20c>
    800072c8:	00b502a3          	sb	a1,5(a0)
    800072cc:	00700713          	li	a4,7
    800072d0:	18e79e63          	bne	a5,a4,8000746c <__memset+0x214>
    800072d4:	00b50323          	sb	a1,6(a0)
    800072d8:	00700e93          	li	t4,7
    800072dc:	00859713          	slli	a4,a1,0x8
    800072e0:	00e5e733          	or	a4,a1,a4
    800072e4:	01059e13          	slli	t3,a1,0x10
    800072e8:	01c76e33          	or	t3,a4,t3
    800072ec:	01859313          	slli	t1,a1,0x18
    800072f0:	006e6333          	or	t1,t3,t1
    800072f4:	02059893          	slli	a7,a1,0x20
    800072f8:	40f60e3b          	subw	t3,a2,a5
    800072fc:	011368b3          	or	a7,t1,a7
    80007300:	02859813          	slli	a6,a1,0x28
    80007304:	0108e833          	or	a6,a7,a6
    80007308:	03059693          	slli	a3,a1,0x30
    8000730c:	003e589b          	srliw	a7,t3,0x3
    80007310:	00d866b3          	or	a3,a6,a3
    80007314:	03859713          	slli	a4,a1,0x38
    80007318:	00389813          	slli	a6,a7,0x3
    8000731c:	00f507b3          	add	a5,a0,a5
    80007320:	00e6e733          	or	a4,a3,a4
    80007324:	000e089b          	sext.w	a7,t3
    80007328:	00f806b3          	add	a3,a6,a5
    8000732c:	00e7b023          	sd	a4,0(a5)
    80007330:	00878793          	addi	a5,a5,8
    80007334:	fed79ce3          	bne	a5,a3,8000732c <__memset+0xd4>
    80007338:	ff8e7793          	andi	a5,t3,-8
    8000733c:	0007871b          	sext.w	a4,a5
    80007340:	01d787bb          	addw	a5,a5,t4
    80007344:	0ce88e63          	beq	a7,a4,80007420 <__memset+0x1c8>
    80007348:	00f50733          	add	a4,a0,a5
    8000734c:	00b70023          	sb	a1,0(a4)
    80007350:	0017871b          	addiw	a4,a5,1
    80007354:	0cc77663          	bgeu	a4,a2,80007420 <__memset+0x1c8>
    80007358:	00e50733          	add	a4,a0,a4
    8000735c:	00b70023          	sb	a1,0(a4)
    80007360:	0027871b          	addiw	a4,a5,2
    80007364:	0ac77e63          	bgeu	a4,a2,80007420 <__memset+0x1c8>
    80007368:	00e50733          	add	a4,a0,a4
    8000736c:	00b70023          	sb	a1,0(a4)
    80007370:	0037871b          	addiw	a4,a5,3
    80007374:	0ac77663          	bgeu	a4,a2,80007420 <__memset+0x1c8>
    80007378:	00e50733          	add	a4,a0,a4
    8000737c:	00b70023          	sb	a1,0(a4)
    80007380:	0047871b          	addiw	a4,a5,4
    80007384:	08c77e63          	bgeu	a4,a2,80007420 <__memset+0x1c8>
    80007388:	00e50733          	add	a4,a0,a4
    8000738c:	00b70023          	sb	a1,0(a4)
    80007390:	0057871b          	addiw	a4,a5,5
    80007394:	08c77663          	bgeu	a4,a2,80007420 <__memset+0x1c8>
    80007398:	00e50733          	add	a4,a0,a4
    8000739c:	00b70023          	sb	a1,0(a4)
    800073a0:	0067871b          	addiw	a4,a5,6
    800073a4:	06c77e63          	bgeu	a4,a2,80007420 <__memset+0x1c8>
    800073a8:	00e50733          	add	a4,a0,a4
    800073ac:	00b70023          	sb	a1,0(a4)
    800073b0:	0077871b          	addiw	a4,a5,7
    800073b4:	06c77663          	bgeu	a4,a2,80007420 <__memset+0x1c8>
    800073b8:	00e50733          	add	a4,a0,a4
    800073bc:	00b70023          	sb	a1,0(a4)
    800073c0:	0087871b          	addiw	a4,a5,8
    800073c4:	04c77e63          	bgeu	a4,a2,80007420 <__memset+0x1c8>
    800073c8:	00e50733          	add	a4,a0,a4
    800073cc:	00b70023          	sb	a1,0(a4)
    800073d0:	0097871b          	addiw	a4,a5,9
    800073d4:	04c77663          	bgeu	a4,a2,80007420 <__memset+0x1c8>
    800073d8:	00e50733          	add	a4,a0,a4
    800073dc:	00b70023          	sb	a1,0(a4)
    800073e0:	00a7871b          	addiw	a4,a5,10
    800073e4:	02c77e63          	bgeu	a4,a2,80007420 <__memset+0x1c8>
    800073e8:	00e50733          	add	a4,a0,a4
    800073ec:	00b70023          	sb	a1,0(a4)
    800073f0:	00b7871b          	addiw	a4,a5,11
    800073f4:	02c77663          	bgeu	a4,a2,80007420 <__memset+0x1c8>
    800073f8:	00e50733          	add	a4,a0,a4
    800073fc:	00b70023          	sb	a1,0(a4)
    80007400:	00c7871b          	addiw	a4,a5,12
    80007404:	00c77e63          	bgeu	a4,a2,80007420 <__memset+0x1c8>
    80007408:	00e50733          	add	a4,a0,a4
    8000740c:	00b70023          	sb	a1,0(a4)
    80007410:	00d7879b          	addiw	a5,a5,13
    80007414:	00c7f663          	bgeu	a5,a2,80007420 <__memset+0x1c8>
    80007418:	00f507b3          	add	a5,a0,a5
    8000741c:	00b78023          	sb	a1,0(a5)
    80007420:	00813403          	ld	s0,8(sp)
    80007424:	01010113          	addi	sp,sp,16
    80007428:	00008067          	ret
    8000742c:	00b00693          	li	a3,11
    80007430:	e55ff06f          	j	80007284 <__memset+0x2c>
    80007434:	00300e93          	li	t4,3
    80007438:	ea5ff06f          	j	800072dc <__memset+0x84>
    8000743c:	00100e93          	li	t4,1
    80007440:	e9dff06f          	j	800072dc <__memset+0x84>
    80007444:	00000e93          	li	t4,0
    80007448:	e95ff06f          	j	800072dc <__memset+0x84>
    8000744c:	00000793          	li	a5,0
    80007450:	ef9ff06f          	j	80007348 <__memset+0xf0>
    80007454:	00200e93          	li	t4,2
    80007458:	e85ff06f          	j	800072dc <__memset+0x84>
    8000745c:	00400e93          	li	t4,4
    80007460:	e7dff06f          	j	800072dc <__memset+0x84>
    80007464:	00500e93          	li	t4,5
    80007468:	e75ff06f          	j	800072dc <__memset+0x84>
    8000746c:	00600e93          	li	t4,6
    80007470:	e6dff06f          	j	800072dc <__memset+0x84>

0000000080007474 <__memmove>:
    80007474:	ff010113          	addi	sp,sp,-16
    80007478:	00813423          	sd	s0,8(sp)
    8000747c:	01010413          	addi	s0,sp,16
    80007480:	0e060863          	beqz	a2,80007570 <__memmove+0xfc>
    80007484:	fff6069b          	addiw	a3,a2,-1
    80007488:	0006881b          	sext.w	a6,a3
    8000748c:	0ea5e863          	bltu	a1,a0,8000757c <__memmove+0x108>
    80007490:	00758713          	addi	a4,a1,7
    80007494:	00a5e7b3          	or	a5,a1,a0
    80007498:	40a70733          	sub	a4,a4,a0
    8000749c:	0077f793          	andi	a5,a5,7
    800074a0:	00f73713          	sltiu	a4,a4,15
    800074a4:	00174713          	xori	a4,a4,1
    800074a8:	0017b793          	seqz	a5,a5
    800074ac:	00e7f7b3          	and	a5,a5,a4
    800074b0:	10078863          	beqz	a5,800075c0 <__memmove+0x14c>
    800074b4:	00900793          	li	a5,9
    800074b8:	1107f463          	bgeu	a5,a6,800075c0 <__memmove+0x14c>
    800074bc:	0036581b          	srliw	a6,a2,0x3
    800074c0:	fff8081b          	addiw	a6,a6,-1
    800074c4:	02081813          	slli	a6,a6,0x20
    800074c8:	01d85893          	srli	a7,a6,0x1d
    800074cc:	00858813          	addi	a6,a1,8
    800074d0:	00058793          	mv	a5,a1
    800074d4:	00050713          	mv	a4,a0
    800074d8:	01088833          	add	a6,a7,a6
    800074dc:	0007b883          	ld	a7,0(a5)
    800074e0:	00878793          	addi	a5,a5,8
    800074e4:	00870713          	addi	a4,a4,8
    800074e8:	ff173c23          	sd	a7,-8(a4)
    800074ec:	ff0798e3          	bne	a5,a6,800074dc <__memmove+0x68>
    800074f0:	ff867713          	andi	a4,a2,-8
    800074f4:	02071793          	slli	a5,a4,0x20
    800074f8:	0207d793          	srli	a5,a5,0x20
    800074fc:	00f585b3          	add	a1,a1,a5
    80007500:	40e686bb          	subw	a3,a3,a4
    80007504:	00f507b3          	add	a5,a0,a5
    80007508:	06e60463          	beq	a2,a4,80007570 <__memmove+0xfc>
    8000750c:	0005c703          	lbu	a4,0(a1)
    80007510:	00e78023          	sb	a4,0(a5)
    80007514:	04068e63          	beqz	a3,80007570 <__memmove+0xfc>
    80007518:	0015c603          	lbu	a2,1(a1)
    8000751c:	00100713          	li	a4,1
    80007520:	00c780a3          	sb	a2,1(a5)
    80007524:	04e68663          	beq	a3,a4,80007570 <__memmove+0xfc>
    80007528:	0025c603          	lbu	a2,2(a1)
    8000752c:	00200713          	li	a4,2
    80007530:	00c78123          	sb	a2,2(a5)
    80007534:	02e68e63          	beq	a3,a4,80007570 <__memmove+0xfc>
    80007538:	0035c603          	lbu	a2,3(a1)
    8000753c:	00300713          	li	a4,3
    80007540:	00c781a3          	sb	a2,3(a5)
    80007544:	02e68663          	beq	a3,a4,80007570 <__memmove+0xfc>
    80007548:	0045c603          	lbu	a2,4(a1)
    8000754c:	00400713          	li	a4,4
    80007550:	00c78223          	sb	a2,4(a5)
    80007554:	00e68e63          	beq	a3,a4,80007570 <__memmove+0xfc>
    80007558:	0055c603          	lbu	a2,5(a1)
    8000755c:	00500713          	li	a4,5
    80007560:	00c782a3          	sb	a2,5(a5)
    80007564:	00e68663          	beq	a3,a4,80007570 <__memmove+0xfc>
    80007568:	0065c703          	lbu	a4,6(a1)
    8000756c:	00e78323          	sb	a4,6(a5)
    80007570:	00813403          	ld	s0,8(sp)
    80007574:	01010113          	addi	sp,sp,16
    80007578:	00008067          	ret
    8000757c:	02061713          	slli	a4,a2,0x20
    80007580:	02075713          	srli	a4,a4,0x20
    80007584:	00e587b3          	add	a5,a1,a4
    80007588:	f0f574e3          	bgeu	a0,a5,80007490 <__memmove+0x1c>
    8000758c:	02069613          	slli	a2,a3,0x20
    80007590:	02065613          	srli	a2,a2,0x20
    80007594:	fff64613          	not	a2,a2
    80007598:	00e50733          	add	a4,a0,a4
    8000759c:	00c78633          	add	a2,a5,a2
    800075a0:	fff7c683          	lbu	a3,-1(a5)
    800075a4:	fff78793          	addi	a5,a5,-1
    800075a8:	fff70713          	addi	a4,a4,-1
    800075ac:	00d70023          	sb	a3,0(a4)
    800075b0:	fec798e3          	bne	a5,a2,800075a0 <__memmove+0x12c>
    800075b4:	00813403          	ld	s0,8(sp)
    800075b8:	01010113          	addi	sp,sp,16
    800075bc:	00008067          	ret
    800075c0:	02069713          	slli	a4,a3,0x20
    800075c4:	02075713          	srli	a4,a4,0x20
    800075c8:	00170713          	addi	a4,a4,1
    800075cc:	00e50733          	add	a4,a0,a4
    800075d0:	00050793          	mv	a5,a0
    800075d4:	0005c683          	lbu	a3,0(a1)
    800075d8:	00178793          	addi	a5,a5,1
    800075dc:	00158593          	addi	a1,a1,1
    800075e0:	fed78fa3          	sb	a3,-1(a5)
    800075e4:	fee798e3          	bne	a5,a4,800075d4 <__memmove+0x160>
    800075e8:	f89ff06f          	j	80007570 <__memmove+0xfc>
	...

Disassembly of section .user:

000000008000b6a8 <copy_and_swap-0x958>:
	...

000000008000c000 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    8000c000:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    8000c004:	00b29a63          	bne	t0,a1,8000c018 <fail>
    sc.w t0, a2, (a0)      # Try to update.
    8000c008:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    8000c00c:	fe029ae3          	bnez	t0,8000c000 <copy_and_swap>
    li a0, 0               # Set return to success.
    8000c010:	00000513          	li	a0,0
    jr ra                  # Return.
    8000c014:	00008067          	ret

000000008000c018 <fail>:
    fail:
    li a0, 1               # Set return to failure.
    8000c018:	00100513          	li	a0,1
    8000c01c:	00008067          	ret

000000008000c020 <_Z9mem_allocm>:
//

#include "../../h/syscall_c.hpp"

void* mem_alloc(size_t size)
{
    8000c020:	ff010113          	addi	sp,sp,-16
    8000c024:	00813423          	sd	s0,8(sp)
    8000c028:	01010413          	addi	s0,sp,16
    //prepare for system call
    uint64 numBlocks = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    8000c02c:	03f50513          	addi	a0,a0,63
    8000c030:	00655513          	srli	a0,a0,0x6
    __asm__ volatile("mv a1, %0" :  : "r"(numBlocks));
    8000c034:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 1");
    8000c038:	00100513          	li	a0,1

    __asm__ volatile("ecall"); // system call
    8000c03c:	00000073          	ecall

    //get the address
    uint64 allocatedAddr = 0x01;
    __asm__ volatile("mv %0, a0" : "=r"(allocatedAddr));
    8000c040:	00050513          	mv	a0,a0

    if(allocatedAddr == 0)
        return nullptr;

    return (void*)allocatedAddr;
}
    8000c044:	00813403          	ld	s0,8(sp)
    8000c048:	01010113          	addi	sp,sp,16
    8000c04c:	00008067          	ret

000000008000c050 <_Z8mem_freePv>:

int mem_free(void* p)
{
    8000c050:	ff010113          	addi	sp,sp,-16
    8000c054:	00813423          	sd	s0,8(sp)
    8000c058:	01010413          	addi	s0,sp,16
    //prepare for system call
    uint64 addrFree = (uint64)p;
    __asm__ volatile("mv a1, %0" :  : "r"(addrFree));
    8000c05c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 2");
    8000c060:	00200513          	li	a0,2

    __asm__ volatile("ecall"); // system call
    8000c064:	00000073          	ecall

    //get the result of system call
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000c068:	00050513          	mv	a0,a0

    return result;
}
    8000c06c:	0005051b          	sext.w	a0,a0
    8000c070:	00813403          	ld	s0,8(sp)
    8000c074:	01010113          	addi	sp,sp,16
    8000c078:	00008067          	ret

000000008000c07c <_Z13thread_createPP7_threadPFvPvES2_>:

int thread_create(thread_t* handle, void (*start_routine)(void*), void* args)
{
    8000c07c:	fd010113          	addi	sp,sp,-48
    8000c080:	02113423          	sd	ra,40(sp)
    8000c084:	02813023          	sd	s0,32(sp)
    8000c088:	00913c23          	sd	s1,24(sp)
    8000c08c:	01213823          	sd	s2,16(sp)
    8000c090:	01313423          	sd	s3,8(sp)
    8000c094:	03010413          	addi	s0,sp,48
    8000c098:	00050493          	mv	s1,a0
    8000c09c:	00058913          	mv	s2,a1
    8000c0a0:	00060993          	mv	s3,a2
    uint64 handleLocal = (uint64)handle;
    uint64 startRLocal = (uint64)start_routine;
    uint64 argsLocal = (uint64)args;
    uint64 opLocal = 0x11;

    void * stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    8000c0a4:	00001537          	lui	a0,0x1
    8000c0a8:	00000097          	auipc	ra,0x0
    8000c0ac:	f78080e7          	jalr	-136(ra) # 8000c020 <_Z9mem_allocm>
    uint64 stackPointerLocal = (uint64)stack_space;
    if(stack_space == nullptr)
    8000c0b0:	04050a63          	beqz	a0,8000c104 <_Z13thread_createPP7_threadPFvPvES2_+0x88>
        return -1;

    //initialize registers
    __asm__ volatile("mv a4, %0" :  : "r"((uint64)stackPointerLocal));
    8000c0b4:	00050713          	mv	a4,a0
    //__asm__ volatile("mv a4, %0" :  : "r"((uint64)1));
    __asm__ volatile("mv a3, %0" :  : "r"((uint64)argsLocal));
    8000c0b8:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)startRLocal));
    8000c0bc:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handleLocal));
    8000c0c0:	00048593          	mv	a1,s1
    __asm__ volatile("mv a0, %0" :  : "r"((uint64)opLocal));
    8000c0c4:	01100793          	li	a5,17
    8000c0c8:	00078513          	mv	a0,a5


    __asm__ volatile("ecall");
    8000c0cc:	00000073          	ecall

    //get the result
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000c0d0:	00050493          	mv	s1,a0

    if(result != 0)
    8000c0d4:	02049263          	bnez	s1,8000c0f8 <_Z13thread_createPP7_threadPFvPvES2_+0x7c>
    {
        mem_free(stack_space);
    }

    return result;
    8000c0d8:	0004851b          	sext.w	a0,s1
}
    8000c0dc:	02813083          	ld	ra,40(sp)
    8000c0e0:	02013403          	ld	s0,32(sp)
    8000c0e4:	01813483          	ld	s1,24(sp)
    8000c0e8:	01013903          	ld	s2,16(sp)
    8000c0ec:	00813983          	ld	s3,8(sp)
    8000c0f0:	03010113          	addi	sp,sp,48
    8000c0f4:	00008067          	ret
        mem_free(stack_space);
    8000c0f8:	00000097          	auipc	ra,0x0
    8000c0fc:	f58080e7          	jalr	-168(ra) # 8000c050 <_Z8mem_freePv>
    8000c100:	fd9ff06f          	j	8000c0d8 <_Z13thread_createPP7_threadPFvPvES2_+0x5c>
        return -1;
    8000c104:	fff00513          	li	a0,-1
    8000c108:	fd5ff06f          	j	8000c0dc <_Z13thread_createPP7_threadPFvPvES2_+0x60>

000000008000c10c <_Z15thread_dispatchv>:

void thread_dispatch()
{
    8000c10c:	ff010113          	addi	sp,sp,-16
    8000c110:	00813423          	sd	s0,8(sp)
    8000c114:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    8000c118:	01300513          	li	a0,19
    __asm__ volatile("ecall");
    8000c11c:	00000073          	ecall
}
    8000c120:	00813403          	ld	s0,8(sp)
    8000c124:	01010113          	addi	sp,sp,16
    8000c128:	00008067          	ret

000000008000c12c <_Z11thread_exitv>:

int thread_exit()
{
    8000c12c:	ff010113          	addi	sp,sp,-16
    8000c130:	00813423          	sd	s0,8(sp)
    8000c134:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x12");
    8000c138:	01200513          	li	a0,18

    __asm__ volatile("ecall");
    8000c13c:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000c140:	00050513          	mv	a0,a0
    return result;
}
    8000c144:	0005051b          	sext.w	a0,a0
    8000c148:	00813403          	ld	s0,8(sp)
    8000c14c:	01010113          	addi	sp,sp,16
    8000c150:	00008067          	ret

000000008000c154 <_Z8sem_openPP4_semj>:

int sem_open(sem_t* handle, unsigned int x)
{
    8000c154:	ff010113          	addi	sp,sp,-16
    8000c158:	00813423          	sd	s0,8(sp)
    8000c15c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)x));
    8000c160:	02059593          	slli	a1,a1,0x20
    8000c164:	0205d593          	srli	a1,a1,0x20
    8000c168:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    8000c16c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x21");
    8000c170:	02100513          	li	a0,33

    __asm__ volatile("ecall");
    8000c174:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000c178:	00050513          	mv	a0,a0
    return result;
}
    8000c17c:	0005051b          	sext.w	a0,a0
    8000c180:	00813403          	ld	s0,8(sp)
    8000c184:	01010113          	addi	sp,sp,16
    8000c188:	00008067          	ret

000000008000c18c <_Z9sem_closeP4_sem>:


int sem_close(sem_t handle)
{
    8000c18c:	ff010113          	addi	sp,sp,-16
    8000c190:	00813423          	sd	s0,8(sp)
    8000c194:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    8000c198:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x22");
    8000c19c:	02200513          	li	a0,34

    __asm__ volatile("ecall");
    8000c1a0:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000c1a4:	00050513          	mv	a0,a0
    return result;
}
    8000c1a8:	0005051b          	sext.w	a0,a0
    8000c1ac:	00813403          	ld	s0,8(sp)
    8000c1b0:	01010113          	addi	sp,sp,16
    8000c1b4:	00008067          	ret

000000008000c1b8 <_Z8sem_waitP4_sem>:

int sem_wait(sem_t id)
{
    8000c1b8:	ff010113          	addi	sp,sp,-16
    8000c1bc:	00813423          	sd	s0,8(sp)
    8000c1c0:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)id));
    8000c1c4:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x23");
    8000c1c8:	02300513          	li	a0,35

    __asm__ volatile("ecall");
    8000c1cc:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000c1d0:	00050513          	mv	a0,a0
    return result;
}
    8000c1d4:	0005051b          	sext.w	a0,a0
    8000c1d8:	00813403          	ld	s0,8(sp)
    8000c1dc:	01010113          	addi	sp,sp,16
    8000c1e0:	00008067          	ret

000000008000c1e4 <_Z10sem_signalP4_sem>:

int sem_signal(sem_t id)
{
    8000c1e4:	ff010113          	addi	sp,sp,-16
    8000c1e8:	00813423          	sd	s0,8(sp)
    8000c1ec:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)id));
    8000c1f0:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x24");
    8000c1f4:	02400513          	li	a0,36

    __asm__ volatile("ecall");
    8000c1f8:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000c1fc:	00050513          	mv	a0,a0
    return result;
}
    8000c200:	0005051b          	sext.w	a0,a0
    8000c204:	00813403          	ld	s0,8(sp)
    8000c208:	01010113          	addi	sp,sp,16
    8000c20c:	00008067          	ret

000000008000c210 <_Z10time_sleepm>:

int time_sleep(uint64 time)
{
    8000c210:	ff010113          	addi	sp,sp,-16
    8000c214:	00813423          	sd	s0,8(sp)
    8000c218:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)time));
    8000c21c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x31");
    8000c220:	03100513          	li	a0,49

    __asm__ volatile("ecall");
    8000c224:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000c228:	00050513          	mv	a0,a0
    return result;
}
    8000c22c:	0005051b          	sext.w	a0,a0
    8000c230:	00813403          	ld	s0,8(sp)
    8000c234:	01010113          	addi	sp,sp,16
    8000c238:	00008067          	ret

000000008000c23c <_Z12thread_startPv>:

int thread_start(void* p)
{
    8000c23c:	ff010113          	addi	sp,sp,-16
    8000c240:	00813423          	sd	s0,8(sp)
    8000c244:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)p));
    8000c248:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x15");
    8000c24c:	01500513          	li	a0,21

    __asm__ volatile("ecall");
    8000c250:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000c254:	00050513          	mv	a0,a0
    return result;
}
    8000c258:	0005051b          	sext.w	a0,a0
    8000c25c:	00813403          	ld	s0,8(sp)
    8000c260:	01010113          	addi	sp,sp,16
    8000c264:	00008067          	ret

000000008000c268 <_Z15thread_make_pcbPP7_threadPFvPvES2_>:

int thread_make_pcb(thread_t* handle, void(*start_routine)(void*), void *arg)
{
    8000c268:	fd010113          	addi	sp,sp,-48
    8000c26c:	02113423          	sd	ra,40(sp)
    8000c270:	02813023          	sd	s0,32(sp)
    8000c274:	00913c23          	sd	s1,24(sp)
    8000c278:	01213823          	sd	s2,16(sp)
    8000c27c:	01313423          	sd	s3,8(sp)
    8000c280:	03010413          	addi	s0,sp,48
    8000c284:	00050493          	mv	s1,a0
    8000c288:	00058913          	mv	s2,a1
    8000c28c:	00060993          	mv	s3,a2
    uint64 handleLocal = (uint64)handle;
    uint64 startRLocal = (uint64)start_routine;
    uint64 argsLocal = (uint64)arg;
    uint64 opLocal = 0x14;

    void * stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    8000c290:	00001537          	lui	a0,0x1
    8000c294:	00000097          	auipc	ra,0x0
    8000c298:	d8c080e7          	jalr	-628(ra) # 8000c020 <_Z9mem_allocm>
    uint64 stackPointerLocal = (uint64)stack_space;
    if(stack_space == 0)
    8000c29c:	04050a63          	beqz	a0,8000c2f0 <_Z15thread_make_pcbPP7_threadPFvPvES2_+0x88>
        return -1;

    //initialize registers
    __asm__ volatile("mv a4, %0" :  : "r"((uint64)stackPointerLocal));
    8000c2a0:	00050713          	mv	a4,a0
    //__asm__ volatile("mv a4, %0" :  : "r"((uint64)1));
    __asm__ volatile("mv a3, %0" :  : "r"((uint64)argsLocal));
    8000c2a4:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)startRLocal));
    8000c2a8:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handleLocal));
    8000c2ac:	00048593          	mv	a1,s1
    __asm__ volatile("mv a0, %0" :  : "r"((uint64)opLocal));
    8000c2b0:	01400793          	li	a5,20
    8000c2b4:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    8000c2b8:	00000073          	ecall

    //get the result
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000c2bc:	00050493          	mv	s1,a0

    if(result != 0)
    8000c2c0:	02049263          	bnez	s1,8000c2e4 <_Z15thread_make_pcbPP7_threadPFvPvES2_+0x7c>
    {
        mem_free(stack_space);
    }

    return result;
    8000c2c4:	0004851b          	sext.w	a0,s1
}
    8000c2c8:	02813083          	ld	ra,40(sp)
    8000c2cc:	02013403          	ld	s0,32(sp)
    8000c2d0:	01813483          	ld	s1,24(sp)
    8000c2d4:	01013903          	ld	s2,16(sp)
    8000c2d8:	00813983          	ld	s3,8(sp)
    8000c2dc:	03010113          	addi	sp,sp,48
    8000c2e0:	00008067          	ret
        mem_free(stack_space);
    8000c2e4:	00000097          	auipc	ra,0x0
    8000c2e8:	d6c080e7          	jalr	-660(ra) # 8000c050 <_Z8mem_freePv>
    8000c2ec:	fd9ff06f          	j	8000c2c4 <_Z15thread_make_pcbPP7_threadPFvPvES2_+0x5c>
        return -1;
    8000c2f0:	fff00513          	li	a0,-1
    8000c2f4:	fd5ff06f          	j	8000c2c8 <_Z15thread_make_pcbPP7_threadPFvPvES2_+0x60>

000000008000c2f8 <_Z4getcv>:

char getc()
{
    8000c2f8:	ff010113          	addi	sp,sp,-16
    8000c2fc:	00813423          	sd	s0,8(sp)
    8000c300:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x41");
    8000c304:	04100513          	li	a0,65

    __asm__ volatile("ecall");
    8000c308:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000c30c:	00050513          	mv	a0,a0
    return (char)result;
}
    8000c310:	0ff57513          	andi	a0,a0,255
    8000c314:	00813403          	ld	s0,8(sp)
    8000c318:	01010113          	addi	sp,sp,16
    8000c31c:	00008067          	ret

000000008000c320 <_Z4putcc>:

void putc(char c)
{
    8000c320:	ff010113          	addi	sp,sp,-16
    8000c324:	00813423          	sd	s0,8(sp)
    8000c328:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)c));
    8000c32c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x42");
    8000c330:	04200513          	li	a0,66
    __asm__ volatile("ecall");
    8000c334:	00000073          	ecall
}
    8000c338:	00813403          	ld	s0,8(sp)
    8000c33c:	01010113          	addi	sp,sp,16
    8000c340:	00008067          	ret

000000008000c344 <_Z17thread_delete_pcbP7_thread>:
//    __asm__ volatile("mv %0, a0" : "=r"(result));
//    return (char)result;
//}

int thread_delete_pcb(thread_t handle)
{
    8000c344:	ff010113          	addi	sp,sp,-16
    8000c348:	00813423          	sd	s0,8(sp)
    8000c34c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    8000c350:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x16");
    8000c354:	01600513          	li	a0,22
    __asm__ volatile("ecall");
    8000c358:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000c35c:	00050513          	mv	a0,a0
    return (char)result;
}
    8000c360:	0ff57513          	andi	a0,a0,255
    8000c364:	00813403          	ld	s0,8(sp)
    8000c368:	01010113          	addi	sp,sp,16
    8000c36c:	00008067          	ret

000000008000c370 <_ZN7_threaddlEPv>:
//

#include "../../h/_thread.hpp"
#include "../../h/syscall_c.hpp"

void _thread::operator delete(void *p) {
    8000c370:	ff010113          	addi	sp,sp,-16
    8000c374:	00113423          	sd	ra,8(sp)
    8000c378:	00813023          	sd	s0,0(sp)
    8000c37c:	01010413          	addi	s0,sp,16
    thread_delete_pcb((thread_t)p);
    8000c380:	00000097          	auipc	ra,0x0
    8000c384:	fc4080e7          	jalr	-60(ra) # 8000c344 <_Z17thread_delete_pcbP7_thread>
    8000c388:	00813083          	ld	ra,8(sp)
    8000c38c:	00013403          	ld	s0,0(sp)
    8000c390:	01010113          	addi	sp,sp,16
    8000c394:	00008067          	ret

000000008000c398 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    8000c398:	fe010113          	addi	sp,sp,-32
    8000c39c:	00113c23          	sd	ra,24(sp)
    8000c3a0:	00813823          	sd	s0,16(sp)
    8000c3a4:	00913423          	sd	s1,8(sp)
    8000c3a8:	02010413          	addi	s0,sp,32
    8000c3ac:	00050493          	mv	s1,a0
    LOCK();
    8000c3b0:	00100613          	li	a2,1
    8000c3b4:	00000593          	li	a1,0
    8000c3b8:	00002517          	auipc	a0,0x2
    8000c3bc:	d0050513          	addi	a0,a0,-768 # 8000e0b8 <lockPrint>
    8000c3c0:	00000097          	auipc	ra,0x0
    8000c3c4:	c40080e7          	jalr	-960(ra) # 8000c000 <copy_and_swap>
    8000c3c8:	fe0514e3          	bnez	a0,8000c3b0 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    8000c3cc:	0004c503          	lbu	a0,0(s1)
    8000c3d0:	00050a63          	beqz	a0,8000c3e4 <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    8000c3d4:	00000097          	auipc	ra,0x0
    8000c3d8:	f4c080e7          	jalr	-180(ra) # 8000c320 <_Z4putcc>
        string++;
    8000c3dc:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    8000c3e0:	fedff06f          	j	8000c3cc <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    8000c3e4:	00000613          	li	a2,0
    8000c3e8:	00100593          	li	a1,1
    8000c3ec:	00002517          	auipc	a0,0x2
    8000c3f0:	ccc50513          	addi	a0,a0,-820 # 8000e0b8 <lockPrint>
    8000c3f4:	00000097          	auipc	ra,0x0
    8000c3f8:	c0c080e7          	jalr	-1012(ra) # 8000c000 <copy_and_swap>
    8000c3fc:	fe0514e3          	bnez	a0,8000c3e4 <_Z11printStringPKc+0x4c>
}
    8000c400:	01813083          	ld	ra,24(sp)
    8000c404:	01013403          	ld	s0,16(sp)
    8000c408:	00813483          	ld	s1,8(sp)
    8000c40c:	02010113          	addi	sp,sp,32
    8000c410:	00008067          	ret

000000008000c414 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    8000c414:	fd010113          	addi	sp,sp,-48
    8000c418:	02113423          	sd	ra,40(sp)
    8000c41c:	02813023          	sd	s0,32(sp)
    8000c420:	00913c23          	sd	s1,24(sp)
    8000c424:	01213823          	sd	s2,16(sp)
    8000c428:	01313423          	sd	s3,8(sp)
    8000c42c:	01413023          	sd	s4,0(sp)
    8000c430:	03010413          	addi	s0,sp,48
    8000c434:	00050993          	mv	s3,a0
    8000c438:	00058a13          	mv	s4,a1
    LOCK();
    8000c43c:	00100613          	li	a2,1
    8000c440:	00000593          	li	a1,0
    8000c444:	00002517          	auipc	a0,0x2
    8000c448:	c7450513          	addi	a0,a0,-908 # 8000e0b8 <lockPrint>
    8000c44c:	00000097          	auipc	ra,0x0
    8000c450:	bb4080e7          	jalr	-1100(ra) # 8000c000 <copy_and_swap>
    8000c454:	fe0514e3          	bnez	a0,8000c43c <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    8000c458:	00000913          	li	s2,0
    8000c45c:	00090493          	mv	s1,s2
    8000c460:	0019091b          	addiw	s2,s2,1
    8000c464:	03495a63          	bge	s2,s4,8000c498 <_Z9getStringPci+0x84>
        cc = getc();
    8000c468:	00000097          	auipc	ra,0x0
    8000c46c:	e90080e7          	jalr	-368(ra) # 8000c2f8 <_Z4getcv>
        if(cc < 1)
    8000c470:	02050463          	beqz	a0,8000c498 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    8000c474:	009984b3          	add	s1,s3,s1
    8000c478:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    8000c47c:	00a00793          	li	a5,10
    8000c480:	00f50a63          	beq	a0,a5,8000c494 <_Z9getStringPci+0x80>
    8000c484:	00d00793          	li	a5,13
    8000c488:	fcf51ae3          	bne	a0,a5,8000c45c <_Z9getStringPci+0x48>
        buf[i++] = c;
    8000c48c:	00090493          	mv	s1,s2
    8000c490:	0080006f          	j	8000c498 <_Z9getStringPci+0x84>
    8000c494:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    8000c498:	009984b3          	add	s1,s3,s1
    8000c49c:	00048023          	sb	zero,0(s1)

    UNLOCK();
    8000c4a0:	00000613          	li	a2,0
    8000c4a4:	00100593          	li	a1,1
    8000c4a8:	00002517          	auipc	a0,0x2
    8000c4ac:	c1050513          	addi	a0,a0,-1008 # 8000e0b8 <lockPrint>
    8000c4b0:	00000097          	auipc	ra,0x0
    8000c4b4:	b50080e7          	jalr	-1200(ra) # 8000c000 <copy_and_swap>
    8000c4b8:	fe0514e3          	bnez	a0,8000c4a0 <_Z9getStringPci+0x8c>
    return buf;
}
    8000c4bc:	00098513          	mv	a0,s3
    8000c4c0:	02813083          	ld	ra,40(sp)
    8000c4c4:	02013403          	ld	s0,32(sp)
    8000c4c8:	01813483          	ld	s1,24(sp)
    8000c4cc:	01013903          	ld	s2,16(sp)
    8000c4d0:	00813983          	ld	s3,8(sp)
    8000c4d4:	00013a03          	ld	s4,0(sp)
    8000c4d8:	03010113          	addi	sp,sp,48
    8000c4dc:	00008067          	ret

000000008000c4e0 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    8000c4e0:	ff010113          	addi	sp,sp,-16
    8000c4e4:	00813423          	sd	s0,8(sp)
    8000c4e8:	01010413          	addi	s0,sp,16
    8000c4ec:	00050693          	mv	a3,a0
    int n;

    n = 0;
    8000c4f0:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    8000c4f4:	0006c603          	lbu	a2,0(a3)
    8000c4f8:	fd06071b          	addiw	a4,a2,-48
    8000c4fc:	0ff77713          	andi	a4,a4,255
    8000c500:	00900793          	li	a5,9
    8000c504:	02e7e063          	bltu	a5,a4,8000c524 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    8000c508:	0025179b          	slliw	a5,a0,0x2
    8000c50c:	00a787bb          	addw	a5,a5,a0
    8000c510:	0017979b          	slliw	a5,a5,0x1
    8000c514:	00168693          	addi	a3,a3,1
    8000c518:	00c787bb          	addw	a5,a5,a2
    8000c51c:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    8000c520:	fd5ff06f          	j	8000c4f4 <_Z11stringToIntPKc+0x14>
    return n;
}
    8000c524:	00813403          	ld	s0,8(sp)
    8000c528:	01010113          	addi	sp,sp,16
    8000c52c:	00008067          	ret

000000008000c530 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    8000c530:	fc010113          	addi	sp,sp,-64
    8000c534:	02113c23          	sd	ra,56(sp)
    8000c538:	02813823          	sd	s0,48(sp)
    8000c53c:	02913423          	sd	s1,40(sp)
    8000c540:	03213023          	sd	s2,32(sp)
    8000c544:	01313c23          	sd	s3,24(sp)
    8000c548:	04010413          	addi	s0,sp,64
    8000c54c:	00050493          	mv	s1,a0
    8000c550:	00058913          	mv	s2,a1
    8000c554:	00060993          	mv	s3,a2
    LOCK();
    8000c558:	00100613          	li	a2,1
    8000c55c:	00000593          	li	a1,0
    8000c560:	00002517          	auipc	a0,0x2
    8000c564:	b5850513          	addi	a0,a0,-1192 # 8000e0b8 <lockPrint>
    8000c568:	00000097          	auipc	ra,0x0
    8000c56c:	a98080e7          	jalr	-1384(ra) # 8000c000 <copy_and_swap>
    8000c570:	fe0514e3          	bnez	a0,8000c558 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    8000c574:	00098463          	beqz	s3,8000c57c <_Z8printIntiii+0x4c>
    8000c578:	0804c463          	bltz	s1,8000c600 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    8000c57c:	0004851b          	sext.w	a0,s1
    neg = 0;
    8000c580:	00000593          	li	a1,0
    }

    i = 0;
    8000c584:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    8000c588:	0009079b          	sext.w	a5,s2
    8000c58c:	0325773b          	remuw	a4,a0,s2
    8000c590:	00048613          	mv	a2,s1
    8000c594:	0014849b          	addiw	s1,s1,1
    8000c598:	02071693          	slli	a3,a4,0x20
    8000c59c:	0206d693          	srli	a3,a3,0x20
    8000c5a0:	00002717          	auipc	a4,0x2
    8000c5a4:	a8870713          	addi	a4,a4,-1400 # 8000e028 <digits>
    8000c5a8:	00d70733          	add	a4,a4,a3
    8000c5ac:	00074683          	lbu	a3,0(a4)
    8000c5b0:	fd040713          	addi	a4,s0,-48
    8000c5b4:	00c70733          	add	a4,a4,a2
    8000c5b8:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    8000c5bc:	0005071b          	sext.w	a4,a0
    8000c5c0:	0325553b          	divuw	a0,a0,s2
    8000c5c4:	fcf772e3          	bgeu	a4,a5,8000c588 <_Z8printIntiii+0x58>
    if(neg)
    8000c5c8:	00058c63          	beqz	a1,8000c5e0 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    8000c5cc:	fd040793          	addi	a5,s0,-48
    8000c5d0:	009784b3          	add	s1,a5,s1
    8000c5d4:	02d00793          	li	a5,45
    8000c5d8:	fef48823          	sb	a5,-16(s1)
    8000c5dc:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    8000c5e0:	fff4849b          	addiw	s1,s1,-1
    8000c5e4:	0204c463          	bltz	s1,8000c60c <_Z8printIntiii+0xdc>
        putc(buf[i]);
    8000c5e8:	fd040793          	addi	a5,s0,-48
    8000c5ec:	009787b3          	add	a5,a5,s1
    8000c5f0:	ff07c503          	lbu	a0,-16(a5)
    8000c5f4:	00000097          	auipc	ra,0x0
    8000c5f8:	d2c080e7          	jalr	-724(ra) # 8000c320 <_Z4putcc>
    8000c5fc:	fe5ff06f          	j	8000c5e0 <_Z8printIntiii+0xb0>
        x = -xx;
    8000c600:	4090053b          	negw	a0,s1
        neg = 1;
    8000c604:	00100593          	li	a1,1
        x = -xx;
    8000c608:	f7dff06f          	j	8000c584 <_Z8printIntiii+0x54>

    UNLOCK();
    8000c60c:	00000613          	li	a2,0
    8000c610:	00100593          	li	a1,1
    8000c614:	00002517          	auipc	a0,0x2
    8000c618:	aa450513          	addi	a0,a0,-1372 # 8000e0b8 <lockPrint>
    8000c61c:	00000097          	auipc	ra,0x0
    8000c620:	9e4080e7          	jalr	-1564(ra) # 8000c000 <copy_and_swap>
    8000c624:	fe0514e3          	bnez	a0,8000c60c <_Z8printIntiii+0xdc>
}
    8000c628:	03813083          	ld	ra,56(sp)
    8000c62c:	03013403          	ld	s0,48(sp)
    8000c630:	02813483          	ld	s1,40(sp)
    8000c634:	02013903          	ld	s2,32(sp)
    8000c638:	01813983          	ld	s3,24(sp)
    8000c63c:	04010113          	addi	sp,sp,64
    8000c640:	00008067          	ret

000000008000c644 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"
#include "printing.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    8000c644:	fd010113          	addi	sp,sp,-48
    8000c648:	02113423          	sd	ra,40(sp)
    8000c64c:	02813023          	sd	s0,32(sp)
    8000c650:	00913c23          	sd	s1,24(sp)
    8000c654:	01213823          	sd	s2,16(sp)
    8000c658:	01313423          	sd	s3,8(sp)
    8000c65c:	03010413          	addi	s0,sp,48
    8000c660:	00050493          	mv	s1,a0
    8000c664:	00058993          	mv	s3,a1
    8000c668:	0015879b          	addiw	a5,a1,1
    8000c66c:	0007851b          	sext.w	a0,a5
    8000c670:	00f4a023          	sw	a5,0(s1)
    8000c674:	0004a823          	sw	zero,16(s1)
    8000c678:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    8000c67c:	00251513          	slli	a0,a0,0x2
    8000c680:	00000097          	auipc	ra,0x0
    8000c684:	9a0080e7          	jalr	-1632(ra) # 8000c020 <_Z9mem_allocm>
    8000c688:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    8000c68c:	01000513          	li	a0,16
    8000c690:	00001097          	auipc	ra,0x1
    8000c694:	8dc080e7          	jalr	-1828(ra) # 8000cf6c <_Znwm>
    8000c698:	00050913          	mv	s2,a0
    8000c69c:	00050863          	beqz	a0,8000c6ac <_ZN9BufferCPPC1Ei+0x68>
    8000c6a0:	00000593          	li	a1,0
    8000c6a4:	00001097          	auipc	ra,0x1
    8000c6a8:	b1c080e7          	jalr	-1252(ra) # 8000d1c0 <_ZN9SemaphoreC1Ej>
    8000c6ac:	0324b023          	sd	s2,32(s1)
    spaceAvailable = new Semaphore(_cap);
    8000c6b0:	01000513          	li	a0,16
    8000c6b4:	00001097          	auipc	ra,0x1
    8000c6b8:	8b8080e7          	jalr	-1864(ra) # 8000cf6c <_Znwm>
    8000c6bc:	00050913          	mv	s2,a0
    8000c6c0:	00050863          	beqz	a0,8000c6d0 <_ZN9BufferCPPC1Ei+0x8c>
    8000c6c4:	00098593          	mv	a1,s3
    8000c6c8:	00001097          	auipc	ra,0x1
    8000c6cc:	af8080e7          	jalr	-1288(ra) # 8000d1c0 <_ZN9SemaphoreC1Ej>
    8000c6d0:	0124bc23          	sd	s2,24(s1)
    mutexHead = new Semaphore(1);
    8000c6d4:	01000513          	li	a0,16
    8000c6d8:	00001097          	auipc	ra,0x1
    8000c6dc:	894080e7          	jalr	-1900(ra) # 8000cf6c <_Znwm>
    8000c6e0:	00050913          	mv	s2,a0
    8000c6e4:	00050863          	beqz	a0,8000c6f4 <_ZN9BufferCPPC1Ei+0xb0>
    8000c6e8:	00100593          	li	a1,1
    8000c6ec:	00001097          	auipc	ra,0x1
    8000c6f0:	ad4080e7          	jalr	-1324(ra) # 8000d1c0 <_ZN9SemaphoreC1Ej>
    8000c6f4:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    8000c6f8:	01000513          	li	a0,16
    8000c6fc:	00001097          	auipc	ra,0x1
    8000c700:	870080e7          	jalr	-1936(ra) # 8000cf6c <_Znwm>
    8000c704:	00050913          	mv	s2,a0
    8000c708:	00050863          	beqz	a0,8000c718 <_ZN9BufferCPPC1Ei+0xd4>
    8000c70c:	00100593          	li	a1,1
    8000c710:	00001097          	auipc	ra,0x1
    8000c714:	ab0080e7          	jalr	-1360(ra) # 8000d1c0 <_ZN9SemaphoreC1Ej>
    8000c718:	0324b823          	sd	s2,48(s1)
}
    8000c71c:	02813083          	ld	ra,40(sp)
    8000c720:	02013403          	ld	s0,32(sp)
    8000c724:	01813483          	ld	s1,24(sp)
    8000c728:	01013903          	ld	s2,16(sp)
    8000c72c:	00813983          	ld	s3,8(sp)
    8000c730:	03010113          	addi	sp,sp,48
    8000c734:	00008067          	ret
    8000c738:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    8000c73c:	00090513          	mv	a0,s2
    8000c740:	00001097          	auipc	ra,0x1
    8000c744:	854080e7          	jalr	-1964(ra) # 8000cf94 <_ZdlPv>
    8000c748:	00048513          	mv	a0,s1
    8000c74c:	ffffd097          	auipc	ra,0xffffd
    8000c750:	43c080e7          	jalr	1084(ra) # 80009b88 <_Unwind_Resume>
    8000c754:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    8000c758:	00090513          	mv	a0,s2
    8000c75c:	00001097          	auipc	ra,0x1
    8000c760:	838080e7          	jalr	-1992(ra) # 8000cf94 <_ZdlPv>
    8000c764:	00048513          	mv	a0,s1
    8000c768:	ffffd097          	auipc	ra,0xffffd
    8000c76c:	420080e7          	jalr	1056(ra) # 80009b88 <_Unwind_Resume>
    8000c770:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    8000c774:	00090513          	mv	a0,s2
    8000c778:	00001097          	auipc	ra,0x1
    8000c77c:	81c080e7          	jalr	-2020(ra) # 8000cf94 <_ZdlPv>
    8000c780:	00048513          	mv	a0,s1
    8000c784:	ffffd097          	auipc	ra,0xffffd
    8000c788:	404080e7          	jalr	1028(ra) # 80009b88 <_Unwind_Resume>
    8000c78c:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    8000c790:	00090513          	mv	a0,s2
    8000c794:	00001097          	auipc	ra,0x1
    8000c798:	800080e7          	jalr	-2048(ra) # 8000cf94 <_ZdlPv>
    8000c79c:	00048513          	mv	a0,s1
    8000c7a0:	ffffd097          	auipc	ra,0xffffd
    8000c7a4:	3e8080e7          	jalr	1000(ra) # 80009b88 <_Unwind_Resume>

000000008000c7a8 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    8000c7a8:	fe010113          	addi	sp,sp,-32
    8000c7ac:	00113c23          	sd	ra,24(sp)
    8000c7b0:	00813823          	sd	s0,16(sp)
    8000c7b4:	00913423          	sd	s1,8(sp)
    8000c7b8:	01213023          	sd	s2,0(sp)
    8000c7bc:	02010413          	addi	s0,sp,32
    8000c7c0:	00050493          	mv	s1,a0
    8000c7c4:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    8000c7c8:	01853503          	ld	a0,24(a0)
    8000c7cc:	00001097          	auipc	ra,0x1
    8000c7d0:	9bc080e7          	jalr	-1604(ra) # 8000d188 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    8000c7d4:	0304b503          	ld	a0,48(s1)
    8000c7d8:	00001097          	auipc	ra,0x1
    8000c7dc:	9b0080e7          	jalr	-1616(ra) # 8000d188 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    8000c7e0:	0084b783          	ld	a5,8(s1)
    8000c7e4:	0144a703          	lw	a4,20(s1)
    8000c7e8:	00271713          	slli	a4,a4,0x2
    8000c7ec:	00e787b3          	add	a5,a5,a4
    8000c7f0:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    8000c7f4:	0144a783          	lw	a5,20(s1)
    8000c7f8:	0017879b          	addiw	a5,a5,1
    8000c7fc:	0004a703          	lw	a4,0(s1)
    8000c800:	02e7e7bb          	remw	a5,a5,a4
    8000c804:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    8000c808:	0304b503          	ld	a0,48(s1)
    8000c80c:	00001097          	auipc	ra,0x1
    8000c810:	a00080e7          	jalr	-1536(ra) # 8000d20c <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    8000c814:	0204b503          	ld	a0,32(s1)
    8000c818:	00001097          	auipc	ra,0x1
    8000c81c:	9f4080e7          	jalr	-1548(ra) # 8000d20c <_ZN9Semaphore6signalEv>

}
    8000c820:	01813083          	ld	ra,24(sp)
    8000c824:	01013403          	ld	s0,16(sp)
    8000c828:	00813483          	ld	s1,8(sp)
    8000c82c:	00013903          	ld	s2,0(sp)
    8000c830:	02010113          	addi	sp,sp,32
    8000c834:	00008067          	ret

000000008000c838 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    8000c838:	fe010113          	addi	sp,sp,-32
    8000c83c:	00113c23          	sd	ra,24(sp)
    8000c840:	00813823          	sd	s0,16(sp)
    8000c844:	00913423          	sd	s1,8(sp)
    8000c848:	01213023          	sd	s2,0(sp)
    8000c84c:	02010413          	addi	s0,sp,32
    8000c850:	00050493          	mv	s1,a0
    itemAvailable->wait();
    8000c854:	02053503          	ld	a0,32(a0)
    8000c858:	00001097          	auipc	ra,0x1
    8000c85c:	930080e7          	jalr	-1744(ra) # 8000d188 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    8000c860:	0284b503          	ld	a0,40(s1)
    8000c864:	00001097          	auipc	ra,0x1
    8000c868:	924080e7          	jalr	-1756(ra) # 8000d188 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    8000c86c:	0084b703          	ld	a4,8(s1)
    8000c870:	0104a783          	lw	a5,16(s1)
    8000c874:	00279693          	slli	a3,a5,0x2
    8000c878:	00d70733          	add	a4,a4,a3
    8000c87c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    8000c880:	0017879b          	addiw	a5,a5,1
    8000c884:	0004a703          	lw	a4,0(s1)
    8000c888:	02e7e7bb          	remw	a5,a5,a4
    8000c88c:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    8000c890:	0284b503          	ld	a0,40(s1)
    8000c894:	00001097          	auipc	ra,0x1
    8000c898:	978080e7          	jalr	-1672(ra) # 8000d20c <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    8000c89c:	0184b503          	ld	a0,24(s1)
    8000c8a0:	00001097          	auipc	ra,0x1
    8000c8a4:	96c080e7          	jalr	-1684(ra) # 8000d20c <_ZN9Semaphore6signalEv>

    return ret;
}
    8000c8a8:	00090513          	mv	a0,s2
    8000c8ac:	01813083          	ld	ra,24(sp)
    8000c8b0:	01013403          	ld	s0,16(sp)
    8000c8b4:	00813483          	ld	s1,8(sp)
    8000c8b8:	00013903          	ld	s2,0(sp)
    8000c8bc:	02010113          	addi	sp,sp,32
    8000c8c0:	00008067          	ret

000000008000c8c4 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    8000c8c4:	fe010113          	addi	sp,sp,-32
    8000c8c8:	00113c23          	sd	ra,24(sp)
    8000c8cc:	00813823          	sd	s0,16(sp)
    8000c8d0:	00913423          	sd	s1,8(sp)
    8000c8d4:	01213023          	sd	s2,0(sp)
    8000c8d8:	02010413          	addi	s0,sp,32
    8000c8dc:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    8000c8e0:	02853503          	ld	a0,40(a0)
    8000c8e4:	00001097          	auipc	ra,0x1
    8000c8e8:	8a4080e7          	jalr	-1884(ra) # 8000d188 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    8000c8ec:	0304b503          	ld	a0,48(s1)
    8000c8f0:	00001097          	auipc	ra,0x1
    8000c8f4:	898080e7          	jalr	-1896(ra) # 8000d188 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    8000c8f8:	0144a783          	lw	a5,20(s1)
    8000c8fc:	0104a903          	lw	s2,16(s1)
    8000c900:	0327ce63          	blt	a5,s2,8000c93c <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    8000c904:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    8000c908:	0304b503          	ld	a0,48(s1)
    8000c90c:	00001097          	auipc	ra,0x1
    8000c910:	900080e7          	jalr	-1792(ra) # 8000d20c <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    8000c914:	0284b503          	ld	a0,40(s1)
    8000c918:	00001097          	auipc	ra,0x1
    8000c91c:	8f4080e7          	jalr	-1804(ra) # 8000d20c <_ZN9Semaphore6signalEv>

    return ret;
}
    8000c920:	00090513          	mv	a0,s2
    8000c924:	01813083          	ld	ra,24(sp)
    8000c928:	01013403          	ld	s0,16(sp)
    8000c92c:	00813483          	ld	s1,8(sp)
    8000c930:	00013903          	ld	s2,0(sp)
    8000c934:	02010113          	addi	sp,sp,32
    8000c938:	00008067          	ret
        ret = cap - head + tail;
    8000c93c:	0004a703          	lw	a4,0(s1)
    8000c940:	4127093b          	subw	s2,a4,s2
    8000c944:	00f9093b          	addw	s2,s2,a5
    8000c948:	fc1ff06f          	j	8000c908 <_ZN9BufferCPP6getCntEv+0x44>

000000008000c94c <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    8000c94c:	fe010113          	addi	sp,sp,-32
    8000c950:	00113c23          	sd	ra,24(sp)
    8000c954:	00813823          	sd	s0,16(sp)
    8000c958:	00913423          	sd	s1,8(sp)
    8000c95c:	02010413          	addi	s0,sp,32
    8000c960:	00050493          	mv	s1,a0
    Console::putc('\n');
    8000c964:	00a00513          	li	a0,10
    8000c968:	00001097          	auipc	ra,0x1
    8000c96c:	904080e7          	jalr	-1788(ra) # 8000d26c <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    8000c970:	00001517          	auipc	a0,0x1
    8000c974:	69050513          	addi	a0,a0,1680 # 8000e000 <userDataStart>
    8000c978:	00000097          	auipc	ra,0x0
    8000c97c:	a20080e7          	jalr	-1504(ra) # 8000c398 <_Z11printStringPKc>
    while (getCnt()) {
    8000c980:	00048513          	mv	a0,s1
    8000c984:	00000097          	auipc	ra,0x0
    8000c988:	f40080e7          	jalr	-192(ra) # 8000c8c4 <_ZN9BufferCPP6getCntEv>
    8000c98c:	02050c63          	beqz	a0,8000c9c4 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    8000c990:	0084b783          	ld	a5,8(s1)
    8000c994:	0104a703          	lw	a4,16(s1)
    8000c998:	00271713          	slli	a4,a4,0x2
    8000c99c:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    8000c9a0:	0007c503          	lbu	a0,0(a5)
    8000c9a4:	00001097          	auipc	ra,0x1
    8000c9a8:	8c8080e7          	jalr	-1848(ra) # 8000d26c <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    8000c9ac:	0104a783          	lw	a5,16(s1)
    8000c9b0:	0017879b          	addiw	a5,a5,1
    8000c9b4:	0004a703          	lw	a4,0(s1)
    8000c9b8:	02e7e7bb          	remw	a5,a5,a4
    8000c9bc:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    8000c9c0:	fc1ff06f          	j	8000c980 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    8000c9c4:	02100513          	li	a0,33
    8000c9c8:	00001097          	auipc	ra,0x1
    8000c9cc:	8a4080e7          	jalr	-1884(ra) # 8000d26c <_ZN7Console4putcEc>
    Console::putc('\n');
    8000c9d0:	00a00513          	li	a0,10
    8000c9d4:	00001097          	auipc	ra,0x1
    8000c9d8:	898080e7          	jalr	-1896(ra) # 8000d26c <_ZN7Console4putcEc>
    mem_free(buffer);
    8000c9dc:	0084b503          	ld	a0,8(s1)
    8000c9e0:	fffff097          	auipc	ra,0xfffff
    8000c9e4:	670080e7          	jalr	1648(ra) # 8000c050 <_Z8mem_freePv>
    delete itemAvailable;
    8000c9e8:	0204b503          	ld	a0,32(s1)
    8000c9ec:	00050863          	beqz	a0,8000c9fc <_ZN9BufferCPPD1Ev+0xb0>
    8000c9f0:	00053783          	ld	a5,0(a0)
    8000c9f4:	0087b783          	ld	a5,8(a5)
    8000c9f8:	000780e7          	jalr	a5
    delete spaceAvailable;
    8000c9fc:	0184b503          	ld	a0,24(s1)
    8000ca00:	00050863          	beqz	a0,8000ca10 <_ZN9BufferCPPD1Ev+0xc4>
    8000ca04:	00053783          	ld	a5,0(a0)
    8000ca08:	0087b783          	ld	a5,8(a5)
    8000ca0c:	000780e7          	jalr	a5
    delete mutexTail;
    8000ca10:	0304b503          	ld	a0,48(s1)
    8000ca14:	00050863          	beqz	a0,8000ca24 <_ZN9BufferCPPD1Ev+0xd8>
    8000ca18:	00053783          	ld	a5,0(a0)
    8000ca1c:	0087b783          	ld	a5,8(a5)
    8000ca20:	000780e7          	jalr	a5
    delete mutexHead;
    8000ca24:	0284b503          	ld	a0,40(s1)
    8000ca28:	00050863          	beqz	a0,8000ca38 <_ZN9BufferCPPD1Ev+0xec>
    8000ca2c:	00053783          	ld	a5,0(a0)
    8000ca30:	0087b783          	ld	a5,8(a5)
    8000ca34:	000780e7          	jalr	a5
}
    8000ca38:	01813083          	ld	ra,24(sp)
    8000ca3c:	01013403          	ld	s0,16(sp)
    8000ca40:	00813483          	ld	s1,8(sp)
    8000ca44:	02010113          	addi	sp,sp,32
    8000ca48:	00008067          	ret

000000008000ca4c <_Z9sleepyRunPv>:
#include "../../../h/syscall_c_kernel.hpp"
#include "printing.hpp"

bool finished[2];

void sleepyRun(void *arg) {
    8000ca4c:	fe010113          	addi	sp,sp,-32
    8000ca50:	00113c23          	sd	ra,24(sp)
    8000ca54:	00813823          	sd	s0,16(sp)
    8000ca58:	00913423          	sd	s1,8(sp)
    8000ca5c:	01213023          	sd	s2,0(sp)
    8000ca60:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    8000ca64:	00053903          	ld	s2,0(a0)
    int i = 6;
    8000ca68:	00600493          	li	s1,6
    while (--i > 0) {
    8000ca6c:	fff4849b          	addiw	s1,s1,-1
    8000ca70:	04905463          	blez	s1,8000cab8 <_Z9sleepyRunPv+0x6c>

        printString("Hello ");
    8000ca74:	00001517          	auipc	a0,0x1
    8000ca78:	5a450513          	addi	a0,a0,1444 # 8000e018 <userDataStart+0x18>
    8000ca7c:	00000097          	auipc	ra,0x0
    8000ca80:	91c080e7          	jalr	-1764(ra) # 8000c398 <_Z11printStringPKc>
        printInt(sleep_time);
    8000ca84:	00000613          	li	a2,0
    8000ca88:	00a00593          	li	a1,10
    8000ca8c:	0009051b          	sext.w	a0,s2
    8000ca90:	00000097          	auipc	ra,0x0
    8000ca94:	aa0080e7          	jalr	-1376(ra) # 8000c530 <_Z8printIntiii>
        printString(" !\n");
    8000ca98:	00001517          	auipc	a0,0x1
    8000ca9c:	58850513          	addi	a0,a0,1416 # 8000e020 <userDataStart+0x20>
    8000caa0:	00000097          	auipc	ra,0x0
    8000caa4:	8f8080e7          	jalr	-1800(ra) # 8000c398 <_Z11printStringPKc>
        time_sleep(sleep_time);
    8000caa8:	00090513          	mv	a0,s2
    8000caac:	fffff097          	auipc	ra,0xfffff
    8000cab0:	764080e7          	jalr	1892(ra) # 8000c210 <_Z10time_sleepm>
    while (--i > 0) {
    8000cab4:	fb9ff06f          	j	8000ca6c <_Z9sleepyRunPv+0x20>
//        {
//            thread_dispatch_kernel();
//            *((size_t*)HEAP_START_ADDR) = 4;
//        }
    }
    finished[sleep_time/10-1] = true;
    8000cab8:	00a00793          	li	a5,10
    8000cabc:	02f95933          	divu	s2,s2,a5
    8000cac0:	fff90913          	addi	s2,s2,-1
    8000cac4:	00001797          	auipc	a5,0x1
    8000cac8:	5fc78793          	addi	a5,a5,1532 # 8000e0c0 <finished>
    8000cacc:	01278933          	add	s2,a5,s2
    8000cad0:	00100793          	li	a5,1
    8000cad4:	00f90023          	sb	a5,0(s2)
}
    8000cad8:	01813083          	ld	ra,24(sp)
    8000cadc:	01013403          	ld	s0,16(sp)
    8000cae0:	00813483          	ld	s1,8(sp)
    8000cae4:	00013903          	ld	s2,0(sp)
    8000cae8:	02010113          	addi	sp,sp,32
    8000caec:	00008067          	ret

000000008000caf0 <_Z12testSleepingv>:

void testSleeping() {
    8000caf0:	fc010113          	addi	sp,sp,-64
    8000caf4:	02113c23          	sd	ra,56(sp)
    8000caf8:	02813823          	sd	s0,48(sp)
    8000cafc:	02913423          	sd	s1,40(sp)
    8000cb00:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    8000cb04:	00a00793          	li	a5,10
    8000cb08:	fcf43823          	sd	a5,-48(s0)
    8000cb0c:	01400793          	li	a5,20
    8000cb10:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    8000cb14:	00000493          	li	s1,0
    8000cb18:	02c0006f          	j	8000cb44 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    8000cb1c:	00349793          	slli	a5,s1,0x3
    8000cb20:	fd040613          	addi	a2,s0,-48
    8000cb24:	00f60633          	add	a2,a2,a5
    8000cb28:	00000597          	auipc	a1,0x0
    8000cb2c:	f2458593          	addi	a1,a1,-220 # 8000ca4c <_Z9sleepyRunPv>
    8000cb30:	fc040513          	addi	a0,s0,-64
    8000cb34:	00f50533          	add	a0,a0,a5
    8000cb38:	fffff097          	auipc	ra,0xfffff
    8000cb3c:	544080e7          	jalr	1348(ra) # 8000c07c <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    8000cb40:	0014849b          	addiw	s1,s1,1
    8000cb44:	00100793          	li	a5,1
    8000cb48:	fc97dae3          	bge	a5,s1,8000cb1c <_Z12testSleepingv+0x2c>
    }

//    int count = 0;
    while (!(finished[0] && finished[1])) {
    8000cb4c:	00001797          	auipc	a5,0x1
    8000cb50:	5747c783          	lbu	a5,1396(a5) # 8000e0c0 <finished>
    8000cb54:	fe078ce3          	beqz	a5,8000cb4c <_Z12testSleepingv+0x5c>
    8000cb58:	00001797          	auipc	a5,0x1
    8000cb5c:	5697c783          	lbu	a5,1385(a5) # 8000e0c1 <finished+0x1>
    8000cb60:	fe0786e3          	beqz	a5,8000cb4c <_Z12testSleepingv+0x5c>
//        if(count == 2000*2000)
//            finished[0] = true;
//        else
//            thread_dispatch();
    }
}
    8000cb64:	03813083          	ld	ra,56(sp)
    8000cb68:	03013403          	ld	s0,48(sp)
    8000cb6c:	02813483          	ld	s1,40(sp)
    8000cb70:	04010113          	addi	sp,sp,64
    8000cb74:	00008067          	ret

000000008000cb78 <_Z8userMainv>:
//#include "ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

//#include "test1OS2.hpp"

void userMain()
{
    8000cb78:	ff010113          	addi	sp,sp,-16
    8000cb7c:	00113423          	sd	ra,8(sp)
    8000cb80:	00813023          	sd	s0,0(sp)
    8000cb84:	01010413          	addi	s0,sp,16
    //Threads_CPP_API_test(); // zadatak 2., niti CPP API i sinhrona promena konteksta

    //producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    testSleeping(); // thread_sleep test C API
    8000cb88:	00000097          	auipc	ra,0x0
    8000cb8c:	f68080e7          	jalr	-152(ra) # 8000caf0 <_Z12testSleepingv>
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    //userMainTest();
    8000cb90:	00813083          	ld	ra,8(sp)
    8000cb94:	00013403          	ld	s0,0(sp)
    8000cb98:	01010113          	addi	sp,sp,16
    8000cb9c:	00008067          	ret

000000008000cba0 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    8000cba0:	fe010113          	addi	sp,sp,-32
    8000cba4:	00113c23          	sd	ra,24(sp)
    8000cba8:	00813823          	sd	s0,16(sp)
    8000cbac:	00913423          	sd	s1,8(sp)
    8000cbb0:	01213023          	sd	s2,0(sp)
    8000cbb4:	02010413          	addi	s0,sp,32
    8000cbb8:	00050493          	mv	s1,a0
    8000cbbc:	00058913          	mv	s2,a1
    8000cbc0:	0015879b          	addiw	a5,a1,1
    8000cbc4:	0007851b          	sext.w	a0,a5
    8000cbc8:	00f4a023          	sw	a5,0(s1)
    8000cbcc:	0004a823          	sw	zero,16(s1)
    8000cbd0:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    8000cbd4:	00251513          	slli	a0,a0,0x2
    8000cbd8:	fffff097          	auipc	ra,0xfffff
    8000cbdc:	448080e7          	jalr	1096(ra) # 8000c020 <_Z9mem_allocm>
    8000cbe0:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    8000cbe4:	00000593          	li	a1,0
    8000cbe8:	02048513          	addi	a0,s1,32
    8000cbec:	fffff097          	auipc	ra,0xfffff
    8000cbf0:	568080e7          	jalr	1384(ra) # 8000c154 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    8000cbf4:	00090593          	mv	a1,s2
    8000cbf8:	01848513          	addi	a0,s1,24
    8000cbfc:	fffff097          	auipc	ra,0xfffff
    8000cc00:	558080e7          	jalr	1368(ra) # 8000c154 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    8000cc04:	00100593          	li	a1,1
    8000cc08:	02848513          	addi	a0,s1,40
    8000cc0c:	fffff097          	auipc	ra,0xfffff
    8000cc10:	548080e7          	jalr	1352(ra) # 8000c154 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    8000cc14:	00100593          	li	a1,1
    8000cc18:	03048513          	addi	a0,s1,48
    8000cc1c:	fffff097          	auipc	ra,0xfffff
    8000cc20:	538080e7          	jalr	1336(ra) # 8000c154 <_Z8sem_openPP4_semj>
}
    8000cc24:	01813083          	ld	ra,24(sp)
    8000cc28:	01013403          	ld	s0,16(sp)
    8000cc2c:	00813483          	ld	s1,8(sp)
    8000cc30:	00013903          	ld	s2,0(sp)
    8000cc34:	02010113          	addi	sp,sp,32
    8000cc38:	00008067          	ret

000000008000cc3c <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    8000cc3c:	fe010113          	addi	sp,sp,-32
    8000cc40:	00113c23          	sd	ra,24(sp)
    8000cc44:	00813823          	sd	s0,16(sp)
    8000cc48:	00913423          	sd	s1,8(sp)
    8000cc4c:	01213023          	sd	s2,0(sp)
    8000cc50:	02010413          	addi	s0,sp,32
    8000cc54:	00050493          	mv	s1,a0
    8000cc58:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    8000cc5c:	01853503          	ld	a0,24(a0)
    8000cc60:	fffff097          	auipc	ra,0xfffff
    8000cc64:	558080e7          	jalr	1368(ra) # 8000c1b8 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    8000cc68:	0304b503          	ld	a0,48(s1)
    8000cc6c:	fffff097          	auipc	ra,0xfffff
    8000cc70:	54c080e7          	jalr	1356(ra) # 8000c1b8 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    8000cc74:	0084b783          	ld	a5,8(s1)
    8000cc78:	0144a703          	lw	a4,20(s1)
    8000cc7c:	00271713          	slli	a4,a4,0x2
    8000cc80:	00e787b3          	add	a5,a5,a4
    8000cc84:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    8000cc88:	0144a783          	lw	a5,20(s1)
    8000cc8c:	0017879b          	addiw	a5,a5,1
    8000cc90:	0004a703          	lw	a4,0(s1)
    8000cc94:	02e7e7bb          	remw	a5,a5,a4
    8000cc98:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    8000cc9c:	0304b503          	ld	a0,48(s1)
    8000cca0:	fffff097          	auipc	ra,0xfffff
    8000cca4:	544080e7          	jalr	1348(ra) # 8000c1e4 <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    8000cca8:	0204b503          	ld	a0,32(s1)
    8000ccac:	fffff097          	auipc	ra,0xfffff
    8000ccb0:	538080e7          	jalr	1336(ra) # 8000c1e4 <_Z10sem_signalP4_sem>

}
    8000ccb4:	01813083          	ld	ra,24(sp)
    8000ccb8:	01013403          	ld	s0,16(sp)
    8000ccbc:	00813483          	ld	s1,8(sp)
    8000ccc0:	00013903          	ld	s2,0(sp)
    8000ccc4:	02010113          	addi	sp,sp,32
    8000ccc8:	00008067          	ret

000000008000cccc <_ZN6Buffer3getEv>:

int Buffer::get() {
    8000cccc:	fe010113          	addi	sp,sp,-32
    8000ccd0:	00113c23          	sd	ra,24(sp)
    8000ccd4:	00813823          	sd	s0,16(sp)
    8000ccd8:	00913423          	sd	s1,8(sp)
    8000ccdc:	01213023          	sd	s2,0(sp)
    8000cce0:	02010413          	addi	s0,sp,32
    8000cce4:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    8000cce8:	02053503          	ld	a0,32(a0)
    8000ccec:	fffff097          	auipc	ra,0xfffff
    8000ccf0:	4cc080e7          	jalr	1228(ra) # 8000c1b8 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    8000ccf4:	0284b503          	ld	a0,40(s1)
    8000ccf8:	fffff097          	auipc	ra,0xfffff
    8000ccfc:	4c0080e7          	jalr	1216(ra) # 8000c1b8 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    8000cd00:	0084b703          	ld	a4,8(s1)
    8000cd04:	0104a783          	lw	a5,16(s1)
    8000cd08:	00279693          	slli	a3,a5,0x2
    8000cd0c:	00d70733          	add	a4,a4,a3
    8000cd10:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    8000cd14:	0017879b          	addiw	a5,a5,1
    8000cd18:	0004a703          	lw	a4,0(s1)
    8000cd1c:	02e7e7bb          	remw	a5,a5,a4
    8000cd20:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    8000cd24:	0284b503          	ld	a0,40(s1)
    8000cd28:	fffff097          	auipc	ra,0xfffff
    8000cd2c:	4bc080e7          	jalr	1212(ra) # 8000c1e4 <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    8000cd30:	0184b503          	ld	a0,24(s1)
    8000cd34:	fffff097          	auipc	ra,0xfffff
    8000cd38:	4b0080e7          	jalr	1200(ra) # 8000c1e4 <_Z10sem_signalP4_sem>

    return ret;
}
    8000cd3c:	00090513          	mv	a0,s2
    8000cd40:	01813083          	ld	ra,24(sp)
    8000cd44:	01013403          	ld	s0,16(sp)
    8000cd48:	00813483          	ld	s1,8(sp)
    8000cd4c:	00013903          	ld	s2,0(sp)
    8000cd50:	02010113          	addi	sp,sp,32
    8000cd54:	00008067          	ret

000000008000cd58 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    8000cd58:	fe010113          	addi	sp,sp,-32
    8000cd5c:	00113c23          	sd	ra,24(sp)
    8000cd60:	00813823          	sd	s0,16(sp)
    8000cd64:	00913423          	sd	s1,8(sp)
    8000cd68:	01213023          	sd	s2,0(sp)
    8000cd6c:	02010413          	addi	s0,sp,32
    8000cd70:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    8000cd74:	02853503          	ld	a0,40(a0)
    8000cd78:	fffff097          	auipc	ra,0xfffff
    8000cd7c:	440080e7          	jalr	1088(ra) # 8000c1b8 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    8000cd80:	0304b503          	ld	a0,48(s1)
    8000cd84:	fffff097          	auipc	ra,0xfffff
    8000cd88:	434080e7          	jalr	1076(ra) # 8000c1b8 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    8000cd8c:	0144a783          	lw	a5,20(s1)
    8000cd90:	0104a903          	lw	s2,16(s1)
    8000cd94:	0327ce63          	blt	a5,s2,8000cdd0 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    8000cd98:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    8000cd9c:	0304b503          	ld	a0,48(s1)
    8000cda0:	fffff097          	auipc	ra,0xfffff
    8000cda4:	444080e7          	jalr	1092(ra) # 8000c1e4 <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    8000cda8:	0284b503          	ld	a0,40(s1)
    8000cdac:	fffff097          	auipc	ra,0xfffff
    8000cdb0:	438080e7          	jalr	1080(ra) # 8000c1e4 <_Z10sem_signalP4_sem>

    return ret;
    8000cdb4:	00090513          	mv	a0,s2
    8000cdb8:	01813083          	ld	ra,24(sp)
    8000cdbc:	01013403          	ld	s0,16(sp)
    8000cdc0:	00813483          	ld	s1,8(sp)
    8000cdc4:	00013903          	ld	s2,0(sp)
    8000cdc8:	02010113          	addi	sp,sp,32
    8000cdcc:	00008067          	ret
        ret = cap - head + tail;
    8000cdd0:	0004a703          	lw	a4,0(s1)
    8000cdd4:	4127093b          	subw	s2,a4,s2
    8000cdd8:	00f9093b          	addw	s2,s2,a5
    8000cddc:	fc1ff06f          	j	8000cd9c <_ZN6Buffer6getCntEv+0x44>

000000008000cde0 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    8000cde0:	fe010113          	addi	sp,sp,-32
    8000cde4:	00113c23          	sd	ra,24(sp)
    8000cde8:	00813823          	sd	s0,16(sp)
    8000cdec:	00913423          	sd	s1,8(sp)
    8000cdf0:	02010413          	addi	s0,sp,32
    8000cdf4:	00050493          	mv	s1,a0
    putc('\n');
    8000cdf8:	00a00513          	li	a0,10
    8000cdfc:	fffff097          	auipc	ra,0xfffff
    8000ce00:	524080e7          	jalr	1316(ra) # 8000c320 <_Z4putcc>
    printString("Buffer deleted!\n");
    8000ce04:	00001517          	auipc	a0,0x1
    8000ce08:	1fc50513          	addi	a0,a0,508 # 8000e000 <userDataStart>
    8000ce0c:	fffff097          	auipc	ra,0xfffff
    8000ce10:	58c080e7          	jalr	1420(ra) # 8000c398 <_Z11printStringPKc>
    while (getCnt() > 0) {
    8000ce14:	00048513          	mv	a0,s1
    8000ce18:	00000097          	auipc	ra,0x0
    8000ce1c:	f40080e7          	jalr	-192(ra) # 8000cd58 <_ZN6Buffer6getCntEv>
    8000ce20:	02a05c63          	blez	a0,8000ce58 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    8000ce24:	0084b783          	ld	a5,8(s1)
    8000ce28:	0104a703          	lw	a4,16(s1)
    8000ce2c:	00271713          	slli	a4,a4,0x2
    8000ce30:	00e787b3          	add	a5,a5,a4
        putc(ch);
    8000ce34:	0007c503          	lbu	a0,0(a5)
    8000ce38:	fffff097          	auipc	ra,0xfffff
    8000ce3c:	4e8080e7          	jalr	1256(ra) # 8000c320 <_Z4putcc>
        head = (head + 1) % cap;
    8000ce40:	0104a783          	lw	a5,16(s1)
    8000ce44:	0017879b          	addiw	a5,a5,1
    8000ce48:	0004a703          	lw	a4,0(s1)
    8000ce4c:	02e7e7bb          	remw	a5,a5,a4
    8000ce50:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    8000ce54:	fc1ff06f          	j	8000ce14 <_ZN6BufferD1Ev+0x34>
    putc('!');
    8000ce58:	02100513          	li	a0,33
    8000ce5c:	fffff097          	auipc	ra,0xfffff
    8000ce60:	4c4080e7          	jalr	1220(ra) # 8000c320 <_Z4putcc>
    putc('\n');
    8000ce64:	00a00513          	li	a0,10
    8000ce68:	fffff097          	auipc	ra,0xfffff
    8000ce6c:	4b8080e7          	jalr	1208(ra) # 8000c320 <_Z4putcc>
    mem_free(buffer);
    8000ce70:	0084b503          	ld	a0,8(s1)
    8000ce74:	fffff097          	auipc	ra,0xfffff
    8000ce78:	1dc080e7          	jalr	476(ra) # 8000c050 <_Z8mem_freePv>
    sem_close(itemAvailable);
    8000ce7c:	0204b503          	ld	a0,32(s1)
    8000ce80:	fffff097          	auipc	ra,0xfffff
    8000ce84:	30c080e7          	jalr	780(ra) # 8000c18c <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    8000ce88:	0184b503          	ld	a0,24(s1)
    8000ce8c:	fffff097          	auipc	ra,0xfffff
    8000ce90:	300080e7          	jalr	768(ra) # 8000c18c <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    8000ce94:	0304b503          	ld	a0,48(s1)
    8000ce98:	fffff097          	auipc	ra,0xfffff
    8000ce9c:	2f4080e7          	jalr	756(ra) # 8000c18c <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    8000cea0:	0284b503          	ld	a0,40(s1)
    8000cea4:	fffff097          	auipc	ra,0xfffff
    8000cea8:	2e8080e7          	jalr	744(ra) # 8000c18c <_Z9sem_closeP4_sem>
}
    8000ceac:	01813083          	ld	ra,24(sp)
    8000ceb0:	01013403          	ld	s0,16(sp)
    8000ceb4:	00813483          	ld	s1,8(sp)
    8000ceb8:	02010113          	addi	sp,sp,32
    8000cebc:	00008067          	ret

000000008000cec0 <_ZN6Thread6runnerEPv>:
    myHandle = nullptr;
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
}

void Thread::runner(void *t)
{
    8000cec0:	ff010113          	addi	sp,sp,-16
    8000cec4:	00113423          	sd	ra,8(sp)
    8000cec8:	00813023          	sd	s0,0(sp)
    8000cecc:	01010413          	addi	s0,sp,16
    Thread* thr = (Thread*)t;
    thr->run();
    8000ced0:	00053783          	ld	a5,0(a0)
    8000ced4:	0107b783          	ld	a5,16(a5)
    8000ced8:	000780e7          	jalr	a5
}
    8000cedc:	00813083          	ld	ra,8(sp)
    8000cee0:	00013403          	ld	s0,0(sp)
    8000cee4:	01010113          	addi	sp,sp,16
    8000cee8:	00008067          	ret

000000008000ceec <_ZN6ThreadD1Ev>:

Thread::~Thread()
    8000ceec:	00001797          	auipc	a5,0x1
    8000cef0:	19478793          	addi	a5,a5,404 # 8000e080 <_ZTV6Thread+0x10>
    8000cef4:	00f53023          	sd	a5,0(a0)
{
    delete myHandle;
    8000cef8:	00853503          	ld	a0,8(a0)
    8000cefc:	02050663          	beqz	a0,8000cf28 <_ZN6ThreadD1Ev+0x3c>
Thread::~Thread()
    8000cf00:	ff010113          	addi	sp,sp,-16
    8000cf04:	00113423          	sd	ra,8(sp)
    8000cf08:	00813023          	sd	s0,0(sp)
    8000cf0c:	01010413          	addi	s0,sp,16
    delete myHandle;
    8000cf10:	fffff097          	auipc	ra,0xfffff
    8000cf14:	460080e7          	jalr	1120(ra) # 8000c370 <_ZN7_threaddlEPv>
}
    8000cf18:	00813083          	ld	ra,8(sp)
    8000cf1c:	00013403          	ld	s0,0(sp)
    8000cf20:	01010113          	addi	sp,sp,16
    8000cf24:	00008067          	ret
    8000cf28:	00008067          	ret

000000008000cf2c <_ZN9SemaphoreD1Ev>:
    if(myHandle == nullptr)
        return -1;
    return sem_signal(myHandle);
}

Semaphore::~Semaphore() {
    8000cf2c:	00001797          	auipc	a5,0x1
    8000cf30:	17c78793          	addi	a5,a5,380 # 8000e0a8 <_ZTV9Semaphore+0x10>
    8000cf34:	00f53023          	sd	a5,0(a0)
    delete myHandle;
    8000cf38:	00853503          	ld	a0,8(a0)
    8000cf3c:	02050663          	beqz	a0,8000cf68 <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore() {
    8000cf40:	ff010113          	addi	sp,sp,-16
    8000cf44:	00113423          	sd	ra,8(sp)
    8000cf48:	00813023          	sd	s0,0(sp)
    8000cf4c:	01010413          	addi	s0,sp,16
    delete myHandle;
    8000cf50:	00000097          	auipc	ra,0x0
    8000cf54:	4c4080e7          	jalr	1220(ra) # 8000d414 <_ZN4_semdlEPv>
}
    8000cf58:	00813083          	ld	ra,8(sp)
    8000cf5c:	00013403          	ld	s0,0(sp)
    8000cf60:	01010113          	addi	sp,sp,16
    8000cf64:	00008067          	ret
    8000cf68:	00008067          	ret

000000008000cf6c <_Znwm>:
{
    8000cf6c:	ff010113          	addi	sp,sp,-16
    8000cf70:	00113423          	sd	ra,8(sp)
    8000cf74:	00813023          	sd	s0,0(sp)
    8000cf78:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    8000cf7c:	fffff097          	auipc	ra,0xfffff
    8000cf80:	0a4080e7          	jalr	164(ra) # 8000c020 <_Z9mem_allocm>
}
    8000cf84:	00813083          	ld	ra,8(sp)
    8000cf88:	00013403          	ld	s0,0(sp)
    8000cf8c:	01010113          	addi	sp,sp,16
    8000cf90:	00008067          	ret

000000008000cf94 <_ZdlPv>:
{
    8000cf94:	ff010113          	addi	sp,sp,-16
    8000cf98:	00113423          	sd	ra,8(sp)
    8000cf9c:	00813023          	sd	s0,0(sp)
    8000cfa0:	01010413          	addi	s0,sp,16
    mem_free(p);
    8000cfa4:	fffff097          	auipc	ra,0xfffff
    8000cfa8:	0ac080e7          	jalr	172(ra) # 8000c050 <_Z8mem_freePv>
}
    8000cfac:	00813083          	ld	ra,8(sp)
    8000cfb0:	00013403          	ld	s0,0(sp)
    8000cfb4:	01010113          	addi	sp,sp,16
    8000cfb8:	00008067          	ret

000000008000cfbc <_ZN6ThreadD0Ev>:
Thread::~Thread()
    8000cfbc:	fe010113          	addi	sp,sp,-32
    8000cfc0:	00113c23          	sd	ra,24(sp)
    8000cfc4:	00813823          	sd	s0,16(sp)
    8000cfc8:	00913423          	sd	s1,8(sp)
    8000cfcc:	02010413          	addi	s0,sp,32
    8000cfd0:	00050493          	mv	s1,a0
}
    8000cfd4:	00000097          	auipc	ra,0x0
    8000cfd8:	f18080e7          	jalr	-232(ra) # 8000ceec <_ZN6ThreadD1Ev>
    8000cfdc:	00048513          	mv	a0,s1
    8000cfe0:	00000097          	auipc	ra,0x0
    8000cfe4:	fb4080e7          	jalr	-76(ra) # 8000cf94 <_ZdlPv>
    8000cfe8:	01813083          	ld	ra,24(sp)
    8000cfec:	01013403          	ld	s0,16(sp)
    8000cff0:	00813483          	ld	s1,8(sp)
    8000cff4:	02010113          	addi	sp,sp,32
    8000cff8:	00008067          	ret

000000008000cffc <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    8000cffc:	fe010113          	addi	sp,sp,-32
    8000d000:	00113c23          	sd	ra,24(sp)
    8000d004:	00813823          	sd	s0,16(sp)
    8000d008:	00913423          	sd	s1,8(sp)
    8000d00c:	02010413          	addi	s0,sp,32
    8000d010:	00050493          	mv	s1,a0
}
    8000d014:	00000097          	auipc	ra,0x0
    8000d018:	f18080e7          	jalr	-232(ra) # 8000cf2c <_ZN9SemaphoreD1Ev>
    8000d01c:	00048513          	mv	a0,s1
    8000d020:	00000097          	auipc	ra,0x0
    8000d024:	f74080e7          	jalr	-140(ra) # 8000cf94 <_ZdlPv>
    8000d028:	01813083          	ld	ra,24(sp)
    8000d02c:	01013403          	ld	s0,16(sp)
    8000d030:	00813483          	ld	s1,8(sp)
    8000d034:	02010113          	addi	sp,sp,32
    8000d038:	00008067          	ret

000000008000d03c <_ZN6Thread5startEv>:
    if(myHandle != nullptr)
    8000d03c:	00853503          	ld	a0,8(a0)
    8000d040:	02050663          	beqz	a0,8000d06c <_ZN6Thread5startEv+0x30>
{
    8000d044:	ff010113          	addi	sp,sp,-16
    8000d048:	00113423          	sd	ra,8(sp)
    8000d04c:	00813023          	sd	s0,0(sp)
    8000d050:	01010413          	addi	s0,sp,16
        return thread_start(myHandle);
    8000d054:	fffff097          	auipc	ra,0xfffff
    8000d058:	1e8080e7          	jalr	488(ra) # 8000c23c <_Z12thread_startPv>
}
    8000d05c:	00813083          	ld	ra,8(sp)
    8000d060:	00013403          	ld	s0,0(sp)
    8000d064:	01010113          	addi	sp,sp,16
    8000d068:	00008067          	ret
        return -1;
    8000d06c:	fff00513          	li	a0,-1
}
    8000d070:	00008067          	ret

000000008000d074 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    8000d074:	ff010113          	addi	sp,sp,-16
    8000d078:	00113423          	sd	ra,8(sp)
    8000d07c:	00813023          	sd	s0,0(sp)
    8000d080:	01010413          	addi	s0,sp,16
    thread_dispatch();
    8000d084:	fffff097          	auipc	ra,0xfffff
    8000d088:	088080e7          	jalr	136(ra) # 8000c10c <_Z15thread_dispatchv>
}
    8000d08c:	00813083          	ld	ra,8(sp)
    8000d090:	00013403          	ld	s0,0(sp)
    8000d094:	01010113          	addi	sp,sp,16
    8000d098:	00008067          	ret

000000008000d09c <_ZN6Thread5sleepEm>:
{
    8000d09c:	ff010113          	addi	sp,sp,-16
    8000d0a0:	00113423          	sd	ra,8(sp)
    8000d0a4:	00813023          	sd	s0,0(sp)
    8000d0a8:	01010413          	addi	s0,sp,16
    time_sleep(time);
    8000d0ac:	fffff097          	auipc	ra,0xfffff
    8000d0b0:	164080e7          	jalr	356(ra) # 8000c210 <_Z10time_sleepm>
}
    8000d0b4:	00813083          	ld	ra,8(sp)
    8000d0b8:	00013403          	ld	s0,0(sp)
    8000d0bc:	01010113          	addi	sp,sp,16
    8000d0c0:	00008067          	ret

000000008000d0c4 <_ZN14PeriodicThread6runnerEPv>:
{

}

void PeriodicThread::runner(void* arg)
{
    8000d0c4:	fe010113          	addi	sp,sp,-32
    8000d0c8:	00113c23          	sd	ra,24(sp)
    8000d0cc:	00813823          	sd	s0,16(sp)
    8000d0d0:	00913423          	sd	s1,8(sp)
    8000d0d4:	01213023          	sd	s2,0(sp)
    8000d0d8:	02010413          	addi	s0,sp,32
    PeriodicThread *pThread =(PeriodicThread*) ((ArgsPeriodic*)arg)->pt;
    8000d0dc:	00053483          	ld	s1,0(a0)
    uint64 time = ((ArgsPeriodic*)arg)->time;
    8000d0e0:	00853903          	ld	s2,8(a0)

    while(true)
    {
        pThread->periodicActivation();
    8000d0e4:	0004b783          	ld	a5,0(s1)
    8000d0e8:	0187b783          	ld	a5,24(a5)
    8000d0ec:	00048513          	mv	a0,s1
    8000d0f0:	000780e7          	jalr	a5
        Thread::sleep(time);
    8000d0f4:	00090513          	mv	a0,s2
    8000d0f8:	00000097          	auipc	ra,0x0
    8000d0fc:	fa4080e7          	jalr	-92(ra) # 8000d09c <_ZN6Thread5sleepEm>
    while(true)
    8000d100:	fe5ff06f          	j	8000d0e4 <_ZN14PeriodicThread6runnerEPv+0x20>

000000008000d104 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *args)
    8000d104:	ff010113          	addi	sp,sp,-16
    8000d108:	00113423          	sd	ra,8(sp)
    8000d10c:	00813023          	sd	s0,0(sp)
    8000d110:	01010413          	addi	s0,sp,16
    8000d114:	00001797          	auipc	a5,0x1
    8000d118:	f6c78793          	addi	a5,a5,-148 # 8000e080 <_ZTV6Thread+0x10>
    8000d11c:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    8000d120:	00053423          	sd	zero,8(a0)
    thread_make_pcb(&myHandle, body, args);
    8000d124:	00850513          	addi	a0,a0,8
    8000d128:	fffff097          	auipc	ra,0xfffff
    8000d12c:	140080e7          	jalr	320(ra) # 8000c268 <_Z15thread_make_pcbPP7_threadPFvPvES2_>
}
    8000d130:	00813083          	ld	ra,8(sp)
    8000d134:	00013403          	ld	s0,0(sp)
    8000d138:	01010113          	addi	sp,sp,16
    8000d13c:	00008067          	ret

000000008000d140 <_ZN6ThreadC1Ev>:
Thread::Thread()
    8000d140:	ff010113          	addi	sp,sp,-16
    8000d144:	00113423          	sd	ra,8(sp)
    8000d148:	00813023          	sd	s0,0(sp)
    8000d14c:	01010413          	addi	s0,sp,16
    8000d150:	00001797          	auipc	a5,0x1
    8000d154:	f3078793          	addi	a5,a5,-208 # 8000e080 <_ZTV6Thread+0x10>
    8000d158:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    8000d15c:	00053423          	sd	zero,8(a0)
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
    8000d160:	00050613          	mv	a2,a0
    8000d164:	00000597          	auipc	a1,0x0
    8000d168:	d5c58593          	addi	a1,a1,-676 # 8000cec0 <_ZN6Thread6runnerEPv>
    8000d16c:	00850513          	addi	a0,a0,8
    8000d170:	fffff097          	auipc	ra,0xfffff
    8000d174:	0f8080e7          	jalr	248(ra) # 8000c268 <_Z15thread_make_pcbPP7_threadPFvPvES2_>
}
    8000d178:	00813083          	ld	ra,8(sp)
    8000d17c:	00013403          	ld	s0,0(sp)
    8000d180:	01010113          	addi	sp,sp,16
    8000d184:	00008067          	ret

000000008000d188 <_ZN9Semaphore4waitEv>:
    if(myHandle == nullptr)
    8000d188:	00853503          	ld	a0,8(a0)
    8000d18c:	02050663          	beqz	a0,8000d1b8 <_ZN9Semaphore4waitEv+0x30>
{
    8000d190:	ff010113          	addi	sp,sp,-16
    8000d194:	00113423          	sd	ra,8(sp)
    8000d198:	00813023          	sd	s0,0(sp)
    8000d19c:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    8000d1a0:	fffff097          	auipc	ra,0xfffff
    8000d1a4:	018080e7          	jalr	24(ra) # 8000c1b8 <_Z8sem_waitP4_sem>
}
    8000d1a8:	00813083          	ld	ra,8(sp)
    8000d1ac:	00013403          	ld	s0,0(sp)
    8000d1b0:	01010113          	addi	sp,sp,16
    8000d1b4:	00008067          	ret
        return -1;
    8000d1b8:	fff00513          	li	a0,-1
}
    8000d1bc:	00008067          	ret

000000008000d1c0 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init)
    8000d1c0:	fe010113          	addi	sp,sp,-32
    8000d1c4:	00113c23          	sd	ra,24(sp)
    8000d1c8:	00813823          	sd	s0,16(sp)
    8000d1cc:	00913423          	sd	s1,8(sp)
    8000d1d0:	02010413          	addi	s0,sp,32
    8000d1d4:	00050493          	mv	s1,a0
    8000d1d8:	00001797          	auipc	a5,0x1
    8000d1dc:	ed078793          	addi	a5,a5,-304 # 8000e0a8 <_ZTV9Semaphore+0x10>
    8000d1e0:	00f53023          	sd	a5,0(a0)
    int retval = sem_open(&myHandle, init);
    8000d1e4:	00850513          	addi	a0,a0,8
    8000d1e8:	fffff097          	auipc	ra,0xfffff
    8000d1ec:	f6c080e7          	jalr	-148(ra) # 8000c154 <_Z8sem_openPP4_semj>
    if(retval != 0)
    8000d1f0:	00050463          	beqz	a0,8000d1f8 <_ZN9SemaphoreC1Ej+0x38>
        myHandle = nullptr;
    8000d1f4:	0004b423          	sd	zero,8(s1)
}
    8000d1f8:	01813083          	ld	ra,24(sp)
    8000d1fc:	01013403          	ld	s0,16(sp)
    8000d200:	00813483          	ld	s1,8(sp)
    8000d204:	02010113          	addi	sp,sp,32
    8000d208:	00008067          	ret

000000008000d20c <_ZN9Semaphore6signalEv>:
    if(myHandle == nullptr)
    8000d20c:	00853503          	ld	a0,8(a0)
    8000d210:	02050663          	beqz	a0,8000d23c <_ZN9Semaphore6signalEv+0x30>
{
    8000d214:	ff010113          	addi	sp,sp,-16
    8000d218:	00113423          	sd	ra,8(sp)
    8000d21c:	00813023          	sd	s0,0(sp)
    8000d220:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    8000d224:	fffff097          	auipc	ra,0xfffff
    8000d228:	fc0080e7          	jalr	-64(ra) # 8000c1e4 <_Z10sem_signalP4_sem>
}
    8000d22c:	00813083          	ld	ra,8(sp)
    8000d230:	00013403          	ld	s0,0(sp)
    8000d234:	01010113          	addi	sp,sp,16
    8000d238:	00008067          	ret
        return -1;
    8000d23c:	fff00513          	li	a0,-1
}
    8000d240:	00008067          	ret

000000008000d244 <_ZN7Console4getcEv>:
{
    8000d244:	ff010113          	addi	sp,sp,-16
    8000d248:	00113423          	sd	ra,8(sp)
    8000d24c:	00813023          	sd	s0,0(sp)
    8000d250:	01010413          	addi	s0,sp,16
    return ::getc();
    8000d254:	fffff097          	auipc	ra,0xfffff
    8000d258:	0a4080e7          	jalr	164(ra) # 8000c2f8 <_Z4getcv>
}
    8000d25c:	00813083          	ld	ra,8(sp)
    8000d260:	00013403          	ld	s0,0(sp)
    8000d264:	01010113          	addi	sp,sp,16
    8000d268:	00008067          	ret

000000008000d26c <_ZN7Console4putcEc>:
{
    8000d26c:	ff010113          	addi	sp,sp,-16
    8000d270:	00113423          	sd	ra,8(sp)
    8000d274:	00813023          	sd	s0,0(sp)
    8000d278:	01010413          	addi	s0,sp,16
    return ::putc(c);
    8000d27c:	fffff097          	auipc	ra,0xfffff
    8000d280:	0a4080e7          	jalr	164(ra) # 8000c320 <_Z4putcc>
}
    8000d284:	00813083          	ld	ra,8(sp)
    8000d288:	00013403          	ld	s0,0(sp)
    8000d28c:	01010113          	addi	sp,sp,16
    8000d290:	00008067          	ret

000000008000d294 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    8000d294:	fe010113          	addi	sp,sp,-32
    8000d298:	00113c23          	sd	ra,24(sp)
    8000d29c:	00813823          	sd	s0,16(sp)
    8000d2a0:	00913423          	sd	s1,8(sp)
    8000d2a4:	01213023          	sd	s2,0(sp)
    8000d2a8:	02010413          	addi	s0,sp,32
    8000d2ac:	00050493          	mv	s1,a0
    8000d2b0:	00058913          	mv	s2,a1
    8000d2b4:	01000513          	li	a0,16
    8000d2b8:	00000097          	auipc	ra,0x0
    8000d2bc:	cb4080e7          	jalr	-844(ra) # 8000cf6c <_Znwm>
    8000d2c0:	00050613          	mv	a2,a0
    8000d2c4:	00050663          	beqz	a0,8000d2d0 <_ZN14PeriodicThreadC1Em+0x3c>
    ArgsPeriodic(void *p, uint64 t) : pt(p), time(t){}
    8000d2c8:	00953023          	sd	s1,0(a0)
    8000d2cc:	01253423          	sd	s2,8(a0)
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    8000d2d0:	00000597          	auipc	a1,0x0
    8000d2d4:	df458593          	addi	a1,a1,-524 # 8000d0c4 <_ZN14PeriodicThread6runnerEPv>
    8000d2d8:	00048513          	mv	a0,s1
    8000d2dc:	00000097          	auipc	ra,0x0
    8000d2e0:	e28080e7          	jalr	-472(ra) # 8000d104 <_ZN6ThreadC1EPFvPvES0_>
    8000d2e4:	00001797          	auipc	a5,0x1
    8000d2e8:	d6c78793          	addi	a5,a5,-660 # 8000e050 <_ZTV14PeriodicThread+0x10>
    8000d2ec:	00f4b023          	sd	a5,0(s1)
}
    8000d2f0:	01813083          	ld	ra,24(sp)
    8000d2f4:	01013403          	ld	s0,16(sp)
    8000d2f8:	00813483          	ld	s1,8(sp)
    8000d2fc:	00013903          	ld	s2,0(sp)
    8000d300:	02010113          	addi	sp,sp,32
    8000d304:	00008067          	ret

000000008000d308 <_ZN6Thread3runEv>:
    static void sleep(time_t);

protected:
    Thread();

    virtual void run() {}
    8000d308:	ff010113          	addi	sp,sp,-16
    8000d30c:	00813423          	sd	s0,8(sp)
    8000d310:	01010413          	addi	s0,sp,16
    8000d314:	00813403          	ld	s0,8(sp)
    8000d318:	01010113          	addi	sp,sp,16
    8000d31c:	00008067          	ret

000000008000d320 <_ZN14PeriodicThread18periodicActivationEv>:

class PeriodicThread : public Thread
{
protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {};
    8000d320:	ff010113          	addi	sp,sp,-16
    8000d324:	00813423          	sd	s0,8(sp)
    8000d328:	01010413          	addi	s0,sp,16
    8000d32c:	00813403          	ld	s0,8(sp)
    8000d330:	01010113          	addi	sp,sp,16
    8000d334:	00008067          	ret

000000008000d338 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread
    8000d338:	ff010113          	addi	sp,sp,-16
    8000d33c:	00113423          	sd	ra,8(sp)
    8000d340:	00813023          	sd	s0,0(sp)
    8000d344:	01010413          	addi	s0,sp,16
    8000d348:	00001797          	auipc	a5,0x1
    8000d34c:	d0878793          	addi	a5,a5,-760 # 8000e050 <_ZTV14PeriodicThread+0x10>
    8000d350:	00f53023          	sd	a5,0(a0)
    8000d354:	00000097          	auipc	ra,0x0
    8000d358:	b98080e7          	jalr	-1128(ra) # 8000ceec <_ZN6ThreadD1Ev>
    8000d35c:	00813083          	ld	ra,8(sp)
    8000d360:	00013403          	ld	s0,0(sp)
    8000d364:	01010113          	addi	sp,sp,16
    8000d368:	00008067          	ret

000000008000d36c <_ZN14PeriodicThreadD0Ev>:
    8000d36c:	fe010113          	addi	sp,sp,-32
    8000d370:	00113c23          	sd	ra,24(sp)
    8000d374:	00813823          	sd	s0,16(sp)
    8000d378:	00913423          	sd	s1,8(sp)
    8000d37c:	02010413          	addi	s0,sp,32
    8000d380:	00050493          	mv	s1,a0
    8000d384:	00001797          	auipc	a5,0x1
    8000d388:	ccc78793          	addi	a5,a5,-820 # 8000e050 <_ZTV14PeriodicThread+0x10>
    8000d38c:	00f53023          	sd	a5,0(a0)
    8000d390:	00000097          	auipc	ra,0x0
    8000d394:	b5c080e7          	jalr	-1188(ra) # 8000ceec <_ZN6ThreadD1Ev>
    8000d398:	00048513          	mv	a0,s1
    8000d39c:	00000097          	auipc	ra,0x0
    8000d3a0:	bf8080e7          	jalr	-1032(ra) # 8000cf94 <_ZdlPv>
    8000d3a4:	01813083          	ld	ra,24(sp)
    8000d3a8:	01013403          	ld	s0,16(sp)
    8000d3ac:	00813483          	ld	s1,8(sp)
    8000d3b0:	02010113          	addi	sp,sp,32
    8000d3b4:	00008067          	ret

000000008000d3b8 <_ZN14PCBWrapperUser15userMainWrapperEPv>:
#include "../../h/PCBWrapperUser.hpp"
#include "../../h/syscall_c.hpp"
#include "test/userMain.hpp"

void PCBWrapperUser::userMainWrapper(void* a)
{
    8000d3b8:	ff010113          	addi	sp,sp,-16
    8000d3bc:	00113423          	sd	ra,8(sp)
    8000d3c0:	00813023          	sd	s0,0(sp)
    8000d3c4:	01010413          	addi	s0,sp,16
    userMain();
    8000d3c8:	fffff097          	auipc	ra,0xfffff
    8000d3cc:	7b0080e7          	jalr	1968(ra) # 8000cb78 <_Z8userMainv>
}
    8000d3d0:	00813083          	ld	ra,8(sp)
    8000d3d4:	00013403          	ld	s0,0(sp)
    8000d3d8:	01010113          	addi	sp,sp,16
    8000d3dc:	00008067          	ret

000000008000d3e0 <_ZN14PCBWrapperUser11wrapperUserEPFvPvES0_>:

void PCBWrapperUser::wrapperUser(Body body, void* args)
{
    8000d3e0:	ff010113          	addi	sp,sp,-16
    8000d3e4:	00113423          	sd	ra,8(sp)
    8000d3e8:	00813023          	sd	s0,0(sp)
    8000d3ec:	01010413          	addi	s0,sp,16
    8000d3f0:	00050793          	mv	a5,a0
    body(args);
    8000d3f4:	00058513          	mv	a0,a1
    8000d3f8:	000780e7          	jalr	a5
    thread_exit();
    8000d3fc:	fffff097          	auipc	ra,0xfffff
    8000d400:	d30080e7          	jalr	-720(ra) # 8000c12c <_Z11thread_exitv>
    8000d404:	00813083          	ld	ra,8(sp)
    8000d408:	00013403          	ld	s0,0(sp)
    8000d40c:	01010113          	addi	sp,sp,16
    8000d410:	00008067          	ret

000000008000d414 <_ZN4_semdlEPv>:
//

#include "../../h/_sem.hpp"
#include "../../h/syscall_c.hpp"

void _sem::operator delete(void *p) {
    8000d414:	ff010113          	addi	sp,sp,-16
    8000d418:	00113423          	sd	ra,8(sp)
    8000d41c:	00813023          	sd	s0,0(sp)
    8000d420:	01010413          	addi	s0,sp,16
    sem_close((sem_t)p);
    8000d424:	fffff097          	auipc	ra,0xfffff
    8000d428:	d68080e7          	jalr	-664(ra) # 8000c18c <_Z9sem_closeP4_sem>
}
    8000d42c:	00813083          	ld	ra,8(sp)
    8000d430:	00013403          	ld	s0,0(sp)
    8000d434:	01010113          	addi	sp,sp,16
    8000d438:	00008067          	ret
	...

000000008000e000 <userDataStart>:
    8000e000:	7542                	ld	a0,48(sp)
    8000e002:	6666                	ld	a2,88(sp)
    8000e004:	7265                	lui	tp,0xffff9
    8000e006:	6420                	ld	s0,72(s0)
    8000e008:	6c65                	lui	s8,0x19
    8000e00a:	7465                	lui	s0,0xffff9
    8000e00c:	6465                	lui	s0,0x19
    8000e00e:	0a21                	addi	s4,s4,8
	...
    8000e018:	6548                	ld	a0,136(a0)
    8000e01a:	6c6c                	ld	a1,216(s0)
    8000e01c:	0000206f          	j	8001001c <end+0x101c>
    8000e020:	2120                	fld	fs0,64(a0)
    8000e022:	000a                	c.slli	zero,0x2
    8000e024:	0000                	unimp
	...

000000008000e028 <digits>:
    8000e028:	3130 3332 3534 3736 3938 4241 4443 4645     0123456789ABCDEF
	...

000000008000e040 <_ZTV14PeriodicThread>:
	...
    8000e050:	d338 8000 0000 0000 d36c 8000 0000 0000     8.......l.......
    8000e060:	d308 8000 0000 0000 d320 8000 0000 0000     ........ .......

000000008000e070 <_ZTV6Thread>:
	...
    8000e080:	ceec 8000 0000 0000 cfbc 8000 0000 0000     ................
    8000e090:	d308 8000 0000 0000                         ........

000000008000e098 <_ZTV9Semaphore>:
	...
    8000e0a8:	cf2c 8000 0000 0000 cffc 8000 0000 0000     ,...............

000000008000e0b8 <lockPrint>:
	...

000000008000e0c0 <finished>:
	...
    8000e0c8:	0010 0000 0000 0000 7a03 0052 7c01 0101     .........zR..|..
    8000e0d8:	0d1b 0002 0020 0000 0018 0000 df3c ffff     .... .......<...
    8000e0e8:	0030 0000 4400 100e 8844 4402 000c 0000     0....D..D..D....
    8000e0f8:	0c00 1002 0e44 0000 0020 0000 003c 0000     ....D... ...<...
    8000e108:	df48 ffff 002c 0000 4400 100e 8844 4402     H...,....D..D..D
    8000e118:	000c 0000 0c00 1002 0e44 0000 0034 0000     ........D...4...
    8000e128:	0060 0000 df50 ffff 0090 0000 4400 000e     `...P........D..
	...
    8000e140:	9300 440a 080c 0000 0000 0000 0c00 3002     ...D...........0
    8000e150:	c944 d244 d344 0e44 4400 000b 0020 0000     D.D.D.D..D.. ...
    8000e160:	0098 0000 dfa8 ffff 0020 0000 4400 100e     ........ ....D..
    8000e170:	8844 4402 000c 0000 0c00 1002 0e44 0000     D..D........D...
    8000e180:	0020 0000 00bc 0000 dfa4 ffff 0028 0000      ...........(...
    8000e190:	4400 100e 8844 4402 000c 0000 0c00 1002     .D..D..D........
    8000e1a0:	0e44 0000 0020 0000 00e0 0000 dfa8 ffff     D... ...........
    8000e1b0:	0038 0000 4400 100e 8844 4402 000c 0000     8....D..D..D....
    8000e1c0:	0c00 1002 0e44 0000 0020 0000 0104 0000     ....D... .......
    8000e1d0:	dfbc ffff 002c 0000 4400 100e 8844 4402     ....,....D..D..D
    8000e1e0:	000c 0000 0c00 1002 0e44 0000 0020 0000     ........D... ...
    8000e1f0:	0128 0000 dfc4 ffff 002c 0000 4400 100e     (.......,....D..
    8000e200:	8844 4402 000c 0000 0c00 1002 0e44 0000     D..D........D...
    8000e210:	0020 0000 014c 0000 dfcc ffff 002c 0000      ...L.......,...
    8000e220:	4400 100e 8844 4402 000c 0000 0c00 1002     .D..D..D........
    8000e230:	0e44 0000 0020 0000 0170 0000 dfd4 ffff     D... ...p.......
    8000e240:	002c 0000 4400 100e 8844 4402 000c 0000     ,....D..D..D....
    8000e250:	0c00 1002 0e44 0000 0020 0000 0194 0000     ....D... .......
    8000e260:	dfdc ffff 002c 0000 4400 100e 8844 4402     ....,....D..D..D
    8000e270:	000c 0000 0c00 1002 0e44 0000 0034 0000     ........D...4...
    8000e280:	01b8 0000 dfe4 ffff 0090 0000 4400 000e     .............D..
	...
    8000e298:	9300 440a 080c 0000 0000 0000 0c00 3002     ...D...........0
    8000e2a8:	c944 d244 d344 0e44 4400 000b 0020 0000     D.D.D.D..D.. ...
    8000e2b8:	01f0 0000 e03c ffff 0028 0000 4400 100e     ....<...(....D..
    8000e2c8:	8844 4402 000c 0000 0c00 1002 0e44 0000     D..D........D...
    8000e2d8:	0020 0000 0214 0000 e040 ffff 0024 0000      .......@...$...
    8000e2e8:	4400 100e 8844 4402 000c 0000 0c00 1002     .D..D..D........
    8000e2f8:	0e44 0000 0020 0000 0238 0000 e040 ffff     D... ...8...@...
    8000e308:	002c 0000 4400 100e 8844 4402 000c 0000     ,....D..D..D....
    8000e318:	0c00 1002 0e44 0000 0010 0000 0000 0000     ....D...........
    8000e328:	7a03 0052 7c01 0101 0d1b 0002 0028 0000     .zR..|......(...
    8000e338:	0018 0000 e034 ffff 0028 0000 4400 000e     ....4...(....D..
    8000e348:	0000 8800 4404 080c 0000 0000 0c00 1002     .....D..........
    8000e358:	0e44 0000 0000 0000 0010 0000 0000 0000     D...............
    8000e368:	7a03 0052 7c01 0101 0d1b 0002 0028 0000     .zR..|......(...
    8000e378:	0018 0000 e01c ffff 007c 0000 4400 000e     ........|....D..
    8000e388:	0000 0000 8900 4406 080c 0200 0000 0000     .......D........
    8000e398:	020c 4420 44c9 000e 0034 0000 0044 0000     .. D.D..4...D...
    8000e3a8:	e06c ffff 00cc 0000 4400 000e 0000 0000     l........D......
    8000e3b8:	0000 0000 0000 9400 440c 080c 0200 0000     .........D......
    8000e3c8:	0000 020c 4430 44c9 44d2 44d3 44d4 000e     ....0D.D.D.D.D..
    8000e3d8:	0020 0000 007c 0000 e100 ffff 0050 0000      ...|.......P...
    8000e3e8:	4400 100e 8844 4402 000c 0000 0c00 1002     .D..D..D........
    8000e3f8:	0e44 0000 0030 0000 00a0 0000 e12c ffff     D...0.......,...
    8000e408:	0114 0000 4400 000e 0000 0000 0000 0000     .....D..........
    8000e418:	9300 440a 080c 0200 0000 0000 020c 4440     ...D..........@D
    8000e428:	44c9 44d2 44d3 000e 0018 0000 0000 0000     .D.D.D..........
    8000e438:	7a03 4c50 0052 7c01 0701 4d9b ffa4 1bff     .zPLR..|...M....
    8000e448:	0d1b 0002 0038 0000 0020 0000 e1f0 ffff     ....8... .......
    8000e458:	0164 0000 6904 ffa3 44ff 000e 0000 0000     d....i...D......
    8000e468:	0000 0000 9300 440a 080c 0000 0000 0000     .......D........
    8000e478:	0c00 3002 c944 d244 d344 0e44 4400 000b     ...0D.D.D.D..D..
    8000e488:	0010 0000 0000 0000 7a03 0052 7c01 0101     .........zR..|..
    8000e498:	0d1b 0002 002c 0000 0018 0000 e304 ffff     ....,...........
    8000e4a8:	0090 0000 4400 000e 0000 0000 0000 9200     .....D..........
    8000e4b8:	4408 080c 0200 0000 0000 020c 4420 44c9     .D.......... D.D
    8000e4c8:	44d2 000e 002c 0000 0048 0000 e364 ffff     .D..,...H...d...
    8000e4d8:	008c 0000 4400 000e 0000 0000 0000 9200     .....D..........
    8000e4e8:	4408 080c 0200 0000 0000 020c 4420 44c9     .D.......... D.D
    8000e4f8:	44d2 000e 0030 0000 0078 0000 e3c0 ffff     .D..0...x.......
    8000e508:	0088 0000 4400 000e 0000 0000 0000 9200     .....D..........
    8000e518:	4408 080c 0000 0000 0000 0c00 2002 c944     .D........... D.
    8000e528:	d244 0e44 4400 000b 002c 0000 0104 0000     D.D..D..,.......
    8000e538:	e414 ffff 0100 0000 2604 ffa3 44ff 000e     .........&...D..
    8000e548:	0000 0000 8900 4406 080c 0200 0000 0000     .......D........
    8000e558:	020c 4420 44c9 000e 0010 0000 0000 0000     .. D.D..........
    8000e568:	7a03 0052 7c01 0101 0d1b 0002 002c 0000     .zR..|......,...
    8000e578:	0018 0000 e4d0 ffff 00a4 0000 4400 000e     .............D..
    8000e588:	0000 0000 0000 9200 4408 080c 0200 0000     .........D......
    8000e598:	0000 020c 4420 44c9 44d2 000e 0028 0000     .... D.D.D..(...
    8000e5a8:	0048 0000 e544 ffff 0088 0000 4400 000e     H...D........D..
    8000e5b8:	0000 0000 8900 4406 080c 0200 0000 0000     .......D........
    8000e5c8:	020c 4440 44c9 000e 0024 0000 0074 0000     ..@D.D..$...t...
    8000e5d8:	e5a0 ffff 0028 0000 4400 000e 0000 8800     ....(....D......
    8000e5e8:	4404 080c 0000 0000 0c00 1002 0e44 0000     .D..........D...
    8000e5f8:	0010 0000 0000 0000 7a03 0052 7c01 0101     .........zR..|..
    8000e608:	0d1b 0002 002c 0000 0018 0000 e58c ffff     ....,...........
    8000e618:	009c 0000 4400 000e 0000 0000 0000 9200     .....D..........
    8000e628:	4408 080c 0200 0000 0000 020c 4420 44c9     .D.......... D.D
    8000e638:	44d2 000e 002c 0000 0048 0000 e5f8 ffff     .D..,...H.......
    8000e648:	0090 0000 4400 000e 0000 0000 0000 9200     .....D..........
    8000e658:	4408 080c 0200 0000 0000 020c 4420 44c9     .D.......... D.D
    8000e668:	44d2 000e 002c 0000 0078 0000 e658 ffff     .D..,...x...X...
    8000e678:	008c 0000 4400 000e 0000 0000 0000 9200     .....D..........
    8000e688:	4408 080c 0200 0000 0000 020c 4420 44c9     .D.......... D.D
    8000e698:	44d2 000e 0030 0000 00a8 0000 e6b4 ffff     .D..0...........
    8000e6a8:	0088 0000 4400 000e 0000 0000 0000 9200     .....D..........
    8000e6b8:	4408 080c 0000 0000 0000 0c00 2002 c944     .D........... D.
    8000e6c8:	d244 0e44 4400 000b 0018 0000 0000 0000     D.D..D..........
    8000e6d8:	7a03 4c50 0052 7c01 0701 ad9b ffa1 1bff     .zPLR..|........
    8000e6e8:	0d1b 0002 0030 0000 0020 0000 e6ec ffff     ....0... .......
    8000e6f8:	00e0 0000 6e04 ffa1 44ff 000e 0000 0000     .....n...D......
    8000e708:	8900 4406 080c 0200 0000 0000 020c 4420     ...D.......... D
    8000e718:	44c9 000e 0000 0000 0010 0000 0000 0000     .D..............
    8000e728:	7a03 0052 7c01 0101 0d1b 0002 0020 0000     .zR..|...... ...
    8000e738:	0018 0000 ebcc ffff 0018 0000 4400 100e     .............D..
    8000e748:	8844 4402 000c 0000 0c00 1002 0e44 0000     D..D........D...
    8000e758:	0020 0000 003c 0000 ebc0 ffff 0018 0000      ...<...........
    8000e768:	4400 100e 8844 4402 000c 0000 0c00 1002     .D..D..D........
    8000e778:	0e44 0000 0024 0000 0060 0000 e73c ffff     D...$...`...<...
    8000e788:	002c 0000 4400 000e 0000 8800 4404 080c     ,....D.......D..
    8000e798:	0000 0000 0c00 1002 0e44 0000 0018 0000     ........D.......
    8000e7a8:	0000 0000 7a03 4c50 0052 7c01 0701 d99b     .....zPLR..|....
    8000e7b8:	ffa0 1bff 0d1b 0002 0028 0000 0020 0000     ........(... ...
    8000e7c8:	e724 ffff 0040 0000 9e04 ffa0 58ff 000e     $...@........X..
    8000e7d8:	0000 8800 4404 080c 0000 0000 0c00 1002     .....D..........
    8000e7e8:	0e44 0000 0024 0000 00d0 0000 eb44 ffff     D...$.......D...
    8000e7f8:	0034 0000 4400 000e 0000 8800 4404 080c     4....D.......D..
    8000e808:	0000 0000 0c00 1002 0e44 0000 0028 0000     ........D...(...
    8000e818:	0074 0000 e710 ffff 0040 0000 4e04 ffa0     t.......@....N..
    8000e828:	58ff 000e 0000 8800 4404 080c 0000 0000     .X.......D......
    8000e838:	0c00 1002 0e44 0000 0024 0000 0124 0000     ....D...$...$...
    8000e848:	e724 ffff 0028 0000 4400 000e 0000 8800     $...(....D......
    8000e858:	4404 080c 0000 0000 0c00 1002 0e44 0000     .D..........D...
    8000e868:	0024 0000 014c 0000 e724 ffff 0028 0000     $...L...$...(...
    8000e878:	4400 000e 0000 8800 4404 080c 0000 0000     .D.......D......
    8000e888:	0c00 1002 0e44 0000 0028 0000 0174 0000     ....D...(...t...
    8000e898:	e724 ffff 0040 0000 4400 000e 0000 0000     $...@....D......
    8000e8a8:	8900 4406 080c 0000 0000 0c00 2002 c944     ...D......... D.
    8000e8b8:	0e44 0000 0028 0000 01a0 0000 e738 ffff     D...(.......8...
    8000e8c8:	0040 0000 4400 000e 0000 0000 8900 4406     @....D.........D
    8000e8d8:	080c 0000 0000 0c00 2002 c944 0e44 0000     ......... D.D...
    8000e8e8:	0028 0000 01cc 0000 ea7c ffff 004c 0000     (.......|...L...
    8000e8f8:	4400 000e 0000 0000 8900 4406 080c 0000     .D.........D....
    8000e908:	0000 0c00 2002 c944 0e44 0000 0024 0000     ..... D.D...$...
    8000e918:	01f8 0000 e720 ffff 0038 0000 4c00 000e     .... ...8....L..
    8000e928:	0000 8800 4404 080c 0000 0000 0c00 1002     .....D..........
    8000e938:	0e44 0000 0024 0000 0220 0000 e730 ffff     D...$... ...0...
    8000e948:	0028 0000 4400 000e 0000 8800 4404 080c     (....D.......D..
    8000e958:	0000 0000 0c00 1002 0e44 0000 0024 0000     ........D...$...
    8000e968:	0248 0000 e730 ffff 0028 0000 4400 000e     H...0...(....D..
    8000e978:	0000 8800 4404 080c 0000 0000 0c00 1002     .....D..........
    8000e988:	0e44 0000 0020 0000 0270 0000 e730 ffff     D... ...p...0...
    8000e998:	0040 0000 4400 000e 0000 0000 0000 9200     @....D..........
    8000e9a8:	4408 080c 0000 0000 0024 0000 0294 0000     .D......$.......
    8000e9b8:	e74c ffff 003c 0000 4400 000e 0000 8800     L...<....D......
    8000e9c8:	4404 080c 0000 0000 0c00 1002 0e44 0000     .D..........D...
    8000e9d8:	0024 0000 02bc 0000 e760 ffff 0048 0000     $.......`...H...
    8000e9e8:	4400 000e 0000 8800 4404 080c 0000 0000     .D.......D......
    8000e9f8:	0c00 1002 0e44 0000 0024 0000 02e4 0000     ....D...$.......
    8000ea08:	e780 ffff 0038 0000 4c00 000e 0000 8800     ....8....L......
    8000ea18:	4404 080c 0000 0000 0c00 1002 0e44 0000     .D..........D...
    8000ea28:	0028 0000 030c 0000 e790 ffff 004c 0000     (...........L...
    8000ea38:	4400 000e 0000 0000 8900 4406 080c 0000     .D.........D....
    8000ea48:	0000 0c00 2002 c944 0e44 0000 0024 0000     ..... D.D...$...
    8000ea58:	0338 0000 e7b0 ffff 0038 0000 4c00 000e     8.......8....L..
    8000ea68:	0000 8800 4404 080c 0000 0000 0c00 1002     .....D..........
    8000ea78:	0e44 0000 0024 0000 0360 0000 e7c0 ffff     D...$...`.......
    8000ea88:	0028 0000 4400 000e 0000 8800 4404 080c     (....D.......D..
    8000ea98:	0000 0000 0c00 1002 0e44 0000 0024 0000     ........D...$...
    8000eaa8:	0388 0000 e7c0 ffff 0028 0000 4400 000e     ........(....D..
    8000eab8:	0000 8800 4404 080c 0000 0000 0c00 1002     .....D..........
    8000eac8:	0e44 0000 0030 0000 03b0 0000 e7c0 ffff     D...0...........
    8000ead8:	0074 0000 4400 000e 0000 0000 0000 9200     t....D..........
    8000eae8:	4408 080c 0200 0000 0000 020c 4420 44c9     .D.......... D.D
    8000eaf8:	44d2 000e 0000 0000 0010 0000 0000 0000     .D..............
    8000eb08:	7a03 0052 7c01 0101 0d1b 0002 0024 0000     .zR..|......$...
    8000eb18:	0018 0000 e89c ffff 0028 0000 4400 000e     ........(....D..
    8000eb28:	0000 8800 4404 080c 0000 0000 0c00 1002     .....D..........
    8000eb38:	0e44 0000 0028 0000 0040 0000 e89c ffff     D...(...@.......
    8000eb48:	0034 0000 4400 000e 0000 8800 4404 080c     4....D.......D..
    8000eb58:	0000 0000 0c00 1002 0e44 0000 0000 0000     ........D.......
    8000eb68:	0010 0000 0000 0000 7a03 0052 7c01 0101     .........zR..|..
    8000eb78:	0d1b 0002 0028 0000 0018 0000 e890 ffff     ....(...........
    8000eb88:	0028 0000 4400 000e 0000 8800 4404 080c     (....D.......D..
    8000eb98:	0000 0000 0c00 1002 0e44 0000 0000 0000     ........D.......
