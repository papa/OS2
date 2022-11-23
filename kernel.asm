
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00009117          	auipc	sp,0x9
    80000004:	db813103          	ld	sp,-584(sp) # 80008db8 <_GLOBAL_OFFSET_TABLE_+0x40>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	009040ef          	jal	ra,80004824 <start>

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
    80001088:	371010ef          	jal	ra,80002bf8 <_ZN5Riscv20handleSupervisorTrapEv>

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

0000000080001218 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001218:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    8000121c:	00b29a63          	bne	t0,a1,80001230 <fail>
    sc.w t0, a2, (a0)      # Try to update.
    80001220:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001224:	fe029ae3          	bnez	t0,80001218 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001228:	00000513          	li	a0,0
    jr ra                  # Return.
    8000122c:	00008067          	ret

0000000080001230 <fail>:
    fail:
    li a0, 1               # Set return to failure.
    80001230:	00100513          	li	a0,1
    80001234:	00008067          	ret

0000000080001238 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3PCB13contextSwitchEPNS_7ContextES1_
.type _ZN3PCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3PCB13contextSwitchEPNS_7ContextES1_:
    #a0 - &old->Context
    #a1 - &running->Context
    sd sp, 0 * 8(a0)
    80001238:	00253023          	sd	sp,0(a0) # 1000 <_entry-0x7ffff000>
    sd ra, 1 * 8(a0)
    8000123c:	00153423          	sd	ra,8(a0)

    ld sp, 0 * 8(a1)
    80001240:	0005b103          	ld	sp,0(a1)
    ld ra, 1 * 8(a1)
    80001244:	0085b083          	ld	ra,8(a1)

    ret
    80001248:	00008067          	ret

000000008000124c <_ZN3PCB20contextSwitchExitingEPNS_7ContextE>:

.global _ZN3PCB20contextSwitchExitingEPNS_7ContextE
.type _ZN3PCB20contextSwitchExitingEPNS_7ContextE, @function
_ZN3PCB20contextSwitchExitingEPNS_7ContextE:
    #a0 - &running->Context
    ld sp, 0 * 8(a0)
    8000124c:	00053103          	ld	sp,0(a0)
    ld ra, 1 * 8(a0)
    80001250:	00853083          	ld	ra,8(a0)

    80001254:	00008067          	ret

0000000080001258 <_Z9mem_allocm>:
//

#include "../h/syscall_c.hpp"

void* mem_alloc(size_t size)
{
    80001258:	ff010113          	addi	sp,sp,-16
    8000125c:	00813423          	sd	s0,8(sp)
    80001260:	01010413          	addi	s0,sp,16
    //prepare for system call
    uint64 numBlocks = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80001264:	03f50513          	addi	a0,a0,63
    80001268:	00655513          	srli	a0,a0,0x6
    __asm__ volatile("mv a1, %0" :  : "r"(numBlocks));
    8000126c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 1");
    80001270:	00100513          	li	a0,1

    __asm__ volatile("ecall"); // system call
    80001274:	00000073          	ecall

    //get the address
    uint64 allocatedAddr = 0x01;
    __asm__ volatile("mv %0, a0" : "=r"(allocatedAddr));
    80001278:	00050513          	mv	a0,a0

    return (void*)allocatedAddr;
}
    8000127c:	00813403          	ld	s0,8(sp)
    80001280:	01010113          	addi	sp,sp,16
    80001284:	00008067          	ret

0000000080001288 <_Z8mem_freePv>:

int mem_free(void* p)
{
    80001288:	ff010113          	addi	sp,sp,-16
    8000128c:	00813423          	sd	s0,8(sp)
    80001290:	01010413          	addi	s0,sp,16
    //prepare for system call
    uint64 addrFree = (uint64)p;
    __asm__ volatile("mv a1, %0" :  : "r"(addrFree));
    80001294:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 2");
    80001298:	00200513          	li	a0,2

    __asm__ volatile("ecall"); // system call
    8000129c:	00000073          	ecall

    //get the result of system call
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800012a0:	00050513          	mv	a0,a0

    return result;
}
    800012a4:	0005051b          	sext.w	a0,a0
    800012a8:	00813403          	ld	s0,8(sp)
    800012ac:	01010113          	addi	sp,sp,16
    800012b0:	00008067          	ret

00000000800012b4 <_Z13thread_createPP7_threadPFvPvES2_>:

int thread_create(thread_t* handle, void (*start_routine)(void*), void* args)
{
    800012b4:	fd010113          	addi	sp,sp,-48
    800012b8:	02113423          	sd	ra,40(sp)
    800012bc:	02813023          	sd	s0,32(sp)
    800012c0:	00913c23          	sd	s1,24(sp)
    800012c4:	01213823          	sd	s2,16(sp)
    800012c8:	01313423          	sd	s3,8(sp)
    800012cc:	03010413          	addi	s0,sp,48
    800012d0:	00050493          	mv	s1,a0
    800012d4:	00058913          	mv	s2,a1
    800012d8:	00060993          	mv	s3,a2
    uint64 handleLocal = (uint64)handle;
    uint64 startRLocal = (uint64)start_routine;
    uint64 argsLocal = (uint64)args;
    uint64 opLocal = 0x11;

    void * stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    800012dc:	00001537          	lui	a0,0x1
    800012e0:	00000097          	auipc	ra,0x0
    800012e4:	f78080e7          	jalr	-136(ra) # 80001258 <_Z9mem_allocm>
    uint64 stackPointerLocal = (uint64)stack_space;
    //todo
    //handle this error
    if(stack_space == 0)
    800012e8:	04050263          	beqz	a0,8000132c <_Z13thread_createPP7_threadPFvPvES2_+0x78>
        return -1;

    //initialize registers
    __asm__ volatile("mv a4, %0" :  : "r"((uint64)stackPointerLocal));
    800012ec:	00050713          	mv	a4,a0
    __asm__ volatile("mv a3, %0" :  : "r"((uint64)argsLocal));
    800012f0:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)startRLocal));
    800012f4:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handleLocal));
    800012f8:	00048593          	mv	a1,s1
    __asm__ volatile("mv a0, %0" :  : "r"((uint64)opLocal));
    800012fc:	01100793          	li	a5,17
    80001300:	00078513          	mv	a0,a5


    __asm__ volatile("ecall");
    80001304:	00000073          	ecall

    //get the result
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001308:	00050513          	mv	a0,a0

    return result;
    8000130c:	0005051b          	sext.w	a0,a0
}
    80001310:	02813083          	ld	ra,40(sp)
    80001314:	02013403          	ld	s0,32(sp)
    80001318:	01813483          	ld	s1,24(sp)
    8000131c:	01013903          	ld	s2,16(sp)
    80001320:	00813983          	ld	s3,8(sp)
    80001324:	03010113          	addi	sp,sp,48
    80001328:	00008067          	ret
        return -1;
    8000132c:	fff00513          	li	a0,-1
    80001330:	fe1ff06f          	j	80001310 <_Z13thread_createPP7_threadPFvPvES2_+0x5c>

0000000080001334 <_Z15thread_dispatchv>:

void thread_dispatch()
{
    80001334:	ff010113          	addi	sp,sp,-16
    80001338:	00813423          	sd	s0,8(sp)
    8000133c:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    80001340:	01300513          	li	a0,19
    __asm__ volatile("ecall");
    80001344:	00000073          	ecall
}
    80001348:	00813403          	ld	s0,8(sp)
    8000134c:	01010113          	addi	sp,sp,16
    80001350:	00008067          	ret

0000000080001354 <_Z11thread_exitv>:

int thread_exit()
{
    80001354:	ff010113          	addi	sp,sp,-16
    80001358:	00813423          	sd	s0,8(sp)
    8000135c:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x12");
    80001360:	01200513          	li	a0,18

    __asm__ volatile("ecall");
    80001364:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001368:	00050513          	mv	a0,a0
    return result;
}
    8000136c:	0005051b          	sext.w	a0,a0
    80001370:	00813403          	ld	s0,8(sp)
    80001374:	01010113          	addi	sp,sp,16
    80001378:	00008067          	ret

000000008000137c <_Z8sem_openPP4_semj>:

int sem_open(sem_t* handle, unsigned int x)
{
    8000137c:	ff010113          	addi	sp,sp,-16
    80001380:	00813423          	sd	s0,8(sp)
    80001384:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)x));
    80001388:	02059593          	slli	a1,a1,0x20
    8000138c:	0205d593          	srli	a1,a1,0x20
    80001390:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    80001394:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x21");
    80001398:	02100513          	li	a0,33

    __asm__ volatile("ecall");
    8000139c:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800013a0:	00050513          	mv	a0,a0
    return result;
}
    800013a4:	0005051b          	sext.w	a0,a0
    800013a8:	00813403          	ld	s0,8(sp)
    800013ac:	01010113          	addi	sp,sp,16
    800013b0:	00008067          	ret

00000000800013b4 <_Z9sem_closeP4_sem>:


int sem_close(sem_t handle)
{
    800013b4:	ff010113          	addi	sp,sp,-16
    800013b8:	00813423          	sd	s0,8(sp)
    800013bc:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    800013c0:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x22");
    800013c4:	02200513          	li	a0,34

    __asm__ volatile("ecall");
    800013c8:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800013cc:	00050513          	mv	a0,a0
    return result;
}
    800013d0:	0005051b          	sext.w	a0,a0
    800013d4:	00813403          	ld	s0,8(sp)
    800013d8:	01010113          	addi	sp,sp,16
    800013dc:	00008067          	ret

00000000800013e0 <_Z8sem_waitP4_sem>:

int sem_wait(sem_t id)
{
    800013e0:	ff010113          	addi	sp,sp,-16
    800013e4:	00813423          	sd	s0,8(sp)
    800013e8:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)id));
    800013ec:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x23");
    800013f0:	02300513          	li	a0,35

    __asm__ volatile("ecall");
    800013f4:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800013f8:	00050513          	mv	a0,a0
    return result;
}
    800013fc:	0005051b          	sext.w	a0,a0
    80001400:	00813403          	ld	s0,8(sp)
    80001404:	01010113          	addi	sp,sp,16
    80001408:	00008067          	ret

000000008000140c <_Z10sem_signalP4_sem>:

int sem_signal(sem_t id)
{
    8000140c:	ff010113          	addi	sp,sp,-16
    80001410:	00813423          	sd	s0,8(sp)
    80001414:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)id));
    80001418:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x24");
    8000141c:	02400513          	li	a0,36

    __asm__ volatile("ecall");
    80001420:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001424:	00050513          	mv	a0,a0
    return result;
}
    80001428:	0005051b          	sext.w	a0,a0
    8000142c:	00813403          	ld	s0,8(sp)
    80001430:	01010113          	addi	sp,sp,16
    80001434:	00008067          	ret

0000000080001438 <_Z10time_sleepm>:

int time_sleep(uint64 time)
{
    80001438:	ff010113          	addi	sp,sp,-16
    8000143c:	00813423          	sd	s0,8(sp)
    80001440:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)time));
    80001444:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x31");
    80001448:	03100513          	li	a0,49

    __asm__ volatile("ecall");
    8000144c:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001450:	00050513          	mv	a0,a0
    return result;
}
    80001454:	0005051b          	sext.w	a0,a0
    80001458:	00813403          	ld	s0,8(sp)
    8000145c:	01010113          	addi	sp,sp,16
    80001460:	00008067          	ret

0000000080001464 <_Z12thread_startPv>:

int thread_start(void* p)
{
    80001464:	ff010113          	addi	sp,sp,-16
    80001468:	00813423          	sd	s0,8(sp)
    8000146c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)p));
    80001470:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x15");
    80001474:	01500513          	li	a0,21

    __asm__ volatile("ecall");
    80001478:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000147c:	00050513          	mv	a0,a0
    return result;
}
    80001480:	0005051b          	sext.w	a0,a0
    80001484:	00813403          	ld	s0,8(sp)
    80001488:	01010113          	addi	sp,sp,16
    8000148c:	00008067          	ret

0000000080001490 <_Z15thread_make_pcbPP7_threadPFvPvES2_>:

int thread_make_pcb(thread_t* handle, void(*start_routine)(void*), void *arg)
{
    80001490:	fd010113          	addi	sp,sp,-48
    80001494:	02113423          	sd	ra,40(sp)
    80001498:	02813023          	sd	s0,32(sp)
    8000149c:	00913c23          	sd	s1,24(sp)
    800014a0:	01213823          	sd	s2,16(sp)
    800014a4:	01313423          	sd	s3,8(sp)
    800014a8:	03010413          	addi	s0,sp,48
    800014ac:	00050493          	mv	s1,a0
    800014b0:	00058913          	mv	s2,a1
    800014b4:	00060993          	mv	s3,a2
    uint64 handleLocal = (uint64)handle;
    uint64 startRLocal = (uint64)start_routine;
    uint64 argsLocal = (uint64)arg;
    uint64 opLocal = 0x14;

    void * stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    800014b8:	00001537          	lui	a0,0x1
    800014bc:	00000097          	auipc	ra,0x0
    800014c0:	d9c080e7          	jalr	-612(ra) # 80001258 <_Z9mem_allocm>
    uint64 stackPointerLocal = (uint64)stack_space;
    if(stack_space == 0)
    800014c4:	04050263          	beqz	a0,80001508 <_Z15thread_make_pcbPP7_threadPFvPvES2_+0x78>
        return -1;

    //initialize registers
    __asm__ volatile("mv a4, %0" :  : "r"((uint64)stackPointerLocal));
    800014c8:	00050713          	mv	a4,a0
    __asm__ volatile("mv a3, %0" :  : "r"((uint64)argsLocal));
    800014cc:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)startRLocal));
    800014d0:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handleLocal));
    800014d4:	00048593          	mv	a1,s1
    __asm__ volatile("mv a0, %0" :  : "r"((uint64)opLocal));
    800014d8:	01400793          	li	a5,20
    800014dc:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    800014e0:	00000073          	ecall

    //get the result
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800014e4:	00050513          	mv	a0,a0
    return result;
    800014e8:	0005051b          	sext.w	a0,a0
}
    800014ec:	02813083          	ld	ra,40(sp)
    800014f0:	02013403          	ld	s0,32(sp)
    800014f4:	01813483          	ld	s1,24(sp)
    800014f8:	01013903          	ld	s2,16(sp)
    800014fc:	00813983          	ld	s3,8(sp)
    80001500:	03010113          	addi	sp,sp,48
    80001504:	00008067          	ret
        return -1;
    80001508:	fff00513          	li	a0,-1
    8000150c:	fe1ff06f          	j	800014ec <_Z15thread_make_pcbPP7_threadPFvPvES2_+0x5c>

0000000080001510 <_Z4getcv>:

char getc()
{
    80001510:	ff010113          	addi	sp,sp,-16
    80001514:	00813423          	sd	s0,8(sp)
    80001518:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x41");
    8000151c:	04100513          	li	a0,65

    __asm__ volatile("ecall");
    80001520:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001524:	00050513          	mv	a0,a0
    return (char)result;
}
    80001528:	0ff57513          	andi	a0,a0,255
    8000152c:	00813403          	ld	s0,8(sp)
    80001530:	01010113          	addi	sp,sp,16
    80001534:	00008067          	ret

0000000080001538 <_Z4putcc>:

void putc(char c)
{
    80001538:	ff010113          	addi	sp,sp,-16
    8000153c:	00813423          	sd	s0,8(sp)
    80001540:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)c));
    80001544:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x42");
    80001548:	04200513          	li	a0,66
    __asm__ volatile("ecall");
    8000154c:	00000073          	ecall
}
    80001550:	00813403          	ld	s0,8(sp)
    80001554:	01010113          	addi	sp,sp,16
    80001558:	00008067          	ret

000000008000155c <_Z20sysCallGetCharOutputv>:

char sysCallGetCharOutput()
{
    8000155c:	ff010113          	addi	sp,sp,-16
    80001560:	00813423          	sd	s0,8(sp)
    80001564:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x43");
    80001568:	04300513          	li	a0,67

    __asm__ volatile("ecall");
    8000156c:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001570:	00050513          	mv	a0,a0
    return (char)result;
}
    80001574:	0ff57513          	andi	a0,a0,255
    80001578:	00813403          	ld	s0,8(sp)
    8000157c:	01010113          	addi	sp,sp,16
    80001580:	00008067          	ret

0000000080001584 <_Z17thread_delete_pcbP7_thread>:

int thread_delete_pcb(thread_t handle)
{
    80001584:	ff010113          	addi	sp,sp,-16
    80001588:	00813423          	sd	s0,8(sp)
    8000158c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    80001590:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x16");
    80001594:	01600513          	li	a0,22
    __asm__ volatile("ecall");
    80001598:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000159c:	00050513          	mv	a0,a0
    return (char)result;
}
    800015a0:	0ff57513          	andi	a0,a0,255
    800015a4:	00813403          	ld	s0,8(sp)
    800015a8:	01010113          	addi	sp,sp,16
    800015ac:	00008067          	ret

00000000800015b0 <_ZN7_threaddlEPv>:
//

#include "../h/_thread.hpp"
#include "../h/syscall_c.hpp"

void _thread::operator delete(void *p) {
    800015b0:	ff010113          	addi	sp,sp,-16
    800015b4:	00113423          	sd	ra,8(sp)
    800015b8:	00813023          	sd	s0,0(sp)
    800015bc:	01010413          	addi	s0,sp,16
    thread_delete_pcb((thread_t)p);
    800015c0:	00000097          	auipc	ra,0x0
    800015c4:	fc4080e7          	jalr	-60(ra) # 80001584 <_Z17thread_delete_pcbP7_thread>
    800015c8:	00813083          	ld	ra,8(sp)
    800015cc:	00013403          	ld	s0,0(sp)
    800015d0:	01010113          	addi	sp,sp,16
    800015d4:	00008067          	ret

00000000800015d8 <_ZN3PCB6runnerEv>:
{
    Scheduler::put(this);
}

void PCB::runner()
{
    800015d8:	ff010113          	addi	sp,sp,-16
    800015dc:	00113423          	sd	ra,8(sp)
    800015e0:	00813023          	sd	s0,0(sp)
    800015e4:	01010413          	addi	s0,sp,16
    //trapPrintString("Runner started...\n");
    Riscv::popSppSpie();
    800015e8:	00001097          	auipc	ra,0x1
    800015ec:	4a8080e7          	jalr	1192(ra) # 80002a90 <_ZN5Riscv10popSppSpieEv>

    running->body(running->args);
    800015f0:	00008797          	auipc	a5,0x8
    800015f4:	8607b783          	ld	a5,-1952(a5) # 80008e50 <_ZN3PCB7runningE>
    800015f8:	0287b703          	ld	a4,40(a5)
    800015fc:	0307b503          	ld	a0,48(a5)
    80001600:	000700e7          	jalr	a4

    //printString("Runner ended...\n");

    thread_exit();
    80001604:	00000097          	auipc	ra,0x0
    80001608:	d50080e7          	jalr	-688(ra) # 80001354 <_Z11thread_exitv>
}
    8000160c:	00813083          	ld	ra,8(sp)
    80001610:	00013403          	ld	s0,0(sp)
    80001614:	01010113          	addi	sp,sp,16
    80001618:	00008067          	ret

000000008000161c <_ZN3PCBC1EPFvPvES0_S0_m>:
PCB::PCB(Body body, void *args, void* stack_space, uint64 timeSlice) :
    8000161c:	ff010113          	addi	sp,sp,-16
    80001620:	00813423          	sd	s0,8(sp)
    80001624:	01010413          	addi	s0,sp,16
    })
    80001628:	00050023          	sb	zero,0(a0) # 1000 <_entry-0x7ffff000>
    8000162c:	00e53c23          	sd	a4,24(a0)
    80001630:	02053023          	sd	zero,32(a0)
    80001634:	02b53423          	sd	a1,40(a0)
    80001638:	02c53823          	sd	a2,48(a0)
    8000163c:	02d53c23          	sd	a3,56(a0)
        (uint64)((char*)stack_space + DEFAULT_STACK_SIZE),
    80001640:	000017b7          	lui	a5,0x1
    80001644:	00f686b3          	add	a3,a3,a5
    })
    80001648:	04d53423          	sd	a3,72(a0)
    8000164c:	00000797          	auipc	a5,0x0
    80001650:	f8c78793          	addi	a5,a5,-116 # 800015d8 <_ZN3PCB6runnerEv>
    80001654:	04f53823          	sd	a5,80(a0)
    80001658:	04050c23          	sb	zero,88(a0)
    nextPCB = 0;
    8000165c:	00053423          	sd	zero,8(a0)
}
    80001660:	00813403          	ld	s0,8(sp)
    80001664:	01010113          	addi	sp,sp,16
    80001668:	00008067          	ret

000000008000166c <_ZN3PCB5sleepEm>:
{
    8000166c:	ff010113          	addi	sp,sp,-16
    80001670:	00813423          	sd	s0,8(sp)
    80001674:	01010413          	addi	s0,sp,16
}
    80001678:	00813403          	ld	s0,8(sp)
    8000167c:	01010113          	addi	sp,sp,16
    80001680:	00008067          	ret

0000000080001684 <_ZN3PCB5startEv>:
{
    80001684:	ff010113          	addi	sp,sp,-16
    80001688:	00113423          	sd	ra,8(sp)
    8000168c:	00813023          	sd	s0,0(sp)
    80001690:	01010413          	addi	s0,sp,16
    Scheduler::put(this);
    80001694:	00001097          	auipc	ra,0x1
    80001698:	ca8080e7          	jalr	-856(ra) # 8000233c <_ZN9Scheduler3putEP3PCB>
}
    8000169c:	00813083          	ld	ra,8(sp)
    800016a0:	00013403          	ld	s0,0(sp)
    800016a4:	01010113          	addi	sp,sp,16
    800016a8:	00008067          	ret

00000000800016ac <_ZN3PCB8dispatchEv>:

void PCB::dispatch()
{
    800016ac:	fe010113          	addi	sp,sp,-32
    800016b0:	00113c23          	sd	ra,24(sp)
    800016b4:	00813823          	sd	s0,16(sp)
    800016b8:	00913423          	sd	s1,8(sp)
    800016bc:	01213023          	sd	s2,0(sp)
    800016c0:	02010413          	addi	s0,sp,32
    //trapPrintString("Dispatch called...\n");
    PCB* old = running;
    800016c4:	00007497          	auipc	s1,0x7
    800016c8:	78c4b483          	ld	s1,1932(s1) # 80008e50 <_ZN3PCB7runningE>

    void* operator new(size_t size);
    void operator delete(void *p);

    enum State{READY, RUNNING, SUSPENDED, FINISHED, EXITING, SLEEPING};
    State getState() {return state;}
    800016cc:	0404a703          	lw	a4,64(s1)
    if(old->getState() == PCB::RUNNING)
    800016d0:	00100793          	li	a5,1
    800016d4:	04f70a63          	beq	a4,a5,80001728 <_ZN3PCB8dispatchEv+0x7c>
        Scheduler::put(old);
    PCB::running = Scheduler::get();
    800016d8:	00001097          	auipc	ra,0x1
    800016dc:	cb8080e7          	jalr	-840(ra) # 80002390 <_ZN9Scheduler3getEv>
    800016e0:	00007917          	auipc	s2,0x7
    800016e4:	77090913          	addi	s2,s2,1904 # 80008e50 <_ZN3PCB7runningE>
    800016e8:	00a93023          	sd	a0,0(s2)
    void setState(State s) {state = s;}
    800016ec:	00100793          	li	a5,1
    800016f0:	04f52023          	sw	a5,64(a0)
    PCB::running->setState(PCB::RUNNING);
    //trapPrintString("Switching context...\n");

    Riscv::changePrivMode();
    800016f4:	00001097          	auipc	ra,0x1
    800016f8:	4c4080e7          	jalr	1220(ra) # 80002bb8 <_ZN5Riscv14changePrivModeEv>

    PCB::contextSwitch(&old->context, &running->context);
    800016fc:	00093583          	ld	a1,0(s2)
    80001700:	04858593          	addi	a1,a1,72
    80001704:	04848513          	addi	a0,s1,72
    80001708:	00000097          	auipc	ra,0x0
    8000170c:	b30080e7          	jalr	-1232(ra) # 80001238 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
}
    80001710:	01813083          	ld	ra,24(sp)
    80001714:	01013403          	ld	s0,16(sp)
    80001718:	00813483          	ld	s1,8(sp)
    8000171c:	00013903          	ld	s2,0(sp)
    80001720:	02010113          	addi	sp,sp,32
    80001724:	00008067          	ret
        Scheduler::put(old);
    80001728:	00048513          	mv	a0,s1
    8000172c:	00001097          	auipc	ra,0x1
    80001730:	c10080e7          	jalr	-1008(ra) # 8000233c <_ZN9Scheduler3putEP3PCB>
    80001734:	fa5ff06f          	j	800016d8 <_ZN3PCB8dispatchEv+0x2c>

0000000080001738 <_ZN3PCBnwEm>:

void *PCB::operator new(size_t size) {
    80001738:	ff010113          	addi	sp,sp,-16
    8000173c:	00113423          	sd	ra,8(sp)
    80001740:	00813023          	sd	s0,0(sp)
    80001744:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmalloc(size);
    80001748:	00002097          	auipc	ra,0x2
    8000174c:	c08080e7          	jalr	-1016(ra) # 80003350 <_ZN15MemoryAllocator7kmallocEm>
}
    80001750:	00813083          	ld	ra,8(sp)
    80001754:	00013403          	ld	s0,0(sp)
    80001758:	01010113          	addi	sp,sp,16
    8000175c:	00008067          	ret

0000000080001760 <_ZN3PCBdlEPv>:

void PCB::operator delete(void *p) {
    80001760:	ff010113          	addi	sp,sp,-16
    80001764:	00113423          	sd	ra,8(sp)
    80001768:	00813023          	sd	s0,0(sp)
    8000176c:	01010413          	addi	s0,sp,16
    MemoryAllocator::kfree(p);
    80001770:	00002097          	auipc	ra,0x2
    80001774:	c44080e7          	jalr	-956(ra) # 800033b4 <_ZN15MemoryAllocator5kfreeEPv>
}
    80001778:	00813083          	ld	ra,8(sp)
    8000177c:	00013403          	ld	s0,0(sp)
    80001780:	01010113          	addi	sp,sp,16
    80001784:	00008067          	ret

0000000080001788 <_ZN3PCBD1Ev>:

PCB::~PCB()
    80001788:	ff010113          	addi	sp,sp,-16
    8000178c:	00113423          	sd	ra,8(sp)
    80001790:	00813023          	sd	s0,0(sp)
    80001794:	01010413          	addi	s0,sp,16
{
    MemoryAllocator::kfree(beginSP);
    80001798:	03853503          	ld	a0,56(a0)
    8000179c:	00002097          	auipc	ra,0x2
    800017a0:	c18080e7          	jalr	-1000(ra) # 800033b4 <_ZN15MemoryAllocator5kfreeEPv>
}
    800017a4:	00813083          	ld	ra,8(sp)
    800017a8:	00013403          	ld	s0,0(sp)
    800017ac:	01010113          	addi	sp,sp,16
    800017b0:	00008067          	ret

00000000800017b4 <_ZN3PCB10initializeEv>:

void PCB::initialize()
{
    800017b4:	fd010113          	addi	sp,sp,-48
    800017b8:	02113423          	sd	ra,40(sp)
    800017bc:	02813023          	sd	s0,32(sp)
    800017c0:	00913c23          	sd	s1,24(sp)
    800017c4:	01213823          	sd	s2,16(sp)
    800017c8:	01313423          	sd	s3,8(sp)
    800017cc:	01413023          	sd	s4,0(sp)
    800017d0:	03010413          	addi	s0,sp,48
    PCB* mainSystem = new PCB(0, 0, 0, 0);
    800017d4:	06000513          	li	a0,96
    800017d8:	00000097          	auipc	ra,0x0
    800017dc:	f60080e7          	jalr	-160(ra) # 80001738 <_ZN3PCBnwEm>
    800017e0:	00050493          	mv	s1,a0
    800017e4:	00000713          	li	a4,0
    800017e8:	00000693          	li	a3,0
    800017ec:	00000613          	li	a2,0
    800017f0:	00000593          	li	a1,0
    800017f4:	00000097          	auipc	ra,0x0
    800017f8:	e28080e7          	jalr	-472(ra) # 8000161c <_ZN3PCBC1EPFvPvES0_S0_m>
    mainSystem->systemThread = true;
    800017fc:	00100793          	li	a5,1
    80001800:	00f48023          	sb	a5,0(s1)
    PCB::running = mainSystem;
    80001804:	00007917          	auipc	s2,0x7
    80001808:	64c90913          	addi	s2,s2,1612 # 80008e50 <_ZN3PCB7runningE>
    8000180c:	00993023          	sd	s1,0(s2)
    80001810:	00100a13          	li	s4,1
    80001814:	0544a023          	sw	s4,64(s1)
    PCB::running->setState(PCB::RUNNING);
    PCB::consolePCB = new PCB(&KConsole::sendCharactersToConsole, 0, MemoryAllocator::kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    80001818:	00001537          	lui	a0,0x1
    8000181c:	00002097          	auipc	ra,0x2
    80001820:	b34080e7          	jalr	-1228(ra) # 80003350 <_ZN15MemoryAllocator7kmallocEm>
    80001824:	00050993          	mv	s3,a0
    80001828:	06000513          	li	a0,96
    8000182c:	00000097          	auipc	ra,0x0
    80001830:	f0c080e7          	jalr	-244(ra) # 80001738 <_ZN3PCBnwEm>
    80001834:	00050493          	mv	s1,a0
    80001838:	00200713          	li	a4,2
    8000183c:	00098693          	mv	a3,s3
    80001840:	00000613          	li	a2,0
    80001844:	00007597          	auipc	a1,0x7
    80001848:	5845b583          	ld	a1,1412(a1) # 80008dc8 <_GLOBAL_OFFSET_TABLE_+0x50>
    8000184c:	00000097          	auipc	ra,0x0
    80001850:	dd0080e7          	jalr	-560(ra) # 8000161c <_ZN3PCBC1EPFvPvES0_S0_m>
    80001854:	00993423          	sd	s1,8(s2)
    PCB::consolePCB->systemThread = true;
    80001858:	01448023          	sb	s4,0(s1)
    PCB::consolePCB->start();
    8000185c:	00893503          	ld	a0,8(s2)
    80001860:	00000097          	auipc	ra,0x0
    80001864:	e24080e7          	jalr	-476(ra) # 80001684 <_ZN3PCB5startEv>
    PCB::userPCB = new PCB(&Riscv::userMainWrapper, 0, MemoryAllocator::kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    80001868:	00001537          	lui	a0,0x1
    8000186c:	00002097          	auipc	ra,0x2
    80001870:	ae4080e7          	jalr	-1308(ra) # 80003350 <_ZN15MemoryAllocator7kmallocEm>
    80001874:	00050993          	mv	s3,a0
    80001878:	06000513          	li	a0,96
    8000187c:	00000097          	auipc	ra,0x0
    80001880:	ebc080e7          	jalr	-324(ra) # 80001738 <_ZN3PCBnwEm>
    80001884:	00050493          	mv	s1,a0
    80001888:	00200713          	li	a4,2
    8000188c:	00098693          	mv	a3,s3
    80001890:	00000613          	li	a2,0
    80001894:	00007597          	auipc	a1,0x7
    80001898:	5645b583          	ld	a1,1380(a1) # 80008df8 <_GLOBAL_OFFSET_TABLE_+0x80>
    8000189c:	00000097          	auipc	ra,0x0
    800018a0:	d80080e7          	jalr	-640(ra) # 8000161c <_ZN3PCBC1EPFvPvES0_S0_m>
    800018a4:	00993823          	sd	s1,16(s2)
    PCB::userPCB->start();
    800018a8:	00048513          	mv	a0,s1
    800018ac:	00000097          	auipc	ra,0x0
    800018b0:	dd8080e7          	jalr	-552(ra) # 80001684 <_ZN3PCB5startEv>
}
    800018b4:	02813083          	ld	ra,40(sp)
    800018b8:	02013403          	ld	s0,32(sp)
    800018bc:	01813483          	ld	s1,24(sp)
    800018c0:	01013903          	ld	s2,16(sp)
    800018c4:	00813983          	ld	s3,8(sp)
    800018c8:	00013a03          	ld	s4,0(sp)
    800018cc:	03010113          	addi	sp,sp,48
    800018d0:	00008067          	ret

00000000800018d4 <_ZN3PCB10isFinishedEv>:

bool PCB::isFinished()
{
    800018d4:	ff010113          	addi	sp,sp,-16
    800018d8:	00813423          	sd	s0,8(sp)
    800018dc:	01010413          	addi	s0,sp,16
    return state == PCB::FINISHED;
    800018e0:	04052503          	lw	a0,64(a0) # 1040 <_entry-0x7fffefc0>
    800018e4:	ffd50513          	addi	a0,a0,-3
}
    800018e8:	00153513          	seqz	a0,a0
    800018ec:	00813403          	ld	s0,8(sp)
    800018f0:	01010113          	addi	sp,sp,16
    800018f4:	00008067          	ret

00000000800018f8 <_ZN3PCB17threadExitHandlerEv>:

void PCB::threadExitHandler()
{
    800018f8:	ff010113          	addi	sp,sp,-16
    800018fc:	00113423          	sd	ra,8(sp)
    80001900:	00813023          	sd	s0,0(sp)
    80001904:	01010413          	addi	s0,sp,16
    //trapPrintString("Exiting thread...\n");
    PCB::timeSliceCounter = 0;
    80001908:	00007797          	auipc	a5,0x7
    8000190c:	54878793          	addi	a5,a5,1352 # 80008e50 <_ZN3PCB7runningE>
    80001910:	0007bc23          	sd	zero,24(a5)
    PCB::running->setState(PCB::FINISHED);
    80001914:	0007b783          	ld	a5,0(a5)
    80001918:	00300713          	li	a4,3
    8000191c:	04e7a023          	sw	a4,64(a5)
    PCB::dispatch();
    80001920:	00000097          	auipc	ra,0x0
    80001924:	d8c080e7          	jalr	-628(ra) # 800016ac <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0");
    80001928:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    8000192c:	00001097          	auipc	ra,0x1
    80001930:	254080e7          	jalr	596(ra) # 80002b80 <_ZN5Riscv13w_a0_sscratchEv>
}
    80001934:	00813083          	ld	ra,8(sp)
    80001938:	00013403          	ld	s0,0(sp)
    8000193c:	01010113          	addi	sp,sp,16
    80001940:	00008067          	ret

0000000080001944 <_ZN3PCB21threadDispatchHandlerEv>:

void PCB::threadDispatchHandler()
{
    80001944:	ff010113          	addi	sp,sp,-16
    80001948:	00113423          	sd	ra,8(sp)
    8000194c:	00813023          	sd	s0,0(sp)
    80001950:	01010413          	addi	s0,sp,16
    PCB::timeSliceCounter = 0;
    80001954:	00007797          	auipc	a5,0x7
    80001958:	5007ba23          	sd	zero,1300(a5) # 80008e68 <_ZN3PCB16timeSliceCounterE>
    PCB::dispatch();
    8000195c:	00000097          	auipc	ra,0x0
    80001960:	d50080e7          	jalr	-688(ra) # 800016ac <_ZN3PCB8dispatchEv>
}
    80001964:	00813083          	ld	ra,8(sp)
    80001968:	00013403          	ld	s0,0(sp)
    8000196c:	01010113          	addi	sp,sp,16
    80001970:	00008067          	ret

0000000080001974 <_ZN3PCB18threadSleepHandlerEv>:

void PCB::threadSleepHandler()
{
    80001974:	ff010113          	addi	sp,sp,-16
    80001978:	00113423          	sd	ra,8(sp)
    8000197c:	00813023          	sd	s0,0(sp)
    80001980:	01010413          	addi	s0,sp,16
    uint64 time;
    __asm__ volatile("mv %0, a1" : "=r"(time));
    80001984:	00058793          	mv	a5,a1
    PCB::timeSliceCounter = 0;
    80001988:	00007717          	auipc	a4,0x7
    8000198c:	4c870713          	addi	a4,a4,1224 # 80008e50 <_ZN3PCB7runningE>
    80001990:	00073c23          	sd	zero,24(a4)
    PCB::running->setTimeToSleep(time + Riscv::totalTime);
    80001994:	00073703          	ld	a4,0(a4)
    80001998:	00007697          	auipc	a3,0x7
    8000199c:	4286b683          	ld	a3,1064(a3) # 80008dc0 <_GLOBAL_OFFSET_TABLE_+0x48>
    800019a0:	0006b683          	ld	a3,0(a3)
    800019a4:	00d787b3          	add	a5,a5,a3
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    800019a8:	02f73023          	sd	a5,32(a4)
    SleepPCBList::insertSleepingPCB();
    800019ac:	00001097          	auipc	ra,0x1
    800019b0:	814080e7          	jalr	-2028(ra) # 800021c0 <_ZN12SleepPCBList17insertSleepingPCBEv>
    PCB::dispatch();
    800019b4:	00000097          	auipc	ra,0x0
    800019b8:	cf8080e7          	jalr	-776(ra) # 800016ac <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0x0");
    800019bc:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    800019c0:	00001097          	auipc	ra,0x1
    800019c4:	1c0080e7          	jalr	448(ra) # 80002b80 <_ZN5Riscv13w_a0_sscratchEv>
}
    800019c8:	00813083          	ld	ra,8(sp)
    800019cc:	00013403          	ld	s0,0(sp)
    800019d0:	01010113          	addi	sp,sp,16
    800019d4:	00008067          	ret

00000000800019d8 <_ZN3PCB19threadCreateHandlerEv>:

void PCB::threadCreateHandler()
{
    800019d8:	fd010113          	addi	sp,sp,-48
    800019dc:	02113423          	sd	ra,40(sp)
    800019e0:	02813023          	sd	s0,32(sp)
    800019e4:	00913c23          	sd	s1,24(sp)
    800019e8:	01213823          	sd	s2,16(sp)
    800019ec:	01313423          	sd	s3,8(sp)
    800019f0:	01413023          	sd	s4,0(sp)
    800019f4:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    800019f8:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    800019fc:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    80001a00:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args, (void *) PCB::savedRegA4, DEFAULT_TIME_SLICE);
    80001a04:	06000513          	li	a0,96
    80001a08:	00000097          	auipc	ra,0x0
    80001a0c:	d30080e7          	jalr	-720(ra) # 80001738 <_ZN3PCBnwEm>
    80001a10:	00050493          	mv	s1,a0
    80001a14:	00200713          	li	a4,2
    80001a18:	00007697          	auipc	a3,0x7
    80001a1c:	4586b683          	ld	a3,1112(a3) # 80008e70 <_ZN3PCB10savedRegA4E>
    80001a20:	000a0613          	mv	a2,s4
    80001a24:	00098593          	mv	a1,s3
    80001a28:	00000097          	auipc	ra,0x0
    80001a2c:	bf4080e7          	jalr	-1036(ra) # 8000161c <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    80001a30:	00993023          	sd	s1,0(s2)

    if (newPCB == 0)
    80001a34:	02048e63          	beqz	s1,80001a70 <_ZN3PCB19threadCreateHandlerEv+0x98>
            __asm__ volatile("li a0, 0xffffffffffffffff");
    else
    {
        newPCB->start();
    80001a38:	00048513          	mv	a0,s1
    80001a3c:	00000097          	auipc	ra,0x0
    80001a40:	c48080e7          	jalr	-952(ra) # 80001684 <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    80001a44:	00000513          	li	a0,0
    }
    Riscv::w_a0_sscratch();
    80001a48:	00001097          	auipc	ra,0x1
    80001a4c:	138080e7          	jalr	312(ra) # 80002b80 <_ZN5Riscv13w_a0_sscratchEv>
}
    80001a50:	02813083          	ld	ra,40(sp)
    80001a54:	02013403          	ld	s0,32(sp)
    80001a58:	01813483          	ld	s1,24(sp)
    80001a5c:	01013903          	ld	s2,16(sp)
    80001a60:	00813983          	ld	s3,8(sp)
    80001a64:	00013a03          	ld	s4,0(sp)
    80001a68:	03010113          	addi	sp,sp,48
    80001a6c:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    80001a70:	fff00513          	li	a0,-1
    80001a74:	fd5ff06f          	j	80001a48 <_ZN3PCB19threadCreateHandlerEv+0x70>

0000000080001a78 <_ZN3PCB18threadStartHandlerEv>:

void PCB::threadStartHandler()
{
    80001a78:	ff010113          	addi	sp,sp,-16
    80001a7c:	00113423          	sd	ra,8(sp)
    80001a80:	00813023          	sd	s0,0(sp)
    80001a84:	01010413          	addi	s0,sp,16
    PCB* pcb;
    __asm__ volatile("mv %0, a1" : "=r"(pcb));
    80001a88:	00058513          	mv	a0,a1
    if(pcb != 0)
    80001a8c:	02050463          	beqz	a0,80001ab4 <_ZN3PCB18threadStartHandlerEv+0x3c>
    {
        pcb->start();
    80001a90:	00000097          	auipc	ra,0x0
    80001a94:	bf4080e7          	jalr	-1036(ra) # 80001684 <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    80001a98:	00000513          	li	a0,0
    }
    else
    {
        __asm__ volatile("li a0, 0xffffffffffffffff");
    }
    Riscv::w_a0_sscratch();
    80001a9c:	00001097          	auipc	ra,0x1
    80001aa0:	0e4080e7          	jalr	228(ra) # 80002b80 <_ZN5Riscv13w_a0_sscratchEv>
}
    80001aa4:	00813083          	ld	ra,8(sp)
    80001aa8:	00013403          	ld	s0,0(sp)
    80001aac:	01010113          	addi	sp,sp,16
    80001ab0:	00008067          	ret
        __asm__ volatile("li a0, 0xffffffffffffffff");
    80001ab4:	fff00513          	li	a0,-1
    80001ab8:	fe5ff06f          	j	80001a9c <_ZN3PCB18threadStartHandlerEv+0x24>

0000000080001abc <_ZN3PCB20threadMakePCBHandlerEv>:

void PCB::threadMakePCBHandler()
{
    80001abc:	fd010113          	addi	sp,sp,-48
    80001ac0:	02113423          	sd	ra,40(sp)
    80001ac4:	02813023          	sd	s0,32(sp)
    80001ac8:	00913c23          	sd	s1,24(sp)
    80001acc:	01213823          	sd	s2,16(sp)
    80001ad0:	01313423          	sd	s3,8(sp)
    80001ad4:	01413023          	sd	s4,0(sp)
    80001ad8:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80001adc:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    80001ae0:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    80001ae4:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args, (void *) PCB::savedRegA4, DEFAULT_TIME_SLICE);
    80001ae8:	06000513          	li	a0,96
    80001aec:	00000097          	auipc	ra,0x0
    80001af0:	c4c080e7          	jalr	-948(ra) # 80001738 <_ZN3PCBnwEm>
    80001af4:	00050493          	mv	s1,a0
    80001af8:	00200713          	li	a4,2
    80001afc:	00007697          	auipc	a3,0x7
    80001b00:	3746b683          	ld	a3,884(a3) # 80008e70 <_ZN3PCB10savedRegA4E>
    80001b04:	000a0613          	mv	a2,s4
    80001b08:	00098593          	mv	a1,s3
    80001b0c:	00000097          	auipc	ra,0x0
    80001b10:	b10080e7          	jalr	-1264(ra) # 8000161c <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    80001b14:	00993023          	sd	s1,0(s2)

    if (newPCB == 0)
    80001b18:	02048863          	beqz	s1,80001b48 <_ZN3PCB20threadMakePCBHandlerEv+0x8c>
        __asm__ volatile("li a0, 0xffffffffffffffff");
    else
        __asm__ volatile("li a0, 0");
    80001b1c:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80001b20:	00001097          	auipc	ra,0x1
    80001b24:	060080e7          	jalr	96(ra) # 80002b80 <_ZN5Riscv13w_a0_sscratchEv>
}
    80001b28:	02813083          	ld	ra,40(sp)
    80001b2c:	02013403          	ld	s0,32(sp)
    80001b30:	01813483          	ld	s1,24(sp)
    80001b34:	01013903          	ld	s2,16(sp)
    80001b38:	00813983          	ld	s3,8(sp)
    80001b3c:	00013a03          	ld	s4,0(sp)
    80001b40:	03010113          	addi	sp,sp,48
    80001b44:	00008067          	ret
        __asm__ volatile("li a0, 0xffffffffffffffff");
    80001b48:	fff00513          	li	a0,-1
    80001b4c:	fd5ff06f          	j	80001b20 <_ZN3PCB20threadMakePCBHandlerEv+0x64>

0000000080001b50 <_ZN3PCB19threadDelPCBHandlerEv>:

void PCB::threadDelPCBHandler()
{
    80001b50:	fe010113          	addi	sp,sp,-32
    80001b54:	00113c23          	sd	ra,24(sp)
    80001b58:	00813823          	sd	s0,16(sp)
    80001b5c:	00913423          	sd	s1,8(sp)
    80001b60:	02010413          	addi	s0,sp,32
    PCB* pcb;
    __asm__ volatile("mv %0, a1" : "=r"(pcb));
    80001b64:	00058493          	mv	s1,a1
    if(pcb != 0)
    80001b68:	02048e63          	beqz	s1,80001ba4 <_ZN3PCB19threadDelPCBHandlerEv+0x54>
    {
        delete pcb;
    80001b6c:	00048513          	mv	a0,s1
    80001b70:	00000097          	auipc	ra,0x0
    80001b74:	c18080e7          	jalr	-1000(ra) # 80001788 <_ZN3PCBD1Ev>
    80001b78:	00048513          	mv	a0,s1
    80001b7c:	00000097          	auipc	ra,0x0
    80001b80:	be4080e7          	jalr	-1052(ra) # 80001760 <_ZN3PCBdlEPv>
        __asm__ volatile("li a0, 0x0");
    80001b84:	00000513          	li	a0,0
    }
    else
    {
        __asm__ volatile("li a0, 0x1");
    }
    Riscv::w_a0_sscratch();
    80001b88:	00001097          	auipc	ra,0x1
    80001b8c:	ff8080e7          	jalr	-8(ra) # 80002b80 <_ZN5Riscv13w_a0_sscratchEv>
}
    80001b90:	01813083          	ld	ra,24(sp)
    80001b94:	01013403          	ld	s0,16(sp)
    80001b98:	00813483          	ld	s1,8(sp)
    80001b9c:	02010113          	addi	sp,sp,32
    80001ba0:	00008067          	ret
        __asm__ volatile("li a0, 0x1");
    80001ba4:	00100513          	li	a0,1
    80001ba8:	fe1ff06f          	j	80001b88 <_ZN3PCB19threadDelPCBHandlerEv+0x38>

0000000080001bac <_ZN8KConsole10initializeEv>:
char KConsole::inputBuffer[bufferSize];
char KConsole::outputBuffer[bufferSize];
uint64 KConsole::pendingPutc = 0;

void KConsole::initialize()
{
    80001bac:	fe010113          	addi	sp,sp,-32
    80001bb0:	00113c23          	sd	ra,24(sp)
    80001bb4:	00813823          	sd	s0,16(sp)
    80001bb8:	00913423          	sd	s1,8(sp)
    80001bbc:	01213023          	sd	s2,0(sp)
    80001bc0:	02010413          	addi	s0,sp,32
    hasCharactersInput = new KSemaphore(0);
    80001bc4:	01800513          	li	a0,24
    80001bc8:	00002097          	auipc	ra,0x2
    80001bcc:	ab4080e7          	jalr	-1356(ra) # 8000367c <_ZN10KSemaphorenwEm>
    80001bd0:	00050493          	mv	s1,a0
    80001bd4:	00000593          	li	a1,0
    80001bd8:	00002097          	auipc	ra,0x2
    80001bdc:	83c080e7          	jalr	-1988(ra) # 80003414 <_ZN10KSemaphoreC1Ei>
    80001be0:	00007797          	auipc	a5,0x7
    80001be4:	2897bc23          	sd	s1,664(a5) # 80008e78 <_ZN8KConsole18hasCharactersInputE>
    hasCharactersOutput = new KSemaphore(0);
    80001be8:	01800513          	li	a0,24
    80001bec:	00002097          	auipc	ra,0x2
    80001bf0:	a90080e7          	jalr	-1392(ra) # 8000367c <_ZN10KSemaphorenwEm>
    80001bf4:	00050493          	mv	s1,a0
    80001bf8:	00000593          	li	a1,0
    80001bfc:	00002097          	auipc	ra,0x2
    80001c00:	818080e7          	jalr	-2024(ra) # 80003414 <_ZN10KSemaphoreC1Ei>
    80001c04:	00007797          	auipc	a5,0x7
    80001c08:	2697be23          	sd	s1,636(a5) # 80008e80 <_ZN8KConsole19hasCharactersOutputE>
}
    80001c0c:	01813083          	ld	ra,24(sp)
    80001c10:	01013403          	ld	s0,16(sp)
    80001c14:	00813483          	ld	s1,8(sp)
    80001c18:	00013903          	ld	s2,0(sp)
    80001c1c:	02010113          	addi	sp,sp,32
    80001c20:	00008067          	ret
    80001c24:	00050913          	mv	s2,a0
    hasCharactersInput = new KSemaphore(0);
    80001c28:	00048513          	mv	a0,s1
    80001c2c:	00002097          	auipc	ra,0x2
    80001c30:	af0080e7          	jalr	-1296(ra) # 8000371c <_ZN10KSemaphoredlEPv>
    80001c34:	00090513          	mv	a0,s2
    80001c38:	0000c097          	auipc	ra,0xc
    80001c3c:	3a0080e7          	jalr	928(ra) # 8000dfd8 <_Unwind_Resume>
    80001c40:	00050913          	mv	s2,a0
    hasCharactersOutput = new KSemaphore(0);
    80001c44:	00048513          	mv	a0,s1
    80001c48:	00002097          	auipc	ra,0x2
    80001c4c:	ad4080e7          	jalr	-1324(ra) # 8000371c <_ZN10KSemaphoredlEPv>
    80001c50:	00090513          	mv	a0,s2
    80001c54:	0000c097          	auipc	ra,0xc
    80001c58:	384080e7          	jalr	900(ra) # 8000dfd8 <_Unwind_Resume>

0000000080001c5c <_ZN8KConsole17putCharacterInputEc>:
    }
}

void KConsole::putCharacterInput(char c)
{
    if((inputTail+1)%bufferSize == inputHead)
    80001c5c:	00007697          	auipc	a3,0x7
    80001c60:	21c68693          	addi	a3,a3,540 # 80008e78 <_ZN8KConsole18hasCharactersInputE>
    80001c64:	0106b603          	ld	a2,16(a3)
    80001c68:	00160793          	addi	a5,a2,1
    80001c6c:	00002737          	lui	a4,0x2
    80001c70:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    80001c74:	00e7f7b3          	and	a5,a5,a4
    80001c78:	0186b703          	ld	a4,24(a3)
    80001c7c:	04e78263          	beq	a5,a4,80001cc0 <_ZN8KConsole17putCharacterInputEc+0x64>
{
    80001c80:	ff010113          	addi	sp,sp,-16
    80001c84:	00113423          	sd	ra,8(sp)
    80001c88:	00813023          	sd	s0,0(sp)
    80001c8c:	01010413          	addi	s0,sp,16
        return;
    inputBuffer[inputTail] = c;
    80001c90:	00009717          	auipc	a4,0x9
    80001c94:	22870713          	addi	a4,a4,552 # 8000aeb8 <_ZN8KConsole11inputBufferE>
    80001c98:	00c70633          	add	a2,a4,a2
    80001c9c:	00a60023          	sb	a0,0(a2)
    inputTail = (inputTail+1)%bufferSize;
    80001ca0:	00f6b823          	sd	a5,16(a3)
    hasCharactersInput->signal();
    80001ca4:	0006b503          	ld	a0,0(a3)
    80001ca8:	00002097          	auipc	ra,0x2
    80001cac:	98c080e7          	jalr	-1652(ra) # 80003634 <_ZN10KSemaphore6signalEv>
}
    80001cb0:	00813083          	ld	ra,8(sp)
    80001cb4:	00013403          	ld	s0,0(sp)
    80001cb8:	01010113          	addi	sp,sp,16
    80001cbc:	00008067          	ret
    80001cc0:	00008067          	ret

0000000080001cc4 <_ZN8KConsole17getCharacterInputEv>:

char KConsole::getCharacterInput()
{
    80001cc4:	fe010113          	addi	sp,sp,-32
    80001cc8:	00113c23          	sd	ra,24(sp)
    80001ccc:	00813823          	sd	s0,16(sp)
    80001cd0:	00913423          	sd	s1,8(sp)
    80001cd4:	02010413          	addi	s0,sp,32
    hasCharactersInput->wait();
    80001cd8:	00007497          	auipc	s1,0x7
    80001cdc:	1a048493          	addi	s1,s1,416 # 80008e78 <_ZN8KConsole18hasCharactersInputE>
    80001ce0:	0004b503          	ld	a0,0(s1)
    80001ce4:	00001097          	auipc	ra,0x1
    80001ce8:	7d8080e7          	jalr	2008(ra) # 800034bc <_ZN10KSemaphore4waitEv>
    if(inputHead == inputTail)
    80001cec:	0184b783          	ld	a5,24(s1)
    80001cf0:	0104b703          	ld	a4,16(s1)
    80001cf4:	04e78063          	beq	a5,a4,80001d34 <_ZN8KConsole17getCharacterInputEv+0x70>
        return -1;
    char c = inputBuffer[inputHead];
    80001cf8:	00009717          	auipc	a4,0x9
    80001cfc:	1c070713          	addi	a4,a4,448 # 8000aeb8 <_ZN8KConsole11inputBufferE>
    80001d00:	00f70733          	add	a4,a4,a5
    80001d04:	00074503          	lbu	a0,0(a4)
    inputHead = (inputHead+1)%bufferSize;
    80001d08:	00178793          	addi	a5,a5,1
    80001d0c:	00002737          	lui	a4,0x2
    80001d10:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    80001d14:	00e7f7b3          	and	a5,a5,a4
    80001d18:	00007717          	auipc	a4,0x7
    80001d1c:	16f73c23          	sd	a5,376(a4) # 80008e90 <_ZN8KConsole9inputHeadE>
    return c;
}
    80001d20:	01813083          	ld	ra,24(sp)
    80001d24:	01013403          	ld	s0,16(sp)
    80001d28:	00813483          	ld	s1,8(sp)
    80001d2c:	02010113          	addi	sp,sp,32
    80001d30:	00008067          	ret
        return -1;
    80001d34:	0ff00513          	li	a0,255
    80001d38:	fe9ff06f          	j	80001d20 <_ZN8KConsole17getCharacterInputEv+0x5c>

0000000080001d3c <_ZN8KConsole18putCharacterOutputEc>:

void KConsole::putCharacterOutput(char c)
{
    if((outputTail+1)%bufferSize == outputHead)
    80001d3c:	00007697          	auipc	a3,0x7
    80001d40:	13c68693          	addi	a3,a3,316 # 80008e78 <_ZN8KConsole18hasCharactersInputE>
    80001d44:	0206b603          	ld	a2,32(a3)
    80001d48:	00160793          	addi	a5,a2,1
    80001d4c:	00002737          	lui	a4,0x2
    80001d50:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    80001d54:	00e7f7b3          	and	a5,a5,a4
    80001d58:	0286b703          	ld	a4,40(a3)
    80001d5c:	04e78a63          	beq	a5,a4,80001db0 <_ZN8KConsole18putCharacterOutputEc+0x74>
{
    80001d60:	ff010113          	addi	sp,sp,-16
    80001d64:	00113423          	sd	ra,8(sp)
    80001d68:	00813023          	sd	s0,0(sp)
    80001d6c:	01010413          	addi	s0,sp,16
        return;
    pendingPutc++;
    80001d70:	00068713          	mv	a4,a3
    80001d74:	0306b683          	ld	a3,48(a3)
    80001d78:	00168693          	addi	a3,a3,1
    80001d7c:	02d73823          	sd	a3,48(a4)
    outputBuffer[outputTail] = c;
    80001d80:	00007697          	auipc	a3,0x7
    80001d84:	13868693          	addi	a3,a3,312 # 80008eb8 <_ZN8KConsole12outputBufferE>
    80001d88:	00c68633          	add	a2,a3,a2
    80001d8c:	00a60023          	sb	a0,0(a2)
    outputTail = (outputTail+1)%bufferSize;
    80001d90:	02f73023          	sd	a5,32(a4)
    hasCharactersOutput->signal();
    80001d94:	00873503          	ld	a0,8(a4)
    80001d98:	00002097          	auipc	ra,0x2
    80001d9c:	89c080e7          	jalr	-1892(ra) # 80003634 <_ZN10KSemaphore6signalEv>
}
    80001da0:	00813083          	ld	ra,8(sp)
    80001da4:	00013403          	ld	s0,0(sp)
    80001da8:	01010113          	addi	sp,sp,16
    80001dac:	00008067          	ret
    80001db0:	00008067          	ret

0000000080001db4 <_ZN8KConsole24getCharactersFromConsoleEPv>:
        uint64 x = CONSOLE_STATUS;
    80001db4:	00007797          	auipc	a5,0x7
    80001db8:	fd47b783          	ld	a5,-44(a5) # 80008d88 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001dbc:	0007b783          	ld	a5,0(a5)
        __asm__ volatile("mv a0, %0"::"r"(x));
    80001dc0:	00078513          	mv	a0,a5
        __asm__ volatile("lb a1, 0(a0)");
    80001dc4:	00050583          	lb	a1,0(a0)
        __asm__ volatile("mv %0, a1" :  "=r"(operation));
    80001dc8:	00058793          	mv	a5,a1
        if(operation & STATUS_READ_MASK)
    80001dcc:	0017f793          	andi	a5,a5,1
    80001dd0:	08078063          	beqz	a5,80001e50 <_ZN8KConsole24getCharactersFromConsoleEPv+0x9c>
{
    80001dd4:	fe010113          	addi	sp,sp,-32
    80001dd8:	00113c23          	sd	ra,24(sp)
    80001ddc:	00813823          	sd	s0,16(sp)
    80001de0:	00913423          	sd	s1,8(sp)
    80001de4:	02010413          	addi	s0,sp,32
            x = CONSOLE_TX_DATA;
    80001de8:	00007797          	auipc	a5,0x7
    80001dec:	fc07b783          	ld	a5,-64(a5) # 80008da8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001df0:	0007b783          	ld	a5,0(a5)
            __asm__ volatile("mv a0, %0"::"r"(x));
    80001df4:	00078513          	mv	a0,a5
            __asm__ volatile("lb a1,0(a0)");
    80001df8:	00050583          	lb	a1,0(a0)
            __asm__ volatile("mv %0, a1" :  "=r"(c));
    80001dfc:	00058493          	mv	s1,a1
    80001e00:	0ff4f493          	andi	s1,s1,255
            putCharacterInput(c);
    80001e04:	00048513          	mv	a0,s1
    80001e08:	00000097          	auipc	ra,0x0
    80001e0c:	e54080e7          	jalr	-428(ra) # 80001c5c <_ZN8KConsole17putCharacterInputEc>
            putCharacterOutput(c);
    80001e10:	00048513          	mv	a0,s1
    80001e14:	00000097          	auipc	ra,0x0
    80001e18:	f28080e7          	jalr	-216(ra) # 80001d3c <_ZN8KConsole18putCharacterOutputEc>
        uint64 x = CONSOLE_STATUS;
    80001e1c:	00007797          	auipc	a5,0x7
    80001e20:	f6c7b783          	ld	a5,-148(a5) # 80008d88 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001e24:	0007b783          	ld	a5,0(a5)
        __asm__ volatile("mv a0, %0"::"r"(x));
    80001e28:	00078513          	mv	a0,a5
        __asm__ volatile("lb a1, 0(a0)");
    80001e2c:	00050583          	lb	a1,0(a0)
        __asm__ volatile("mv %0, a1" :  "=r"(operation));
    80001e30:	00058793          	mv	a5,a1
        if(operation & STATUS_READ_MASK)
    80001e34:	0017f793          	andi	a5,a5,1
    80001e38:	fa0798e3          	bnez	a5,80001de8 <_ZN8KConsole24getCharactersFromConsoleEPv+0x34>
}
    80001e3c:	01813083          	ld	ra,24(sp)
    80001e40:	01013403          	ld	s0,16(sp)
    80001e44:	00813483          	ld	s1,8(sp)
    80001e48:	02010113          	addi	sp,sp,32
    80001e4c:	00008067          	ret
    80001e50:	00008067          	ret

0000000080001e54 <_ZN8KConsole18getCharacterOutputEv>:

char KConsole::getCharacterOutput()
{
    80001e54:	fe010113          	addi	sp,sp,-32
    80001e58:	00113c23          	sd	ra,24(sp)
    80001e5c:	00813823          	sd	s0,16(sp)
    80001e60:	00913423          	sd	s1,8(sp)
    80001e64:	02010413          	addi	s0,sp,32
    hasCharactersOutput->wait();
    80001e68:	00007497          	auipc	s1,0x7
    80001e6c:	01048493          	addi	s1,s1,16 # 80008e78 <_ZN8KConsole18hasCharactersInputE>
    80001e70:	0084b503          	ld	a0,8(s1)
    80001e74:	00001097          	auipc	ra,0x1
    80001e78:	648080e7          	jalr	1608(ra) # 800034bc <_ZN10KSemaphore4waitEv>
    if(outputHead == outputTail)
    80001e7c:	0284b783          	ld	a5,40(s1)
    80001e80:	0204b703          	ld	a4,32(s1)
    80001e84:	04e78063          	beq	a5,a4,80001ec4 <_ZN8KConsole18getCharacterOutputEv+0x70>
        return -1;
    char c = outputBuffer[outputHead];
    80001e88:	00007717          	auipc	a4,0x7
    80001e8c:	03070713          	addi	a4,a4,48 # 80008eb8 <_ZN8KConsole12outputBufferE>
    80001e90:	00f70733          	add	a4,a4,a5
    80001e94:	00074503          	lbu	a0,0(a4)
    outputHead = (outputHead+1)%bufferSize;
    80001e98:	00178793          	addi	a5,a5,1
    80001e9c:	00002737          	lui	a4,0x2
    80001ea0:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    80001ea4:	00e7f7b3          	and	a5,a5,a4
    80001ea8:	00007717          	auipc	a4,0x7
    80001eac:	fef73c23          	sd	a5,-8(a4) # 80008ea0 <_ZN8KConsole10outputHeadE>
    return c;
}
    80001eb0:	01813083          	ld	ra,24(sp)
    80001eb4:	01013403          	ld	s0,16(sp)
    80001eb8:	00813483          	ld	s1,8(sp)
    80001ebc:	02010113          	addi	sp,sp,32
    80001ec0:	00008067          	ret
        return -1;
    80001ec4:	0ff00513          	li	a0,255
    80001ec8:	fe9ff06f          	j	80001eb0 <_ZN8KConsole18getCharacterOutputEv+0x5c>

0000000080001ecc <_ZN8KConsole11putcHandlerEv>:

void KConsole::putcHandler()
{
    80001ecc:	ff010113          	addi	sp,sp,-16
    80001ed0:	00113423          	sd	ra,8(sp)
    80001ed4:	00813023          	sd	s0,0(sp)
    80001ed8:	01010413          	addi	s0,sp,16
    uint64 ch;
    __asm__ volatile("mv %0, a1" : "=r"(ch));
    80001edc:	00058513          	mv	a0,a1
    putCharacterOutput((char)ch);
    80001ee0:	0ff57513          	andi	a0,a0,255
    80001ee4:	00000097          	auipc	ra,0x0
    80001ee8:	e58080e7          	jalr	-424(ra) # 80001d3c <_ZN8KConsole18putCharacterOutputEc>
}
    80001eec:	00813083          	ld	ra,8(sp)
    80001ef0:	00013403          	ld	s0,0(sp)
    80001ef4:	01010113          	addi	sp,sp,16
    80001ef8:	00008067          	ret

0000000080001efc <_ZN8KConsole11getcHandlerEv>:

void KConsole::getcHandler()
{
    80001efc:	fe010113          	addi	sp,sp,-32
    80001f00:	00113c23          	sd	ra,24(sp)
    80001f04:	00813823          	sd	s0,16(sp)
    80001f08:	00913423          	sd	s1,8(sp)
    80001f0c:	02010413          	addi	s0,sp,32
    pendingGetc++;
    80001f10:	00007717          	auipc	a4,0x7
    80001f14:	f6870713          	addi	a4,a4,-152 # 80008e78 <_ZN8KConsole18hasCharactersInputE>
    80001f18:	03873783          	ld	a5,56(a4)
    80001f1c:	00178793          	addi	a5,a5,1
    80001f20:	02f73c23          	sd	a5,56(a4)
    char ch;
    ch = getCharacterInput();
    80001f24:	00000097          	auipc	ra,0x0
    80001f28:	da0080e7          	jalr	-608(ra) # 80001cc4 <_ZN8KConsole17getCharacterInputEv>
    80001f2c:	00050493          	mv	s1,a0
    if(ch!=0x01b)
    80001f30:	01b00793          	li	a5,27
    80001f34:	02f51663          	bne	a0,a5,80001f60 <_ZN8KConsole11getcHandlerEv+0x64>
        putCharacterOutput(ch);

    if(ch==13)
    80001f38:	00d00793          	li	a5,13
    80001f3c:	02f48863          	beq	s1,a5,80001f6c <_ZN8KConsole11getcHandlerEv+0x70>
    {
        putCharacterOutput(13);
        putCharacterOutput(10);
    }

    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    80001f40:	00048513          	mv	a0,s1
    Riscv::w_a0_sscratch();
    80001f44:	00001097          	auipc	ra,0x1
    80001f48:	c3c080e7          	jalr	-964(ra) # 80002b80 <_ZN5Riscv13w_a0_sscratchEv>
}
    80001f4c:	01813083          	ld	ra,24(sp)
    80001f50:	01013403          	ld	s0,16(sp)
    80001f54:	00813483          	ld	s1,8(sp)
    80001f58:	02010113          	addi	sp,sp,32
    80001f5c:	00008067          	ret
        putCharacterOutput(ch);
    80001f60:	00000097          	auipc	ra,0x0
    80001f64:	ddc080e7          	jalr	-548(ra) # 80001d3c <_ZN8KConsole18putCharacterOutputEc>
    80001f68:	fd1ff06f          	j	80001f38 <_ZN8KConsole11getcHandlerEv+0x3c>
        putCharacterOutput(13);
    80001f6c:	00d00513          	li	a0,13
    80001f70:	00000097          	auipc	ra,0x0
    80001f74:	dcc080e7          	jalr	-564(ra) # 80001d3c <_ZN8KConsole18putCharacterOutputEc>
        putCharacterOutput(10);
    80001f78:	00a00513          	li	a0,10
    80001f7c:	00000097          	auipc	ra,0x0
    80001f80:	dc0080e7          	jalr	-576(ra) # 80001d3c <_ZN8KConsole18putCharacterOutputEc>
    80001f84:	fbdff06f          	j	80001f40 <_ZN8KConsole11getcHandlerEv+0x44>

0000000080001f88 <_ZN8KConsole17outputBufferEmptyEv>:

bool KConsole::outputBufferEmpty()
{
    80001f88:	ff010113          	addi	sp,sp,-16
    80001f8c:	00813423          	sd	s0,8(sp)
    80001f90:	01010413          	addi	s0,sp,16
    return pendingPutc == 0;
}
    80001f94:	00007517          	auipc	a0,0x7
    80001f98:	f1453503          	ld	a0,-236(a0) # 80008ea8 <_ZN8KConsole11pendingPutcE>
    80001f9c:	00153513          	seqz	a0,a0
    80001fa0:	00813403          	ld	s0,8(sp)
    80001fa4:	01010113          	addi	sp,sp,16
    80001fa8:	00008067          	ret

0000000080001fac <_ZN8KConsole23sendCharactersToConsoleEPv>:
{
    80001fac:	fe010113          	addi	sp,sp,-32
    80001fb0:	00113c23          	sd	ra,24(sp)
    80001fb4:	00813823          	sd	s0,16(sp)
    80001fb8:	02010413          	addi	s0,sp,32
    80001fbc:	0180006f          	j	80001fd4 <_ZN8KConsole23sendCharactersToConsoleEPv+0x28>
                thread_exit();
    80001fc0:	fffff097          	auipc	ra,0xfffff
    80001fc4:	394080e7          	jalr	916(ra) # 80001354 <_Z11thread_exitv>
    80001fc8:	0340006f          	j	80001ffc <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
                thread_dispatch();
    80001fcc:	fffff097          	auipc	ra,0xfffff
    80001fd0:	368080e7          	jalr	872(ra) # 80001334 <_Z15thread_dispatchv>
            if(Riscv::finishSystem && KConsole::outputBufferEmpty() && pendingGetc == 0)
    80001fd4:	00007797          	auipc	a5,0x7
    80001fd8:	e0c7b783          	ld	a5,-500(a5) # 80008de0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80001fdc:	0007c783          	lbu	a5,0(a5)
    80001fe0:	00078e63          	beqz	a5,80001ffc <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
    80001fe4:	00000097          	auipc	ra,0x0
    80001fe8:	fa4080e7          	jalr	-92(ra) # 80001f88 <_ZN8KConsole17outputBufferEmptyEv>
    80001fec:	00050863          	beqz	a0,80001ffc <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
    80001ff0:	00007797          	auipc	a5,0x7
    80001ff4:	ec07b783          	ld	a5,-320(a5) # 80008eb0 <_ZN8KConsole11pendingGetcE>
    80001ff8:	fc0784e3          	beqz	a5,80001fc0 <_ZN8KConsole23sendCharactersToConsoleEPv+0x14>
            uint64 x = CONSOLE_STATUS;
    80001ffc:	00007797          	auipc	a5,0x7
    80002000:	d8c7b783          	ld	a5,-628(a5) # 80008d88 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002004:	0007b783          	ld	a5,0(a5)
            __asm__ volatile("mv a0, %0"::"r"(x));
    80002008:	00078513          	mv	a0,a5
            __asm__ volatile("lb a1, 0(a0)");
    8000200c:	00050583          	lb	a1,0(a0)
            __asm__ volatile("mv %0, a1" :  "=r"(operation));
    80002010:	00058793          	mv	a5,a1
            if ((operation & STATUS_WRITE_MASK) && pendingPutc > 0)
    80002014:	0207f793          	andi	a5,a5,32
    80002018:	fa078ae3          	beqz	a5,80001fcc <_ZN8KConsole23sendCharactersToConsoleEPv+0x20>
    8000201c:	00007797          	auipc	a5,0x7
    80002020:	e8c7b783          	ld	a5,-372(a5) # 80008ea8 <_ZN8KConsole11pendingPutcE>
    80002024:	fa0784e3          	beqz	a5,80001fcc <_ZN8KConsole23sendCharactersToConsoleEPv+0x20>
                char volatile c = sysCallGetCharOutput();
    80002028:	fffff097          	auipc	ra,0xfffff
    8000202c:	534080e7          	jalr	1332(ra) # 8000155c <_Z20sysCallGetCharOutputv>
    80002030:	fea407a3          	sb	a0,-17(s0)
                pendingPutc--;
    80002034:	00007717          	auipc	a4,0x7
    80002038:	e4470713          	addi	a4,a4,-444 # 80008e78 <_ZN8KConsole18hasCharactersInputE>
    8000203c:	03073783          	ld	a5,48(a4)
    80002040:	fff78793          	addi	a5,a5,-1
    80002044:	02f73823          	sd	a5,48(a4)
                x = CONSOLE_RX_DATA;
    80002048:	00007797          	auipc	a5,0x7
    8000204c:	d387b783          	ld	a5,-712(a5) # 80008d80 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002050:	0007b783          	ld	a5,0(a5)
                __asm__ volatile("mv a0, %0"::"r"(x));
    80002054:	00078513          	mv	a0,a5
                __asm__ volatile("mv a1, %0" :  :"r"((uint64)c));
    80002058:	fef44783          	lbu	a5,-17(s0)
    8000205c:	0ff7f793          	andi	a5,a5,255
    80002060:	00078593          	mv	a1,a5
                __asm__ volatile("sb a1,0(a0)");
    80002064:	00b50023          	sb	a1,0(a0)
    80002068:	f6dff06f          	j	80001fd4 <_ZN8KConsole23sendCharactersToConsoleEPv+0x28>

000000008000206c <_ZN8KConsole14getCharHandlerEv>:

void KConsole::getCharHandler()
{
    8000206c:	ff010113          	addi	sp,sp,-16
    80002070:	00113423          	sd	ra,8(sp)
    80002074:	00813023          	sd	s0,0(sp)
    80002078:	01010413          	addi	s0,sp,16
    char ch;
    ch = getCharacterOutput();
    8000207c:	00000097          	auipc	ra,0x0
    80002080:	dd8080e7          	jalr	-552(ra) # 80001e54 <_ZN8KConsole18getCharacterOutputEv>
    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    80002084:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80002088:	00001097          	auipc	ra,0x1
    8000208c:	af8080e7          	jalr	-1288(ra) # 80002b80 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002090:	00813083          	ld	ra,8(sp)
    80002094:	00013403          	ld	s0,0(sp)
    80002098:	01010113          	addi	sp,sp,16
    8000209c:	00008067          	ret

00000000800020a0 <_ZN8KConsole15trapPrintStringEPKc>:

void KConsole::trapPrintString(const char *string)
{
    800020a0:	fe010113          	addi	sp,sp,-32
    800020a4:	00113c23          	sd	ra,24(sp)
    800020a8:	00813823          	sd	s0,16(sp)
    800020ac:	00913423          	sd	s1,8(sp)
    800020b0:	02010413          	addi	s0,sp,32
    800020b4:	00050493          	mv	s1,a0
    while (*string != '\0')
    800020b8:	0004c503          	lbu	a0,0(s1)
    800020bc:	00050a63          	beqz	a0,800020d0 <_ZN8KConsole15trapPrintStringEPKc+0x30>
    {
        KConsole::putCharacterOutput(*string);
    800020c0:	00000097          	auipc	ra,0x0
    800020c4:	c7c080e7          	jalr	-900(ra) # 80001d3c <_ZN8KConsole18putCharacterOutputEc>
        string++;
    800020c8:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800020cc:	fedff06f          	j	800020b8 <_ZN8KConsole15trapPrintStringEPKc+0x18>
    }
}
    800020d0:	01813083          	ld	ra,24(sp)
    800020d4:	01013403          	ld	s0,16(sp)
    800020d8:	00813483          	ld	s1,8(sp)
    800020dc:	02010113          	addi	sp,sp,32
    800020e0:	00008067          	ret

00000000800020e4 <_ZN8KConsole8printIntEiii>:

void KConsole::printInt(int xx, int base, int sgn)
{
    800020e4:	fb010113          	addi	sp,sp,-80
    800020e8:	04113423          	sd	ra,72(sp)
    800020ec:	04813023          	sd	s0,64(sp)
    800020f0:	02913c23          	sd	s1,56(sp)
    800020f4:	05010413          	addi	s0,sp,80
    char digits[] = "0123456789ABCDEF";
    800020f8:	00005797          	auipc	a5,0x5
    800020fc:	f2878793          	addi	a5,a5,-216 # 80007020 <CONSOLE_STATUS+0x10>
    80002100:	0007b703          	ld	a4,0(a5)
    80002104:	fce43423          	sd	a4,-56(s0)
    80002108:	0087b703          	ld	a4,8(a5)
    8000210c:	fce43823          	sd	a4,-48(s0)
    80002110:	0107c783          	lbu	a5,16(a5)
    80002114:	fcf40c23          	sb	a5,-40(s0)
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0) {
    80002118:	00060463          	beqz	a2,80002120 <_ZN8KConsole8printIntEiii+0x3c>
    8000211c:	08054263          	bltz	a0,800021a0 <_ZN8KConsole8printIntEiii+0xbc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80002120:	0005051b          	sext.w	a0,a0
    neg = 0;
    80002124:	00000813          	li	a6,0
    }

    i = 0;
    80002128:	00000493          	li	s1,0
    do {
        buf[i++] = digits[x % base];
    8000212c:	0005871b          	sext.w	a4,a1
    80002130:	02b577bb          	remuw	a5,a0,a1
    80002134:	00048693          	mv	a3,s1
    80002138:	0014849b          	addiw	s1,s1,1
    8000213c:	02079793          	slli	a5,a5,0x20
    80002140:	0207d793          	srli	a5,a5,0x20
    80002144:	fe040613          	addi	a2,s0,-32
    80002148:	00f607b3          	add	a5,a2,a5
    8000214c:	fe87c603          	lbu	a2,-24(a5)
    80002150:	fe040793          	addi	a5,s0,-32
    80002154:	00d787b3          	add	a5,a5,a3
    80002158:	fcc78c23          	sb	a2,-40(a5)
    }while((x /= base) != 0);
    8000215c:	0005061b          	sext.w	a2,a0
    80002160:	02b5553b          	divuw	a0,a0,a1
    80002164:	fce674e3          	bgeu	a2,a4,8000212c <_ZN8KConsole8printIntEiii+0x48>
    if(neg)
    80002168:	00080c63          	beqz	a6,80002180 <_ZN8KConsole8printIntEiii+0x9c>
        buf[i++] = '-';
    8000216c:	fe040793          	addi	a5,s0,-32
    80002170:	009784b3          	add	s1,a5,s1
    80002174:	02d00793          	li	a5,45
    80002178:	fcf48c23          	sb	a5,-40(s1)
    8000217c:	0026849b          	addiw	s1,a3,2

    while(--i >= 0)
    80002180:	fff4849b          	addiw	s1,s1,-1
    80002184:	0204c463          	bltz	s1,800021ac <_ZN8KConsole8printIntEiii+0xc8>
        KConsole::putCharacterOutput(buf[i]);
    80002188:	fe040793          	addi	a5,s0,-32
    8000218c:	009787b3          	add	a5,a5,s1
    80002190:	fd87c503          	lbu	a0,-40(a5)
    80002194:	00000097          	auipc	ra,0x0
    80002198:	ba8080e7          	jalr	-1112(ra) # 80001d3c <_ZN8KConsole18putCharacterOutputEc>
    8000219c:	fe5ff06f          	j	80002180 <_ZN8KConsole8printIntEiii+0x9c>
        x = -xx;
    800021a0:	40a0053b          	negw	a0,a0
        neg = 1;
    800021a4:	00100813          	li	a6,1
        x = -xx;
    800021a8:	f81ff06f          	j	80002128 <_ZN8KConsole8printIntEiii+0x44>
}
    800021ac:	04813083          	ld	ra,72(sp)
    800021b0:	04013403          	ld	s0,64(sp)
    800021b4:	03813483          	ld	s1,56(sp)
    800021b8:	05010113          	addi	sp,sp,80
    800021bc:	00008067          	ret

00000000800021c0 <_ZN12SleepPCBList17insertSleepingPCBEv>:
#include "../h/Riscv.hpp"

PCB* SleepPCBList::sleepingPCBHead = 0;

void SleepPCBList::insertSleepingPCB()
{
    800021c0:	ff010113          	addi	sp,sp,-16
    800021c4:	00813423          	sd	s0,8(sp)
    800021c8:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SLEEPING);
    800021cc:	00007797          	auipc	a5,0x7
    800021d0:	c1c7b783          	ld	a5,-996(a5) # 80008de8 <_GLOBAL_OFFSET_TABLE_+0x70>
    800021d4:	0007b603          	ld	a2,0(a5)
    void setState(State s) {state = s;}
    800021d8:	00500793          	li	a5,5
    800021dc:	04f62023          	sw	a5,64(a2)
    PCB* prev = 0;
    PCB* curr = sleepingPCBHead;
    800021e0:	0000b797          	auipc	a5,0xb
    800021e4:	cd87b783          	ld	a5,-808(a5) # 8000ceb8 <_ZN12SleepPCBList15sleepingPCBHeadE>
    PCB* prev = 0;
    800021e8:	00000593          	li	a1,0
    while(curr != 0)
    800021ec:	02078063          	beqz	a5,8000220c <_ZN12SleepPCBList17insertSleepingPCBEv+0x4c>
    uint64 getTimeToSleep() {return timeToSleep;}
    800021f0:	02063683          	ld	a3,32(a2)
    800021f4:	0207b703          	ld	a4,32(a5)
    {
        if(PCB::running->getTimeToSleep() < curr->getTimeToSleep())
    800021f8:	00e6e863          	bltu	a3,a4,80002208 <_ZN12SleepPCBList17insertSleepingPCBEv+0x48>
        {
            PCB::running->nextPCB = curr;
            break;
        }
        prev = curr;
    800021fc:	00078593          	mv	a1,a5
        curr=curr->nextPCB;
    80002200:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80002204:	fe9ff06f          	j	800021ec <_ZN12SleepPCBList17insertSleepingPCBEv+0x2c>
            PCB::running->nextPCB = curr;
    80002208:	00f63423          	sd	a5,8(a2)
    }

    if(prev == 0)
    8000220c:	00058a63          	beqz	a1,80002220 <_ZN12SleepPCBList17insertSleepingPCBEv+0x60>
        sleepingPCBHead = PCB::running;
    else
        prev->nextPCB = PCB::running;
    80002210:	00c5b423          	sd	a2,8(a1)
}
    80002214:	00813403          	ld	s0,8(sp)
    80002218:	01010113          	addi	sp,sp,16
    8000221c:	00008067          	ret
        sleepingPCBHead = PCB::running;
    80002220:	0000b797          	auipc	a5,0xb
    80002224:	c8c7bc23          	sd	a2,-872(a5) # 8000ceb8 <_ZN12SleepPCBList15sleepingPCBHeadE>
    80002228:	fedff06f          	j	80002214 <_ZN12SleepPCBList17insertSleepingPCBEv+0x54>

000000008000222c <_ZN12SleepPCBList13tryToWakePCBsEv>:

void SleepPCBList::tryToWakePCBs()
{
    PCB* curr = sleepingPCBHead;
    8000222c:	0000b517          	auipc	a0,0xb
    80002230:	c8c53503          	ld	a0,-884(a0) # 8000ceb8 <_ZN12SleepPCBList15sleepingPCBHeadE>
    if(curr == 0)
    80002234:	06050e63          	beqz	a0,800022b0 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
        return;

    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    80002238:	06050c63          	beqz	a0,800022b0 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    8000223c:	02053783          	ld	a5,32(a0)
    80002240:	00007717          	auipc	a4,0x7
    80002244:	b8073703          	ld	a4,-1152(a4) # 80008dc0 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002248:	00073703          	ld	a4,0(a4)
    8000224c:	06f76263          	bltu	a4,a5,800022b0 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
{
    80002250:	fe010113          	addi	sp,sp,-32
    80002254:	00113c23          	sd	ra,24(sp)
    80002258:	00813823          	sd	s0,16(sp)
    8000225c:	00913423          	sd	s1,8(sp)
    80002260:	02010413          	addi	s0,sp,32
    80002264:	0180006f          	j	8000227c <_ZN12SleepPCBList13tryToWakePCBsEv+0x50>
    80002268:	0204b783          	ld	a5,32(s1)
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    8000226c:	00007717          	auipc	a4,0x7
    80002270:	b5473703          	ld	a4,-1196(a4) # 80008dc0 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002274:	00073703          	ld	a4,0(a4)
    80002278:	02f76263          	bltu	a4,a5,8000229c <_ZN12SleepPCBList13tryToWakePCBsEv+0x70>
    {
        PCB *old = curr;
        curr = curr->nextPCB;
    8000227c:	00853483          	ld	s1,8(a0)
        old->nextPCB = 0;
    80002280:	00053423          	sd	zero,8(a0)
        Scheduler::put(old);
    80002284:	00000097          	auipc	ra,0x0
    80002288:	0b8080e7          	jalr	184(ra) # 8000233c <_ZN9Scheduler3putEP3PCB>
        sleepingPCBHead = curr;
    8000228c:	0000b797          	auipc	a5,0xb
    80002290:	c297b623          	sd	s1,-980(a5) # 8000ceb8 <_ZN12SleepPCBList15sleepingPCBHeadE>
        curr = curr->nextPCB;
    80002294:	00048513          	mv	a0,s1
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    80002298:	fc0498e3          	bnez	s1,80002268 <_ZN12SleepPCBList13tryToWakePCBsEv+0x3c>
    }
}
    8000229c:	01813083          	ld	ra,24(sp)
    800022a0:	01013403          	ld	s0,16(sp)
    800022a4:	00813483          	ld	s1,8(sp)
    800022a8:	02010113          	addi	sp,sp,32
    800022ac:	00008067          	ret
    800022b0:	00008067          	ret

00000000800022b4 <_ZN9SchedulernwEm>:

PCB* Scheduler::schedulerPCBHead = 0;
PCB* Scheduler::schedulerPCBTail = 0;

void *Scheduler::operator new(size_t size)
{
    800022b4:	ff010113          	addi	sp,sp,-16
    800022b8:	00113423          	sd	ra,8(sp)
    800022bc:	00813023          	sd	s0,0(sp)
    800022c0:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmalloc(size);
    800022c4:	00001097          	auipc	ra,0x1
    800022c8:	08c080e7          	jalr	140(ra) # 80003350 <_ZN15MemoryAllocator7kmallocEm>
}
    800022cc:	00813083          	ld	ra,8(sp)
    800022d0:	00013403          	ld	s0,0(sp)
    800022d4:	01010113          	addi	sp,sp,16
    800022d8:	00008067          	ret

00000000800022dc <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *p)
{
    800022dc:	ff010113          	addi	sp,sp,-16
    800022e0:	00113423          	sd	ra,8(sp)
    800022e4:	00813023          	sd	s0,0(sp)
    800022e8:	01010413          	addi	s0,sp,16
    MemoryAllocator::kfree(p);
    800022ec:	00001097          	auipc	ra,0x1
    800022f0:	0c8080e7          	jalr	200(ra) # 800033b4 <_ZN15MemoryAllocator5kfreeEPv>
}
    800022f4:	00813083          	ld	ra,8(sp)
    800022f8:	00013403          	ld	s0,0(sp)
    800022fc:	01010113          	addi	sp,sp,16
    80002300:	00008067          	ret

0000000080002304 <_ZN9Scheduler7getSizeEv>:

int Scheduler::getSize()
{
    80002304:	ff010113          	addi	sp,sp,-16
    80002308:	00813423          	sd	s0,8(sp)
    8000230c:	01010413          	addi	s0,sp,16
    uint64 sz = 0;
    PCB* curr = schedulerPCBHead;
    80002310:	0000b797          	auipc	a5,0xb
    80002314:	bb07b783          	ld	a5,-1104(a5) # 8000cec0 <_ZN9Scheduler16schedulerPCBHeadE>
    uint64 sz = 0;
    80002318:	00000513          	li	a0,0
    while(curr != 0)
    8000231c:	00078863          	beqz	a5,8000232c <_ZN9Scheduler7getSizeEv+0x28>
    {
        sz++;
    80002320:	00150513          	addi	a0,a0,1
        curr = curr->nextPCB;
    80002324:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80002328:	ff5ff06f          	j	8000231c <_ZN9Scheduler7getSizeEv+0x18>
    }
    return sz;
}
    8000232c:	0005051b          	sext.w	a0,a0
    80002330:	00813403          	ld	s0,8(sp)
    80002334:	01010113          	addi	sp,sp,16
    80002338:	00008067          	ret

000000008000233c <_ZN9Scheduler3putEP3PCB>:

void Scheduler::put(PCB *pcb)
{
    8000233c:	ff010113          	addi	sp,sp,-16
    80002340:	00813423          	sd	s0,8(sp)
    80002344:	01010413          	addi	s0,sp,16
    void setState(State s) {state = s;}
    80002348:	04052023          	sw	zero,64(a0)
    pcb->setState(PCB::READY);
    pcb->nextPCB = 0;
    8000234c:	00053423          	sd	zero,8(a0)
    if(schedulerPCBHead == 0)
    80002350:	0000b797          	auipc	a5,0xb
    80002354:	b707b783          	ld	a5,-1168(a5) # 8000cec0 <_ZN9Scheduler16schedulerPCBHeadE>
    80002358:	02078263          	beqz	a5,8000237c <_ZN9Scheduler3putEP3PCB+0x40>
        schedulerPCBHead = schedulerPCBTail = pcb;
    else
    {
        schedulerPCBTail->nextPCB = pcb;
    8000235c:	0000b797          	auipc	a5,0xb
    80002360:	b6478793          	addi	a5,a5,-1180 # 8000cec0 <_ZN9Scheduler16schedulerPCBHeadE>
    80002364:	0087b703          	ld	a4,8(a5)
    80002368:	00a73423          	sd	a0,8(a4)
        schedulerPCBTail = pcb;
    8000236c:	00a7b423          	sd	a0,8(a5)
    }
}
    80002370:	00813403          	ld	s0,8(sp)
    80002374:	01010113          	addi	sp,sp,16
    80002378:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = pcb;
    8000237c:	0000b797          	auipc	a5,0xb
    80002380:	b4478793          	addi	a5,a5,-1212 # 8000cec0 <_ZN9Scheduler16schedulerPCBHeadE>
    80002384:	00a7b423          	sd	a0,8(a5)
    80002388:	00a7b023          	sd	a0,0(a5)
    8000238c:	fe5ff06f          	j	80002370 <_ZN9Scheduler3putEP3PCB+0x34>

0000000080002390 <_ZN9Scheduler3getEv>:

PCB *Scheduler::get()
{
    80002390:	ff010113          	addi	sp,sp,-16
    80002394:	00813423          	sd	s0,8(sp)
    80002398:	01010413          	addi	s0,sp,16
    if(schedulerPCBHead == 0)
    8000239c:	0000b517          	auipc	a0,0xb
    800023a0:	b2453503          	ld	a0,-1244(a0) # 8000cec0 <_ZN9Scheduler16schedulerPCBHeadE>
    800023a4:	00050c63          	beqz	a0,800023bc <_ZN9Scheduler3getEv+0x2c>
        return 0;
    PCB* retval = schedulerPCBHead;
    if(schedulerPCBHead->nextPCB == 0)
    800023a8:	00853783          	ld	a5,8(a0)
    800023ac:	00078e63          	beqz	a5,800023c8 <_ZN9Scheduler3getEv+0x38>
        schedulerPCBHead = schedulerPCBTail = 0;
    else
        schedulerPCBHead = schedulerPCBHead->nextPCB;
    800023b0:	0000b717          	auipc	a4,0xb
    800023b4:	b0f73823          	sd	a5,-1264(a4) # 8000cec0 <_ZN9Scheduler16schedulerPCBHeadE>
    retval->nextPCB = 0;
    800023b8:	00053423          	sd	zero,8(a0)
    return retval;
}
    800023bc:	00813403          	ld	s0,8(sp)
    800023c0:	01010113          	addi	sp,sp,16
    800023c4:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = 0;
    800023c8:	0000b797          	auipc	a5,0xb
    800023cc:	af878793          	addi	a5,a5,-1288 # 8000cec0 <_ZN9Scheduler16schedulerPCBHeadE>
    800023d0:	0007b423          	sd	zero,8(a5)
    800023d4:	0007b023          	sd	zero,0(a5)
    800023d8:	fe1ff06f          	j	800023b8 <_ZN9Scheduler3getEv+0x28>

00000000800023dc <_ZN9Scheduler5printEv>:

//todo delete maybe
void Scheduler::print()
{
    800023dc:	fe010113          	addi	sp,sp,-32
    800023e0:	00113c23          	sd	ra,24(sp)
    800023e4:	00813823          	sd	s0,16(sp)
    800023e8:	00913423          	sd	s1,8(sp)
    800023ec:	02010413          	addi	s0,sp,32
    //trapPrintString("Scheduler print\n");
    PCB* curr = schedulerPCBHead;
    800023f0:	0000b497          	auipc	s1,0xb
    800023f4:	ad04b483          	ld	s1,-1328(s1) # 8000cec0 <_ZN9Scheduler16schedulerPCBHeadE>
    while(curr != 0)
    800023f8:	02048863          	beqz	s1,80002428 <_ZN9Scheduler5printEv+0x4c>
    {
        printInt((uint64)curr, 16);
    800023fc:	00000613          	li	a2,0
    80002400:	01000593          	li	a1,16
    80002404:	0004851b          	sext.w	a0,s1
    80002408:	00001097          	auipc	ra,0x1
    8000240c:	5c0080e7          	jalr	1472(ra) # 800039c8 <_Z8printIntiii>
        printString("\n");
    80002410:	00005517          	auipc	a0,0x5
    80002414:	f5850513          	addi	a0,a0,-168 # 80007368 <CONSOLE_STATUS+0x358>
    80002418:	00001097          	auipc	ra,0x1
    8000241c:	418080e7          	jalr	1048(ra) # 80003830 <_Z11printStringPKc>
        curr = curr->nextPCB;
    80002420:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80002424:	fd5ff06f          	j	800023f8 <_ZN9Scheduler5printEv+0x1c>
    }
}
    80002428:	01813083          	ld	ra,24(sp)
    8000242c:	01013403          	ld	s0,16(sp)
    80002430:	00813483          	ld	s1,8(sp)
    80002434:	02010113          	addi	sp,sp,32
    80002438:	00008067          	ret

000000008000243c <main>:
#include "../h/Riscv.hpp"

void main()
{
    8000243c:	ff010113          	addi	sp,sp,-16
    80002440:	00113423          	sd	ra,8(sp)
    80002444:	00813023          	sd	s0,0(sp)
    80002448:	01010413          	addi	s0,sp,16
    Riscv::kernelMain();
    8000244c:	00000097          	auipc	ra,0x0
    80002450:	664080e7          	jalr	1636(ra) # 80002ab0 <_ZN5Riscv10kernelMainEv>
    80002454:	00813083          	ld	ra,8(sp)
    80002458:	00013403          	ld	s0,0(sp)
    8000245c:	01010113          	addi	sp,sp,16
    80002460:	00008067          	ret

0000000080002464 <_ZN6Thread6runnerEPv>:
    myHandle = 0;
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
}

void Thread::runner(void *t)
{
    80002464:	ff010113          	addi	sp,sp,-16
    80002468:	00113423          	sd	ra,8(sp)
    8000246c:	00813023          	sd	s0,0(sp)
    80002470:	01010413          	addi	s0,sp,16
    Thread* thr = (Thread*)t;
    thr->run();
    80002474:	00053783          	ld	a5,0(a0)
    80002478:	0107b783          	ld	a5,16(a5)
    8000247c:	000780e7          	jalr	a5
}
    80002480:	00813083          	ld	ra,8(sp)
    80002484:	00013403          	ld	s0,0(sp)
    80002488:	01010113          	addi	sp,sp,16
    8000248c:	00008067          	ret

0000000080002490 <_ZN6ThreadD1Ev>:

Thread::~Thread()
    80002490:	00007797          	auipc	a5,0x7
    80002494:	89878793          	addi	a5,a5,-1896 # 80008d28 <_ZTV6Thread+0x10>
    80002498:	00f53023          	sd	a5,0(a0)
{
    delete myHandle;
    8000249c:	00853503          	ld	a0,8(a0)
    800024a0:	02050663          	beqz	a0,800024cc <_ZN6ThreadD1Ev+0x3c>
Thread::~Thread()
    800024a4:	ff010113          	addi	sp,sp,-16
    800024a8:	00113423          	sd	ra,8(sp)
    800024ac:	00813023          	sd	s0,0(sp)
    800024b0:	01010413          	addi	s0,sp,16
    delete myHandle;
    800024b4:	fffff097          	auipc	ra,0xfffff
    800024b8:	0fc080e7          	jalr	252(ra) # 800015b0 <_ZN7_threaddlEPv>
}
    800024bc:	00813083          	ld	ra,8(sp)
    800024c0:	00013403          	ld	s0,0(sp)
    800024c4:	01010113          	addi	sp,sp,16
    800024c8:	00008067          	ret
    800024cc:	00008067          	ret

00000000800024d0 <_ZN9SemaphoreD1Ev>:
    if(myHandle == 0)
        return -1;
    return sem_signal(myHandle);
}

Semaphore::~Semaphore() {
    800024d0:	00007797          	auipc	a5,0x7
    800024d4:	88078793          	addi	a5,a5,-1920 # 80008d50 <_ZTV9Semaphore+0x10>
    800024d8:	00f53023          	sd	a5,0(a0)
    delete myHandle;
    800024dc:	00853503          	ld	a0,8(a0)
    800024e0:	02050663          	beqz	a0,8000250c <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore() {
    800024e4:	ff010113          	addi	sp,sp,-16
    800024e8:	00113423          	sd	ra,8(sp)
    800024ec:	00813023          	sd	s0,0(sp)
    800024f0:	01010413          	addi	s0,sp,16
    delete myHandle;
    800024f4:	00000097          	auipc	ra,0x0
    800024f8:	464080e7          	jalr	1124(ra) # 80002958 <_ZN4_semdlEPv>
}
    800024fc:	00813083          	ld	ra,8(sp)
    80002500:	00013403          	ld	s0,0(sp)
    80002504:	01010113          	addi	sp,sp,16
    80002508:	00008067          	ret
    8000250c:	00008067          	ret

0000000080002510 <_Znwm>:
{
    80002510:	ff010113          	addi	sp,sp,-16
    80002514:	00113423          	sd	ra,8(sp)
    80002518:	00813023          	sd	s0,0(sp)
    8000251c:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80002520:	fffff097          	auipc	ra,0xfffff
    80002524:	d38080e7          	jalr	-712(ra) # 80001258 <_Z9mem_allocm>
}
    80002528:	00813083          	ld	ra,8(sp)
    8000252c:	00013403          	ld	s0,0(sp)
    80002530:	01010113          	addi	sp,sp,16
    80002534:	00008067          	ret

0000000080002538 <_ZdlPv>:
{
    80002538:	ff010113          	addi	sp,sp,-16
    8000253c:	00113423          	sd	ra,8(sp)
    80002540:	00813023          	sd	s0,0(sp)
    80002544:	01010413          	addi	s0,sp,16
    mem_free(p);
    80002548:	fffff097          	auipc	ra,0xfffff
    8000254c:	d40080e7          	jalr	-704(ra) # 80001288 <_Z8mem_freePv>
}
    80002550:	00813083          	ld	ra,8(sp)
    80002554:	00013403          	ld	s0,0(sp)
    80002558:	01010113          	addi	sp,sp,16
    8000255c:	00008067          	ret

0000000080002560 <_ZN6ThreadD0Ev>:
Thread::~Thread()
    80002560:	fe010113          	addi	sp,sp,-32
    80002564:	00113c23          	sd	ra,24(sp)
    80002568:	00813823          	sd	s0,16(sp)
    8000256c:	00913423          	sd	s1,8(sp)
    80002570:	02010413          	addi	s0,sp,32
    80002574:	00050493          	mv	s1,a0
}
    80002578:	00000097          	auipc	ra,0x0
    8000257c:	f18080e7          	jalr	-232(ra) # 80002490 <_ZN6ThreadD1Ev>
    80002580:	00048513          	mv	a0,s1
    80002584:	00000097          	auipc	ra,0x0
    80002588:	fb4080e7          	jalr	-76(ra) # 80002538 <_ZdlPv>
    8000258c:	01813083          	ld	ra,24(sp)
    80002590:	01013403          	ld	s0,16(sp)
    80002594:	00813483          	ld	s1,8(sp)
    80002598:	02010113          	addi	sp,sp,32
    8000259c:	00008067          	ret

00000000800025a0 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    800025a0:	fe010113          	addi	sp,sp,-32
    800025a4:	00113c23          	sd	ra,24(sp)
    800025a8:	00813823          	sd	s0,16(sp)
    800025ac:	00913423          	sd	s1,8(sp)
    800025b0:	02010413          	addi	s0,sp,32
    800025b4:	00050493          	mv	s1,a0
}
    800025b8:	00000097          	auipc	ra,0x0
    800025bc:	f18080e7          	jalr	-232(ra) # 800024d0 <_ZN9SemaphoreD1Ev>
    800025c0:	00048513          	mv	a0,s1
    800025c4:	00000097          	auipc	ra,0x0
    800025c8:	f74080e7          	jalr	-140(ra) # 80002538 <_ZdlPv>
    800025cc:	01813083          	ld	ra,24(sp)
    800025d0:	01013403          	ld	s0,16(sp)
    800025d4:	00813483          	ld	s1,8(sp)
    800025d8:	02010113          	addi	sp,sp,32
    800025dc:	00008067          	ret

00000000800025e0 <_ZN6Thread5startEv>:
    if(myHandle != 0)
    800025e0:	00853503          	ld	a0,8(a0)
    800025e4:	02050663          	beqz	a0,80002610 <_ZN6Thread5startEv+0x30>
{
    800025e8:	ff010113          	addi	sp,sp,-16
    800025ec:	00113423          	sd	ra,8(sp)
    800025f0:	00813023          	sd	s0,0(sp)
    800025f4:	01010413          	addi	s0,sp,16
        return thread_start(myHandle);
    800025f8:	fffff097          	auipc	ra,0xfffff
    800025fc:	e6c080e7          	jalr	-404(ra) # 80001464 <_Z12thread_startPv>
}
    80002600:	00813083          	ld	ra,8(sp)
    80002604:	00013403          	ld	s0,0(sp)
    80002608:	01010113          	addi	sp,sp,16
    8000260c:	00008067          	ret
        return -1;
    80002610:	fff00513          	li	a0,-1
}
    80002614:	00008067          	ret

0000000080002618 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80002618:	ff010113          	addi	sp,sp,-16
    8000261c:	00113423          	sd	ra,8(sp)
    80002620:	00813023          	sd	s0,0(sp)
    80002624:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002628:	fffff097          	auipc	ra,0xfffff
    8000262c:	d0c080e7          	jalr	-756(ra) # 80001334 <_Z15thread_dispatchv>
}
    80002630:	00813083          	ld	ra,8(sp)
    80002634:	00013403          	ld	s0,0(sp)
    80002638:	01010113          	addi	sp,sp,16
    8000263c:	00008067          	ret

0000000080002640 <_ZN6Thread5sleepEm>:
{
    80002640:	ff010113          	addi	sp,sp,-16
    80002644:	00113423          	sd	ra,8(sp)
    80002648:	00813023          	sd	s0,0(sp)
    8000264c:	01010413          	addi	s0,sp,16
    time_sleep(time);
    80002650:	fffff097          	auipc	ra,0xfffff
    80002654:	de8080e7          	jalr	-536(ra) # 80001438 <_Z10time_sleepm>
}
    80002658:	00813083          	ld	ra,8(sp)
    8000265c:	00013403          	ld	s0,0(sp)
    80002660:	01010113          	addi	sp,sp,16
    80002664:	00008067          	ret

0000000080002668 <_ZN14PeriodicThread6runnerEPv>:
{

}

void PeriodicThread::runner(void* arg)
{
    80002668:	fe010113          	addi	sp,sp,-32
    8000266c:	00113c23          	sd	ra,24(sp)
    80002670:	00813823          	sd	s0,16(sp)
    80002674:	00913423          	sd	s1,8(sp)
    80002678:	01213023          	sd	s2,0(sp)
    8000267c:	02010413          	addi	s0,sp,32
    PeriodicThread *pThread =(PeriodicThread*) ((ArgsPeriodic*)arg)->pt;
    80002680:	00053483          	ld	s1,0(a0)
    uint64 time = ((ArgsPeriodic*)arg)->time;
    80002684:	00853903          	ld	s2,8(a0)

    while(true)
    {
        pThread->periodicActivation();
    80002688:	0004b783          	ld	a5,0(s1)
    8000268c:	0187b783          	ld	a5,24(a5)
    80002690:	00048513          	mv	a0,s1
    80002694:	000780e7          	jalr	a5
        Thread::sleep(time);
    80002698:	00090513          	mv	a0,s2
    8000269c:	00000097          	auipc	ra,0x0
    800026a0:	fa4080e7          	jalr	-92(ra) # 80002640 <_ZN6Thread5sleepEm>
    while(true)
    800026a4:	fe5ff06f          	j	80002688 <_ZN14PeriodicThread6runnerEPv+0x20>

00000000800026a8 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *args)
    800026a8:	ff010113          	addi	sp,sp,-16
    800026ac:	00113423          	sd	ra,8(sp)
    800026b0:	00813023          	sd	s0,0(sp)
    800026b4:	01010413          	addi	s0,sp,16
    800026b8:	00006797          	auipc	a5,0x6
    800026bc:	67078793          	addi	a5,a5,1648 # 80008d28 <_ZTV6Thread+0x10>
    800026c0:	00f53023          	sd	a5,0(a0)
    myHandle = 0;
    800026c4:	00053423          	sd	zero,8(a0)
    thread_make_pcb(&myHandle, body, args);
    800026c8:	00850513          	addi	a0,a0,8
    800026cc:	fffff097          	auipc	ra,0xfffff
    800026d0:	dc4080e7          	jalr	-572(ra) # 80001490 <_Z15thread_make_pcbPP7_threadPFvPvES2_>
}
    800026d4:	00813083          	ld	ra,8(sp)
    800026d8:	00013403          	ld	s0,0(sp)
    800026dc:	01010113          	addi	sp,sp,16
    800026e0:	00008067          	ret

00000000800026e4 <_ZN6ThreadC1Ev>:
Thread::Thread()
    800026e4:	ff010113          	addi	sp,sp,-16
    800026e8:	00113423          	sd	ra,8(sp)
    800026ec:	00813023          	sd	s0,0(sp)
    800026f0:	01010413          	addi	s0,sp,16
    800026f4:	00006797          	auipc	a5,0x6
    800026f8:	63478793          	addi	a5,a5,1588 # 80008d28 <_ZTV6Thread+0x10>
    800026fc:	00f53023          	sd	a5,0(a0)
    myHandle = 0;
    80002700:	00053423          	sd	zero,8(a0)
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
    80002704:	00050613          	mv	a2,a0
    80002708:	00000597          	auipc	a1,0x0
    8000270c:	d5c58593          	addi	a1,a1,-676 # 80002464 <_ZN6Thread6runnerEPv>
    80002710:	00850513          	addi	a0,a0,8
    80002714:	fffff097          	auipc	ra,0xfffff
    80002718:	d7c080e7          	jalr	-644(ra) # 80001490 <_Z15thread_make_pcbPP7_threadPFvPvES2_>
}
    8000271c:	00813083          	ld	ra,8(sp)
    80002720:	00013403          	ld	s0,0(sp)
    80002724:	01010113          	addi	sp,sp,16
    80002728:	00008067          	ret

000000008000272c <_ZN9Semaphore4waitEv>:
    if(myHandle == 0)
    8000272c:	00853503          	ld	a0,8(a0)
    80002730:	02050663          	beqz	a0,8000275c <_ZN9Semaphore4waitEv+0x30>
{
    80002734:	ff010113          	addi	sp,sp,-16
    80002738:	00113423          	sd	ra,8(sp)
    8000273c:	00813023          	sd	s0,0(sp)
    80002740:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80002744:	fffff097          	auipc	ra,0xfffff
    80002748:	c9c080e7          	jalr	-868(ra) # 800013e0 <_Z8sem_waitP4_sem>
}
    8000274c:	00813083          	ld	ra,8(sp)
    80002750:	00013403          	ld	s0,0(sp)
    80002754:	01010113          	addi	sp,sp,16
    80002758:	00008067          	ret
        return -1;
    8000275c:	fff00513          	li	a0,-1
}
    80002760:	00008067          	ret

0000000080002764 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init)
    80002764:	fe010113          	addi	sp,sp,-32
    80002768:	00113c23          	sd	ra,24(sp)
    8000276c:	00813823          	sd	s0,16(sp)
    80002770:	00913423          	sd	s1,8(sp)
    80002774:	02010413          	addi	s0,sp,32
    80002778:	00050493          	mv	s1,a0
    8000277c:	00006797          	auipc	a5,0x6
    80002780:	5d478793          	addi	a5,a5,1492 # 80008d50 <_ZTV9Semaphore+0x10>
    80002784:	00f53023          	sd	a5,0(a0)
    int retval = sem_open(&myHandle, init);
    80002788:	00850513          	addi	a0,a0,8
    8000278c:	fffff097          	auipc	ra,0xfffff
    80002790:	bf0080e7          	jalr	-1040(ra) # 8000137c <_Z8sem_openPP4_semj>
    if(retval != 0)
    80002794:	00050463          	beqz	a0,8000279c <_ZN9SemaphoreC1Ej+0x38>
        myHandle = 0;
    80002798:	0004b423          	sd	zero,8(s1)
}
    8000279c:	01813083          	ld	ra,24(sp)
    800027a0:	01013403          	ld	s0,16(sp)
    800027a4:	00813483          	ld	s1,8(sp)
    800027a8:	02010113          	addi	sp,sp,32
    800027ac:	00008067          	ret

00000000800027b0 <_ZN9Semaphore6signalEv>:
    if(myHandle == 0)
    800027b0:	00853503          	ld	a0,8(a0)
    800027b4:	02050663          	beqz	a0,800027e0 <_ZN9Semaphore6signalEv+0x30>
{
    800027b8:	ff010113          	addi	sp,sp,-16
    800027bc:	00113423          	sd	ra,8(sp)
    800027c0:	00813023          	sd	s0,0(sp)
    800027c4:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    800027c8:	fffff097          	auipc	ra,0xfffff
    800027cc:	c44080e7          	jalr	-956(ra) # 8000140c <_Z10sem_signalP4_sem>
}
    800027d0:	00813083          	ld	ra,8(sp)
    800027d4:	00013403          	ld	s0,0(sp)
    800027d8:	01010113          	addi	sp,sp,16
    800027dc:	00008067          	ret
        return -1;
    800027e0:	fff00513          	li	a0,-1
}
    800027e4:	00008067          	ret

00000000800027e8 <_ZN7Console4getcEv>:
{
    800027e8:	ff010113          	addi	sp,sp,-16
    800027ec:	00113423          	sd	ra,8(sp)
    800027f0:	00813023          	sd	s0,0(sp)
    800027f4:	01010413          	addi	s0,sp,16
    return ::getc();
    800027f8:	fffff097          	auipc	ra,0xfffff
    800027fc:	d18080e7          	jalr	-744(ra) # 80001510 <_Z4getcv>
}
    80002800:	00813083          	ld	ra,8(sp)
    80002804:	00013403          	ld	s0,0(sp)
    80002808:	01010113          	addi	sp,sp,16
    8000280c:	00008067          	ret

0000000080002810 <_ZN7Console4putcEc>:
{
    80002810:	ff010113          	addi	sp,sp,-16
    80002814:	00113423          	sd	ra,8(sp)
    80002818:	00813023          	sd	s0,0(sp)
    8000281c:	01010413          	addi	s0,sp,16
    return ::putc(c);
    80002820:	fffff097          	auipc	ra,0xfffff
    80002824:	d18080e7          	jalr	-744(ra) # 80001538 <_Z4putcc>
}
    80002828:	00813083          	ld	ra,8(sp)
    8000282c:	00013403          	ld	s0,0(sp)
    80002830:	01010113          	addi	sp,sp,16
    80002834:	00008067          	ret

0000000080002838 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    80002838:	fe010113          	addi	sp,sp,-32
    8000283c:	00113c23          	sd	ra,24(sp)
    80002840:	00813823          	sd	s0,16(sp)
    80002844:	00913423          	sd	s1,8(sp)
    80002848:	01213023          	sd	s2,0(sp)
    8000284c:	02010413          	addi	s0,sp,32
    80002850:	00050493          	mv	s1,a0
    80002854:	00058913          	mv	s2,a1
    80002858:	01000513          	li	a0,16
    8000285c:	00000097          	auipc	ra,0x0
    80002860:	cb4080e7          	jalr	-844(ra) # 80002510 <_Znwm>
    80002864:	00050613          	mv	a2,a0
    ArgsPeriodic(void *p, uint64 t) : pt(p), time(t){}
    80002868:	00953023          	sd	s1,0(a0)
    8000286c:	01253423          	sd	s2,8(a0)
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    80002870:	00000597          	auipc	a1,0x0
    80002874:	df858593          	addi	a1,a1,-520 # 80002668 <_ZN14PeriodicThread6runnerEPv>
    80002878:	00048513          	mv	a0,s1
    8000287c:	00000097          	auipc	ra,0x0
    80002880:	e2c080e7          	jalr	-468(ra) # 800026a8 <_ZN6ThreadC1EPFvPvES0_>
    80002884:	00006797          	auipc	a5,0x6
    80002888:	47478793          	addi	a5,a5,1140 # 80008cf8 <_ZTV14PeriodicThread+0x10>
    8000288c:	00f4b023          	sd	a5,0(s1)
}
    80002890:	01813083          	ld	ra,24(sp)
    80002894:	01013403          	ld	s0,16(sp)
    80002898:	00813483          	ld	s1,8(sp)
    8000289c:	00013903          	ld	s2,0(sp)
    800028a0:	02010113          	addi	sp,sp,32
    800028a4:	00008067          	ret

00000000800028a8 <_ZN6Thread3runEv>:
    static void sleep(time_t);

protected:
    Thread();

    virtual void run() {}
    800028a8:	ff010113          	addi	sp,sp,-16
    800028ac:	00813423          	sd	s0,8(sp)
    800028b0:	01010413          	addi	s0,sp,16
    800028b4:	00813403          	ld	s0,8(sp)
    800028b8:	01010113          	addi	sp,sp,16
    800028bc:	00008067          	ret

00000000800028c0 <_ZN14PeriodicThread18periodicActivationEv>:

class PeriodicThread : public Thread
{
protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {};
    800028c0:	ff010113          	addi	sp,sp,-16
    800028c4:	00813423          	sd	s0,8(sp)
    800028c8:	01010413          	addi	s0,sp,16
    800028cc:	00813403          	ld	s0,8(sp)
    800028d0:	01010113          	addi	sp,sp,16
    800028d4:	00008067          	ret

00000000800028d8 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread
    800028d8:	ff010113          	addi	sp,sp,-16
    800028dc:	00113423          	sd	ra,8(sp)
    800028e0:	00813023          	sd	s0,0(sp)
    800028e4:	01010413          	addi	s0,sp,16
    800028e8:	00006797          	auipc	a5,0x6
    800028ec:	41078793          	addi	a5,a5,1040 # 80008cf8 <_ZTV14PeriodicThread+0x10>
    800028f0:	00f53023          	sd	a5,0(a0)
    800028f4:	00000097          	auipc	ra,0x0
    800028f8:	b9c080e7          	jalr	-1124(ra) # 80002490 <_ZN6ThreadD1Ev>
    800028fc:	00813083          	ld	ra,8(sp)
    80002900:	00013403          	ld	s0,0(sp)
    80002904:	01010113          	addi	sp,sp,16
    80002908:	00008067          	ret

000000008000290c <_ZN14PeriodicThreadD0Ev>:
    8000290c:	fe010113          	addi	sp,sp,-32
    80002910:	00113c23          	sd	ra,24(sp)
    80002914:	00813823          	sd	s0,16(sp)
    80002918:	00913423          	sd	s1,8(sp)
    8000291c:	02010413          	addi	s0,sp,32
    80002920:	00050493          	mv	s1,a0
    80002924:	00006797          	auipc	a5,0x6
    80002928:	3d478793          	addi	a5,a5,980 # 80008cf8 <_ZTV14PeriodicThread+0x10>
    8000292c:	00f53023          	sd	a5,0(a0)
    80002930:	00000097          	auipc	ra,0x0
    80002934:	b60080e7          	jalr	-1184(ra) # 80002490 <_ZN6ThreadD1Ev>
    80002938:	00048513          	mv	a0,s1
    8000293c:	00000097          	auipc	ra,0x0
    80002940:	bfc080e7          	jalr	-1028(ra) # 80002538 <_ZdlPv>
    80002944:	01813083          	ld	ra,24(sp)
    80002948:	01013403          	ld	s0,16(sp)
    8000294c:	00813483          	ld	s1,8(sp)
    80002950:	02010113          	addi	sp,sp,32
    80002954:	00008067          	ret

0000000080002958 <_ZN4_semdlEPv>:
//

#include "../h/_sem.hpp"
#include "../h/syscall_c.hpp"

void _sem::operator delete(void *p) {
    80002958:	ff010113          	addi	sp,sp,-16
    8000295c:	00113423          	sd	ra,8(sp)
    80002960:	00813023          	sd	s0,0(sp)
    80002964:	01010413          	addi	s0,sp,16
    sem_close((sem_t)p);
    80002968:	fffff097          	auipc	ra,0xfffff
    8000296c:	a4c080e7          	jalr	-1460(ra) # 800013b4 <_Z9sem_closeP4_sem>
}
    80002970:	00813083          	ld	ra,8(sp)
    80002974:	00013403          	ld	s0,0(sp)
    80002978:	01010113          	addi	sp,sp,16
    8000297c:	00008067          	ret

0000000080002980 <_ZN5Riscv10initSystemEv>:
uint64 Riscv::totalTime = 0;
bool Riscv::finishSystem = false;
bool Riscv::kernelMainCalled = false;

void Riscv::initSystem()
{
    80002980:	ff010113          	addi	sp,sp,-16
    80002984:	00113423          	sd	ra,8(sp)
    80002988:	00813023          	sd	s0,0(sp)
    8000298c:	01010413          	addi	s0,sp,16
    w_stvec((uint64)&Riscv::supervisorTrap);
    80002990:	00006797          	auipc	a5,0x6
    80002994:	4087b783          	ld	a5,1032(a5) # 80008d98 <_GLOBAL_OFFSET_TABLE_+0x20>
    __asm__ volatile("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    80002998:	10579073          	csrw	stvec,a5
    PCB::initialize();
    8000299c:	fffff097          	auipc	ra,0xfffff
    800029a0:	e18080e7          	jalr	-488(ra) # 800017b4 <_ZN3PCB10initializeEv>
    KConsole::initialize();
    800029a4:	fffff097          	auipc	ra,0xfffff
    800029a8:	208080e7          	jalr	520(ra) # 80001bac <_ZN8KConsole10initializeEv>
}
    800029ac:	00813083          	ld	ra,8(sp)
    800029b0:	00013403          	ld	s0,0(sp)
    800029b4:	01010113          	addi	sp,sp,16
    800029b8:	00008067          	ret

00000000800029bc <_ZN5Riscv16enableInterruptsEv>:
        thread_dispatch();
    }
    disableInterrupts();
}

void Riscv::enableInterrupts() {
    800029bc:	ff010113          	addi	sp,sp,-16
    800029c0:	00813423          	sd	s0,8(sp)
    800029c4:	01010413          	addi	s0,sp,16
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %0" : :"r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    800029c8:	00200793          	li	a5,2
    800029cc:	1007a073          	csrs	sstatus,a5
    ms_sstatus(Riscv::SSTATUS_SIE);
}
    800029d0:	00813403          	ld	s0,8(sp)
    800029d4:	01010113          	addi	sp,sp,16
    800029d8:	00008067          	ret

00000000800029dc <_ZN5Riscv17disableInterruptsEv>:

void Riscv::disableInterrupts()
{
    800029dc:	ff010113          	addi	sp,sp,-16
    800029e0:	00813423          	sd	s0,8(sp)
    800029e4:	01010413          	addi	s0,sp,16
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    800029e8:	00200793          	li	a5,2
    800029ec:	1007b073          	csrc	sstatus,a5
    mc_sstatus(Riscv::SSTATUS_SIE);
}
    800029f0:	00813403          	ld	s0,8(sp)
    800029f4:	01010113          	addi	sp,sp,16
    800029f8:	00008067          	ret

00000000800029fc <_ZN5Riscv9endSystemEv>:
{
    800029fc:	ff010113          	addi	sp,sp,-16
    80002a00:	00113423          	sd	ra,8(sp)
    80002a04:	00813023          	sd	s0,0(sp)
    80002a08:	01010413          	addi	s0,sp,16
    disableInterrupts();
    80002a0c:	00000097          	auipc	ra,0x0
    80002a10:	fd0080e7          	jalr	-48(ra) # 800029dc <_ZN5Riscv17disableInterruptsEv>
    finishSystem = true;
    80002a14:	00100793          	li	a5,1
    80002a18:	0000a717          	auipc	a4,0xa
    80002a1c:	4af70c23          	sb	a5,1208(a4) # 8000ced0 <_ZN5Riscv12finishSystemE>
        pcb = Scheduler::get();
    80002a20:	00000097          	auipc	ra,0x0
    80002a24:	970080e7          	jalr	-1680(ra) # 80002390 <_ZN9Scheduler3getEv>
        if(pcb == 0) break;
    80002a28:	fe051ce3          	bnez	a0,80002a20 <_ZN5Riscv9endSystemEv+0x24>
    Scheduler::put(PCB::consolePCB);
    80002a2c:	00006797          	auipc	a5,0x6
    80002a30:	3a47b783          	ld	a5,932(a5) # 80008dd0 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002a34:	0007b503          	ld	a0,0(a5)
    80002a38:	00000097          	auipc	ra,0x0
    80002a3c:	904080e7          	jalr	-1788(ra) # 8000233c <_ZN9Scheduler3putEP3PCB>
    KConsole::pendingGetc = 0;
    80002a40:	00006797          	auipc	a5,0x6
    80002a44:	3607b783          	ld	a5,864(a5) # 80008da0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002a48:	0007b023          	sd	zero,0(a5)
    enableInterrupts();
    80002a4c:	00000097          	auipc	ra,0x0
    80002a50:	f70080e7          	jalr	-144(ra) # 800029bc <_ZN5Riscv16enableInterruptsEv>
    while(!PCB::consolePCB->isFinished())
    80002a54:	00006797          	auipc	a5,0x6
    80002a58:	37c7b783          	ld	a5,892(a5) # 80008dd0 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002a5c:	0007b503          	ld	a0,0(a5)
    80002a60:	fffff097          	auipc	ra,0xfffff
    80002a64:	e74080e7          	jalr	-396(ra) # 800018d4 <_ZN3PCB10isFinishedEv>
    80002a68:	00051863          	bnez	a0,80002a78 <_ZN5Riscv9endSystemEv+0x7c>
        thread_dispatch();
    80002a6c:	fffff097          	auipc	ra,0xfffff
    80002a70:	8c8080e7          	jalr	-1848(ra) # 80001334 <_Z15thread_dispatchv>
    while(!PCB::consolePCB->isFinished())
    80002a74:	fe1ff06f          	j	80002a54 <_ZN5Riscv9endSystemEv+0x58>
    disableInterrupts();
    80002a78:	00000097          	auipc	ra,0x0
    80002a7c:	f64080e7          	jalr	-156(ra) # 800029dc <_ZN5Riscv17disableInterruptsEv>
}
    80002a80:	00813083          	ld	ra,8(sp)
    80002a84:	00013403          	ld	s0,0(sp)
    80002a88:	01010113          	addi	sp,sp,16
    80002a8c:	00008067          	ret

0000000080002a90 <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie()
{
    80002a90:	ff010113          	addi	sp,sp,-16
    80002a94:	00813423          	sd	s0,8(sp)
    80002a98:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80002a9c:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80002aa0:	10200073          	sret
}
    80002aa4:	00813403          	ld	s0,8(sp)
    80002aa8:	01010113          	addi	sp,sp,16
    80002aac:	00008067          	ret

0000000080002ab0 <_ZN5Riscv10kernelMainEv>:
    }
}

void Riscv::kernelMain()
{
    if(kernelMainCalled) return;
    80002ab0:	0000a797          	auipc	a5,0xa
    80002ab4:	4217c783          	lbu	a5,1057(a5) # 8000ced1 <_ZN5Riscv16kernelMainCalledE>
    80002ab8:	00078463          	beqz	a5,80002ac0 <_ZN5Riscv10kernelMainEv+0x10>
    80002abc:	00008067          	ret
{
    80002ac0:	ff010113          	addi	sp,sp,-16
    80002ac4:	00113423          	sd	ra,8(sp)
    80002ac8:	00813023          	sd	s0,0(sp)
    80002acc:	01010413          	addi	s0,sp,16
    kernelMainCalled = true;
    80002ad0:	00100793          	li	a5,1
    80002ad4:	0000a717          	auipc	a4,0xa
    80002ad8:	3ef70ea3          	sb	a5,1021(a4) # 8000ced1 <_ZN5Riscv16kernelMainCalledE>

    initSystem();
    80002adc:	00000097          	auipc	ra,0x0
    80002ae0:	ea4080e7          	jalr	-348(ra) # 80002980 <_ZN5Riscv10initSystemEv>

    //disableTimerInterrupts();
    enableInterrupts();
    80002ae4:	00000097          	auipc	ra,0x0
    80002ae8:	ed8080e7          	jalr	-296(ra) # 800029bc <_ZN5Riscv16enableInterruptsEv>

    while(!PCB::userPCB->isFinished())
    80002aec:	00006797          	auipc	a5,0x6
    80002af0:	2ec7b783          	ld	a5,748(a5) # 80008dd8 <_GLOBAL_OFFSET_TABLE_+0x60>
    80002af4:	0007b503          	ld	a0,0(a5)
    80002af8:	fffff097          	auipc	ra,0xfffff
    80002afc:	ddc080e7          	jalr	-548(ra) # 800018d4 <_ZN3PCB10isFinishedEv>
    80002b00:	00051863          	bnez	a0,80002b10 <_ZN5Riscv10kernelMainEv+0x60>
    {
        thread_dispatch();
    80002b04:	fffff097          	auipc	ra,0xfffff
    80002b08:	830080e7          	jalr	-2000(ra) # 80001334 <_Z15thread_dispatchv>
    while(!PCB::userPCB->isFinished())
    80002b0c:	fe1ff06f          	j	80002aec <_ZN5Riscv10kernelMainEv+0x3c>
    }

    //printString("End...\n");
    endSystem();
    80002b10:	00000097          	auipc	ra,0x0
    80002b14:	eec080e7          	jalr	-276(ra) # 800029fc <_ZN5Riscv9endSystemEv>
}
    80002b18:	00813083          	ld	ra,8(sp)
    80002b1c:	00013403          	ld	s0,0(sp)
    80002b20:	01010113          	addi	sp,sp,16
    80002b24:	00008067          	ret

0000000080002b28 <_ZN5Riscv15userMainWrapperEPv>:

void Riscv::userMainWrapper(void* )
{
    80002b28:	ff010113          	addi	sp,sp,-16
    80002b2c:	00113423          	sd	ra,8(sp)
    80002b30:	00813023          	sd	s0,0(sp)
    80002b34:	01010413          	addi	s0,sp,16
    userMain();
    80002b38:	00002097          	auipc	ra,0x2
    80002b3c:	9a4080e7          	jalr	-1628(ra) # 800044dc <_Z8userMainv>
}
    80002b40:	00813083          	ld	ra,8(sp)
    80002b44:	00013403          	ld	s0,0(sp)
    80002b48:	01010113          	addi	sp,sp,16
    80002b4c:	00008067          	ret

0000000080002b50 <_ZN5Riscv22disableTimerInterruptsEv>:

void Riscv::disableTimerInterrupts()
{
    80002b50:	ff010113          	addi	sp,sp,-16
    80002b54:	00813423          	sd	s0,8(sp)
    80002b58:	01010413          	addi	s0,sp,16
    uint64 x = 0x2;
    __asm__ volatile("csrc sie, %0"::"r"(x));
    80002b5c:	00200793          	li	a5,2
    80002b60:	1047b073          	csrc	sie,a5
}
    80002b64:	00813403          	ld	s0,8(sp)
    80002b68:	01010113          	addi	sp,sp,16
    80002b6c:	00008067          	ret

0000000080002b70 <_ZN5Riscv9idleRiscvEPv>:

void Riscv::idleRiscv(void* p)
{
    80002b70:	ff010113          	addi	sp,sp,-16
    80002b74:	00813423          	sd	s0,8(sp)
    80002b78:	01010413          	addi	s0,sp,16
    while(true)
    80002b7c:	0000006f          	j	80002b7c <_ZN5Riscv9idleRiscvEPv+0xc>

0000000080002b80 <_ZN5Riscv13w_a0_sscratchEv>:

    }
}

void Riscv::w_a0_sscratch()
{
    80002b80:	ff010113          	addi	sp,sp,-16
    80002b84:	00813423          	sd	s0,8(sp)
    80002b88:	01010413          	addi	s0,sp,16
    uint64 a1Temp;
    __asm__ volatile("mv %0, a1":"=r"(a1Temp));
    80002b8c:	00058793          	mv	a5,a1
    __asm__ volatile("mv a1, %0"::"r"(PCB::running->sscratch));
    80002b90:	00006717          	auipc	a4,0x6
    80002b94:	25873703          	ld	a4,600(a4) # 80008de8 <_GLOBAL_OFFSET_TABLE_+0x70>
    80002b98:	00073703          	ld	a4,0(a4)
    80002b9c:	01073703          	ld	a4,16(a4)
    80002ba0:	00070593          	mv	a1,a4
    __asm__ volatile("sd a0, 80(a1)");
    80002ba4:	04a5b823          	sd	a0,80(a1)
    __asm__ volatile("mv a1,%0"::"r"(a1Temp));
    80002ba8:	00078593          	mv	a1,a5
}
    80002bac:	00813403          	ld	s0,8(sp)
    80002bb0:	01010113          	addi	sp,sp,16
    80002bb4:	00008067          	ret

0000000080002bb8 <_ZN5Riscv14changePrivModeEv>:

void Riscv::changePrivMode()
{
    80002bb8:	ff010113          	addi	sp,sp,-16
    80002bbc:	00813423          	sd	s0,8(sp)
    80002bc0:	01010413          	addi	s0,sp,16
    if(PCB::running->systemThread)
    80002bc4:	00006797          	auipc	a5,0x6
    80002bc8:	2247b783          	ld	a5,548(a5) # 80008de8 <_GLOBAL_OFFSET_TABLE_+0x70>
    80002bcc:	0007b783          	ld	a5,0(a5)
    80002bd0:	0007c783          	lbu	a5,0(a5)
    80002bd4:	00078c63          	beqz	a5,80002bec <_ZN5Riscv14changePrivModeEv+0x34>
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80002bd8:	10000793          	li	a5,256
    80002bdc:	1007a073          	csrs	sstatus,a5
        Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    else
        Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
}
    80002be0:	00813403          	ld	s0,8(sp)
    80002be4:	01010113          	addi	sp,sp,16
    80002be8:	00008067          	ret
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80002bec:	10000793          	li	a5,256
    80002bf0:	1007b073          	csrc	sstatus,a5
    80002bf4:	fedff06f          	j	80002be0 <_ZN5Riscv14changePrivModeEv+0x28>

0000000080002bf8 <_ZN5Riscv20handleSupervisorTrapEv>:
{
    80002bf8:	f9010113          	addi	sp,sp,-112
    80002bfc:	06113423          	sd	ra,104(sp)
    80002c00:	06813023          	sd	s0,96(sp)
    80002c04:	04913c23          	sd	s1,88(sp)
    80002c08:	07010413          	addi	s0,sp,112
    __asm__ volatile("mv %0, a4" : "=r"(PCB::savedRegA4));
    80002c0c:	00070713          	mv	a4,a4
    80002c10:	00006797          	auipc	a5,0x6
    80002c14:	1f07b783          	ld	a5,496(a5) # 80008e00 <_GLOBAL_OFFSET_TABLE_+0x88>
    80002c18:	00e7b023          	sd	a4,0(a5)
    __asm__ volatile("csrr %0, sscratch":"=r"(PCB::running->sscratch));
    80002c1c:	00006797          	auipc	a5,0x6
    80002c20:	1cc7b783          	ld	a5,460(a5) # 80008de8 <_GLOBAL_OFFSET_TABLE_+0x70>
    80002c24:	0007b783          	ld	a5,0(a5)
    80002c28:	14002773          	csrr	a4,sscratch
    80002c2c:	00e7b823          	sd	a4,16(a5)
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    80002c30:	142027f3          	csrr	a5,scause
    80002c34:	faf43c23          	sd	a5,-72(s0)
    return scause;
    80002c38:	fb843783          	ld	a5,-72(s0)
    switch(scause)
    80002c3c:	00900713          	li	a4,9
    80002c40:	02f76e63          	bltu	a4,a5,80002c7c <_ZN5Riscv20handleSupervisorTrapEv+0x84>
    80002c44:	00800713          	li	a4,8
    80002c48:	18e7f463          	bgeu	a5,a4,80002dd0 <_ZN5Riscv20handleSupervisorTrapEv+0x1d8>
    80002c4c:	00500713          	li	a4,5
    80002c50:	16e78a63          	beq	a5,a4,80002dc4 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
    80002c54:	00700713          	li	a4,7
    80002c58:	00e79863          	bne	a5,a4,80002c68 <_ZN5Riscv20handleSupervisorTrapEv+0x70>
            PCB::threadExitHandler();
    80002c5c:	fffff097          	auipc	ra,0xfffff
    80002c60:	c9c080e7          	jalr	-868(ra) # 800018f8 <_ZN3PCB17threadExitHandlerEv>
            break;
    80002c64:	1200006f          	j	80002d84 <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
    switch(scause)
    80002c68:	00200713          	li	a4,2
    80002c6c:	10e79c63          	bne	a5,a4,80002d84 <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
            PCB::threadExitHandler();
    80002c70:	fffff097          	auipc	ra,0xfffff
    80002c74:	c88080e7          	jalr	-888(ra) # 800018f8 <_ZN3PCB17threadExitHandlerEv>
            break;
    80002c78:	10c0006f          	j	80002d84 <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
    switch(scause)
    80002c7c:	fff00713          	li	a4,-1
    80002c80:	03f71713          	slli	a4,a4,0x3f
    80002c84:	00170713          	addi	a4,a4,1
    80002c88:	06e78a63          	beq	a5,a4,80002cfc <_ZN5Riscv20handleSupervisorTrapEv+0x104>
    80002c8c:	fff00713          	li	a4,-1
    80002c90:	03f71713          	slli	a4,a4,0x3f
    80002c94:	00970713          	addi	a4,a4,9
    80002c98:	0ee79663          	bne	a5,a4,80002d84 <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
            uint64 x = CONSOLE_STATUS;
    80002c9c:	00006797          	auipc	a5,0x6
    80002ca0:	0ec7b783          	ld	a5,236(a5) # 80008d88 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002ca4:	0007b783          	ld	a5,0(a5)
            __asm__ volatile("mv a0, %0"::"r"(x));
    80002ca8:	00078513          	mv	a0,a5
            __asm__ volatile("lb a1, 0(a0)");
    80002cac:	00050583          	lb	a1,0(a0)
            __asm__ volatile("mv %0, a1" :  "=r"(operation));
    80002cb0:	00058793          	mv	a5,a1
            if(operation & KConsole::STATUS_READ_MASK)
    80002cb4:	0017f793          	andi	a5,a5,1
    80002cb8:	02078863          	beqz	a5,80002ce8 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
                x = CONSOLE_TX_DATA;
    80002cbc:	00006797          	auipc	a5,0x6
    80002cc0:	0ec7b783          	ld	a5,236(a5) # 80008da8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002cc4:	0007b783          	ld	a5,0(a5)
                __asm__ volatile("mv a0, %0"::"r"(x));
    80002cc8:	00078513          	mv	a0,a5
                __asm__ volatile("lb a1,0(a0)");
    80002ccc:	00050583          	lb	a1,0(a0)
                __asm__ volatile("mv %0, a1" :  "=r"(c));
    80002cd0:	00058513          	mv	a0,a1
    80002cd4:	0ff57513          	andi	a0,a0,255
                if(KConsole::pendingGetc > 0)
    80002cd8:	00006797          	auipc	a5,0x6
    80002cdc:	0c87b783          	ld	a5,200(a5) # 80008da0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002ce0:	0007b783          	ld	a5,0(a5)
    80002ce4:	0c079263          	bnez	a5,80002da8 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
            plic_complete(plic_claim());
    80002ce8:	00002097          	auipc	ra,0x2
    80002cec:	39c080e7          	jalr	924(ra) # 80005084 <plic_claim>
    80002cf0:	00002097          	auipc	ra,0x2
    80002cf4:	3cc080e7          	jalr	972(ra) # 800050bc <plic_complete>
            break;
    80002cf8:	08c0006f          	j	80002d84 <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80002cfc:	141027f3          	csrr	a5,sepc
    80002d00:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80002d04:	fc843783          	ld	a5,-56(s0)
            uint64 volatile sepc = Riscv::r_sepc();
    80002d08:	f8f43c23          	sd	a5,-104(s0)
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80002d0c:	100027f3          	csrr	a5,sstatus
    80002d10:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80002d14:	fc043783          	ld	a5,-64(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    80002d18:	faf43023          	sd	a5,-96(s0)
    __asm__ volatile("csrc sip, %0" : :"r"(mask));
    80002d1c:	00200793          	li	a5,2
    80002d20:	1447b073          	csrc	sip,a5
            totalTime++;
    80002d24:	0000a717          	auipc	a4,0xa
    80002d28:	1ac70713          	addi	a4,a4,428 # 8000ced0 <_ZN5Riscv12finishSystemE>
    80002d2c:	00873783          	ld	a5,8(a4)
    80002d30:	00178793          	addi	a5,a5,1
    80002d34:	00f73423          	sd	a5,8(a4)
            PCB::timeSliceCounter++;
    80002d38:	00006497          	auipc	s1,0x6
    80002d3c:	0784b483          	ld	s1,120(s1) # 80008db0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002d40:	0004b783          	ld	a5,0(s1)
    80002d44:	00178793          	addi	a5,a5,1
    80002d48:	00f4b023          	sd	a5,0(s1)
            SleepPCBList::tryToWakePCBs();
    80002d4c:	fffff097          	auipc	ra,0xfffff
    80002d50:	4e0080e7          	jalr	1248(ra) # 8000222c <_ZN12SleepPCBList13tryToWakePCBsEv>
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice())
    80002d54:	00006797          	auipc	a5,0x6
    80002d58:	0947b783          	ld	a5,148(a5) # 80008de8 <_GLOBAL_OFFSET_TABLE_+0x70>
    80002d5c:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() { return timeSlice;}
    80002d60:	0187b783          	ld	a5,24(a5)
    80002d64:	0004b703          	ld	a4,0(s1)
    80002d68:	02f77863          	bgeu	a4,a5,80002d98 <_ZN5Riscv20handleSupervisorTrapEv+0x1a0>
            Riscv::w_sstatus(sstatus);
    80002d6c:	fa043783          	ld	a5,-96(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80002d70:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    80002d74:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80002d78:	14179073          	csrw	sepc,a5
            changePrivMode();
    80002d7c:	00000097          	auipc	ra,0x0
    80002d80:	e3c080e7          	jalr	-452(ra) # 80002bb8 <_ZN5Riscv14changePrivModeEv>
}
    80002d84:	06813083          	ld	ra,104(sp)
    80002d88:	06013403          	ld	s0,96(sp)
    80002d8c:	05813483          	ld	s1,88(sp)
    80002d90:	07010113          	addi	sp,sp,112
    80002d94:	00008067          	ret
                PCB::timeSliceCounter = 0;
    80002d98:	0004b023          	sd	zero,0(s1)
                PCB::dispatch();
    80002d9c:	fffff097          	auipc	ra,0xfffff
    80002da0:	910080e7          	jalr	-1776(ra) # 800016ac <_ZN3PCB8dispatchEv>
    80002da4:	fc9ff06f          	j	80002d6c <_ZN5Riscv20handleSupervisorTrapEv+0x174>
                    KConsole::pendingGetc--;
    80002da8:	fff78793          	addi	a5,a5,-1
    80002dac:	00006717          	auipc	a4,0x6
    80002db0:	ff473703          	ld	a4,-12(a4) # 80008da0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002db4:	00f73023          	sd	a5,0(a4)
                    KConsole::putCharacterInput(c);
    80002db8:	fffff097          	auipc	ra,0xfffff
    80002dbc:	ea4080e7          	jalr	-348(ra) # 80001c5c <_ZN8KConsole17putCharacterInputEc>
    80002dc0:	f29ff06f          	j	80002ce8 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
            PCB::threadExitHandler();
    80002dc4:	fffff097          	auipc	ra,0xfffff
    80002dc8:	b34080e7          	jalr	-1228(ra) # 800018f8 <_ZN3PCB17threadExitHandlerEv>
            break;
    80002dcc:	fb9ff06f          	j	80002d84 <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80002dd0:	00050793          	mv	a5,a0
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80002dd4:	14102773          	csrr	a4,sepc
    80002dd8:	fce43c23          	sd	a4,-40(s0)
    return sepc;
    80002ddc:	fd843703          	ld	a4,-40(s0)
            uint64 volatile sepc = Riscv::r_sepc() + 4;
    80002de0:	00470713          	addi	a4,a4,4
    80002de4:	fae43423          	sd	a4,-88(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80002de8:	10002773          	csrr	a4,sstatus
    80002dec:	fce43823          	sd	a4,-48(s0)
    return sstatus;
    80002df0:	fd043703          	ld	a4,-48(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    80002df4:	fae43823          	sd	a4,-80(s0)
            switch(operation)
    80002df8:	04300713          	li	a4,67
    80002dfc:	02f76463          	bltu	a4,a5,80002e24 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
    80002e00:	00279793          	slli	a5,a5,0x2
    80002e04:	00004717          	auipc	a4,0x4
    80002e08:	23070713          	addi	a4,a4,560 # 80007034 <CONSOLE_STATUS+0x24>
    80002e0c:	00e787b3          	add	a5,a5,a4
    80002e10:	0007a783          	lw	a5,0(a5)
    80002e14:	00e787b3          	add	a5,a5,a4
    80002e18:	00078067          	jr	a5
                    MemoryAllocator::memAllocHandler();
    80002e1c:	00000097          	auipc	ra,0x0
    80002e20:	55c080e7          	jalr	1372(ra) # 80003378 <_ZN15MemoryAllocator15memAllocHandlerEv>
            Riscv::w_sstatus(sstatus);
    80002e24:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80002e28:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    80002e2c:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80002e30:	14179073          	csrw	sepc,a5
            changePrivMode();
    80002e34:	00000097          	auipc	ra,0x0
    80002e38:	d84080e7          	jalr	-636(ra) # 80002bb8 <_ZN5Riscv14changePrivModeEv>
}
    80002e3c:	f49ff06f          	j	80002d84 <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
                    MemoryAllocator::memFreeHandler();
    80002e40:	00000097          	auipc	ra,0x0
    80002e44:	59c080e7          	jalr	1436(ra) # 800033dc <_ZN15MemoryAllocator14memFreeHandlerEv>
                    break;
    80002e48:	fddff06f          	j	80002e24 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    PCB::threadMakePCBHandler();
    80002e4c:	fffff097          	auipc	ra,0xfffff
    80002e50:	c70080e7          	jalr	-912(ra) # 80001abc <_ZN3PCB20threadMakePCBHandlerEv>
                    break;
    80002e54:	fd1ff06f          	j	80002e24 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    PCB::threadCreateHandler();
    80002e58:	fffff097          	auipc	ra,0xfffff
    80002e5c:	b80080e7          	jalr	-1152(ra) # 800019d8 <_ZN3PCB19threadCreateHandlerEv>
                    break;
    80002e60:	fc5ff06f          	j	80002e24 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    PCB::threadStartHandler();
    80002e64:	fffff097          	auipc	ra,0xfffff
    80002e68:	c14080e7          	jalr	-1004(ra) # 80001a78 <_ZN3PCB18threadStartHandlerEv>
                    break;
    80002e6c:	fb9ff06f          	j	80002e24 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    PCB::threadDispatchHandler();
    80002e70:	fffff097          	auipc	ra,0xfffff
    80002e74:	ad4080e7          	jalr	-1324(ra) # 80001944 <_ZN3PCB21threadDispatchHandlerEv>
                    break;
    80002e78:	fadff06f          	j	80002e24 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    PCB::threadExitHandler();
    80002e7c:	fffff097          	auipc	ra,0xfffff
    80002e80:	a7c080e7          	jalr	-1412(ra) # 800018f8 <_ZN3PCB17threadExitHandlerEv>
                    break;
    80002e84:	fa1ff06f          	j	80002e24 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    PCB::threadSleepHandler();
    80002e88:	fffff097          	auipc	ra,0xfffff
    80002e8c:	aec080e7          	jalr	-1300(ra) # 80001974 <_ZN3PCB18threadSleepHandlerEv>
                    break;
    80002e90:	f95ff06f          	j	80002e24 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                     PCB::threadDelPCBHandler();
    80002e94:	fffff097          	auipc	ra,0xfffff
    80002e98:	cbc080e7          	jalr	-836(ra) # 80001b50 <_ZN3PCB19threadDelPCBHandlerEv>
                     break;
    80002e9c:	f89ff06f          	j	80002e24 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    KSemaphore::semOpenHandler();
    80002ea0:	00001097          	auipc	ra,0x1
    80002ea4:	804080e7          	jalr	-2044(ra) # 800036a4 <_ZN10KSemaphore14semOpenHandlerEv>
                    break;
    80002ea8:	f7dff06f          	j	80002e24 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    KSemaphore::semWaitHandler();
    80002eac:	00001097          	auipc	ra,0x1
    80002eb0:	898080e7          	jalr	-1896(ra) # 80003744 <_ZN10KSemaphore14semWaitHandlerEv>
                    break;
    80002eb4:	f71ff06f          	j	80002e24 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    KSemaphore::semSignalHandler();
    80002eb8:	00001097          	auipc	ra,0x1
    80002ebc:	8e0080e7          	jalr	-1824(ra) # 80003798 <_ZN10KSemaphore16semSignalHandlerEv>
                    break;
    80002ec0:	f65ff06f          	j	80002e24 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    KSemaphore::semCloseHandler();
    80002ec4:	00001097          	auipc	ra,0x1
    80002ec8:	918080e7          	jalr	-1768(ra) # 800037dc <_ZN10KSemaphore15semCloseHandlerEv>
                    break;
    80002ecc:	f59ff06f          	j	80002e24 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    KConsole::getcHandler();
    80002ed0:	fffff097          	auipc	ra,0xfffff
    80002ed4:	02c080e7          	jalr	44(ra) # 80001efc <_ZN8KConsole11getcHandlerEv>
                    break;
    80002ed8:	f4dff06f          	j	80002e24 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    KConsole::putcHandler();
    80002edc:	fffff097          	auipc	ra,0xfffff
    80002ee0:	ff0080e7          	jalr	-16(ra) # 80001ecc <_ZN8KConsole11putcHandlerEv>
                    break;
    80002ee4:	f41ff06f          	j	80002e24 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    KConsole::getCharHandler();
    80002ee8:	fffff097          	auipc	ra,0xfffff
    80002eec:	184080e7          	jalr	388(ra) # 8000206c <_ZN8KConsole14getCharHandlerEv>
                    break;
    80002ef0:	f35ff06f          	j	80002e24 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>

0000000080002ef4 <_ZN15MemoryAllocator10initMemoryEv>:
{
    return tryToFreeSegment(addr);
}

void MemoryAllocator::initMemory()
{
    80002ef4:	ff010113          	addi	sp,sp,-16
    80002ef8:	00813423          	sd	s0,8(sp)
    80002efc:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    80002f00:	0000a717          	auipc	a4,0xa
    80002f04:	fe072703          	lw	a4,-32(a4) # 8000cee0 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80002f08:	00100793          	li	a5,1
    80002f0c:	04f70263          	beq	a4,a5,80002f50 <_ZN15MemoryAllocator10initMemoryEv+0x5c>
        return;
    memoryInitiliaized = 1;
    80002f10:	0000a797          	auipc	a5,0xa
    80002f14:	fd078793          	addi	a5,a5,-48 # 8000cee0 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80002f18:	00100713          	li	a4,1
    80002f1c:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    80002f20:	0007b423          	sd	zero,8(a5)
    headFree = (BlockHeader*)HEAP_START_ADDR;
    80002f24:	00006717          	auipc	a4,0x6
    80002f28:	e6c73703          	ld	a4,-404(a4) # 80008d90 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002f2c:	00073703          	ld	a4,0(a4)
    80002f30:	00e7b823          	sd	a4,16(a5)
    headFree->next = 0;
    80002f34:	00073423          	sd	zero,8(a4)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1 - sizeof(BlockHeader));
    80002f38:	00006797          	auipc	a5,0x6
    80002f3c:	eb87b783          	ld	a5,-328(a5) # 80008df0 <_GLOBAL_OFFSET_TABLE_+0x78>
    80002f40:	0007b783          	ld	a5,0(a5)
    80002f44:	40e787b3          	sub	a5,a5,a4
    80002f48:	ff178793          	addi	a5,a5,-15
    80002f4c:	00f73023          	sd	a5,0(a4)
}
    80002f50:	00813403          	ld	s0,8(sp)
    80002f54:	01010113          	addi	sp,sp,16
    80002f58:	00008067          	ret

0000000080002f5c <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_>:

void MemoryAllocator::insertAllFragment(void *addr, size_t size, void* nxtAddr)
{
    80002f5c:	fd010113          	addi	sp,sp,-48
    80002f60:	02113423          	sd	ra,40(sp)
    80002f64:	02813023          	sd	s0,32(sp)
    80002f68:	00913c23          	sd	s1,24(sp)
    80002f6c:	01213823          	sd	s2,16(sp)
    80002f70:	01313423          	sd	s3,8(sp)
    80002f74:	03010413          	addi	s0,sp,48
    80002f78:	00050493          	mv	s1,a0
    80002f7c:	00058993          	mv	s3,a1
    80002f80:	00060913          	mv	s2,a2
    initMemory();
    80002f84:	00000097          	auipc	ra,0x0
    80002f88:	f70080e7          	jalr	-144(ra) # 80002ef4 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    80002f8c:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    80002f90:	0134b023          	sd	s3,0(s1)
    if(headAllocated == 0)
    80002f94:	0000a797          	auipc	a5,0xa
    80002f98:	f547b783          	ld	a5,-172(a5) # 8000cee8 <_ZN15MemoryAllocator13headAllocatedE>
    80002f9c:	02078e63          	beqz	a5,80002fd8 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x7c>
    {
        headAllocated = newAllocated;
    }
    else if(nxtAddr <= HEAP_END_ADDR)
    80002fa0:	00006717          	auipc	a4,0x6
    80002fa4:	e5073703          	ld	a4,-432(a4) # 80008df0 <_GLOBAL_OFFSET_TABLE_+0x78>
    80002fa8:	00073703          	ld	a4,0(a4)
    80002fac:	03276c63          	bltu	a4,s2,80002fe4 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x88>
    {
        BlockHeader * allFrag = (BlockHeader*)nxtAddr;
        newAllocated->next = allFrag->next;
    80002fb0:	00893783          	ld	a5,8(s2)
    80002fb4:	00f4b423          	sd	a5,8(s1)
        allFrag->next = newAllocated;
    80002fb8:	00993423          	sd	s1,8(s2)
    else
    {
        newAllocated->next = headAllocated;
        headAllocated = newAllocated;
    }
}
    80002fbc:	02813083          	ld	ra,40(sp)
    80002fc0:	02013403          	ld	s0,32(sp)
    80002fc4:	01813483          	ld	s1,24(sp)
    80002fc8:	01013903          	ld	s2,16(sp)
    80002fcc:	00813983          	ld	s3,8(sp)
    80002fd0:	03010113          	addi	sp,sp,48
    80002fd4:	00008067          	ret
        headAllocated = newAllocated;
    80002fd8:	0000a797          	auipc	a5,0xa
    80002fdc:	f097b823          	sd	s1,-240(a5) # 8000cee8 <_ZN15MemoryAllocator13headAllocatedE>
    80002fe0:	fddff06f          	j	80002fbc <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x60>
        newAllocated->next = headAllocated;
    80002fe4:	00f4b423          	sd	a5,8(s1)
        headAllocated = newAllocated;
    80002fe8:	0000a797          	auipc	a5,0xa
    80002fec:	f097b023          	sd	s1,-256(a5) # 8000cee8 <_ZN15MemoryAllocator13headAllocatedE>
}
    80002ff0:	fcdff06f          	j	80002fbc <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x60>

0000000080002ff4 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void *addr, size_t size)
{
    80002ff4:	fe010113          	addi	sp,sp,-32
    80002ff8:	00113c23          	sd	ra,24(sp)
    80002ffc:	00813823          	sd	s0,16(sp)
    80003000:	00913423          	sd	s1,8(sp)
    80003004:	01213023          	sd	s2,0(sp)
    80003008:	02010413          	addi	s0,sp,32
    8000300c:	00050493          	mv	s1,a0
    80003010:	00058913          	mv	s2,a1
    initMemory();
    80003014:	00000097          	auipc	ra,0x0
    80003018:	ee0080e7          	jalr	-288(ra) # 80002ef4 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr =  headAllocated;
    8000301c:	0000a797          	auipc	a5,0xa
    80003020:	ecc7b783          	ld	a5,-308(a5) # 8000cee8 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    80003024:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    80003028:	0124b023          	sd	s2,0(s1)
    BlockHeader* prev = 0;
    8000302c:	00000713          	li	a4,0
    while(curr != 0)
    80003030:	00078c63          	beqz	a5,80003048 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x54>
    {
        if((void*)curr > addr)
    80003034:	00f4e863          	bltu	s1,a5,80003044 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x50>
        {
            newAllocated->next = curr;
            break;
        }
        prev = curr;
    80003038:	00078713          	mv	a4,a5
        curr = curr->next;
    8000303c:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003040:	ff1ff06f          	j	80003030 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x3c>
            newAllocated->next = curr;
    80003044:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80003048:	02070063          	beqz	a4,80003068 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x74>
        headAllocated = newAllocated;
    else
        prev->next = newAllocated;
    8000304c:	00973423          	sd	s1,8(a4)
}
    80003050:	01813083          	ld	ra,24(sp)
    80003054:	01013403          	ld	s0,16(sp)
    80003058:	00813483          	ld	s1,8(sp)
    8000305c:	00013903          	ld	s2,0(sp)
    80003060:	02010113          	addi	sp,sp,32
    80003064:	00008067          	ret
        headAllocated = newAllocated;
    80003068:	0000a797          	auipc	a5,0xa
    8000306c:	e897b023          	sd	s1,-384(a5) # 8000cee8 <_ZN15MemoryAllocator13headAllocatedE>
    80003070:	fe1ff06f          	j	80003050 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x5c>

0000000080003074 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size)
{
    80003074:	fe010113          	addi	sp,sp,-32
    80003078:	00113c23          	sd	ra,24(sp)
    8000307c:	00813823          	sd	s0,16(sp)
    80003080:	00913423          	sd	s1,8(sp)
    80003084:	01213023          	sd	s2,0(sp)
    80003088:	02010413          	addi	s0,sp,32
    8000308c:	00050913          	mv	s2,a0
    initMemory();
    80003090:	00000097          	auipc	ra,0x0
    80003094:	e64080e7          	jalr	-412(ra) # 80002ef4 <_ZN15MemoryAllocator10initMemoryEv>
    uint64 retval = 0;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80003098:	0000a497          	auipc	s1,0xa
    8000309c:	e584b483          	ld	s1,-424(s1) # 8000cef0 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* prev = 0;
    800030a0:	00000713          	li	a4,0
    while(curr != 0)
    800030a4:	0c048063          	beqz	s1,80003164 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xf0>
    {
        if(curr->size >= size)
    800030a8:	0004b783          	ld	a5,0(s1)
    800030ac:	0127f863          	bgeu	a5,s2,800030bc <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x48>
            //insertNewAllocatedFragment(oldAddr, size);
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
            retval = oldA;
            break;
        }
        prev = curr;
    800030b0:	00048713          	mv	a4,s1
        curr = curr->next;
    800030b4:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    800030b8:	fedff06f          	j	800030a4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x30>
            void* newAddr = ((char*)curr + size + sizeof(BlockHeader));
    800030bc:	01090693          	addi	a3,s2,16
    800030c0:	00d486b3          	add	a3,s1,a3
            void* nxtAllFrag = ((char*)curr + curr->size + sizeof(BlockHeader));
    800030c4:	01078613          	addi	a2,a5,16
    800030c8:	00c48633          	add	a2,s1,a2
            if(newAddr <= HEAP_END_ADDR)
    800030cc:	00006597          	auipc	a1,0x6
    800030d0:	d245b583          	ld	a1,-732(a1) # 80008df0 <_GLOBAL_OFFSET_TABLE_+0x78>
    800030d4:	0005b583          	ld	a1,0(a1)
    800030d8:	06d5e063          	bltu	a1,a3,80003138 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xc4>
                uint64 size2 = curr->size - size;
    800030dc:	412785b3          	sub	a1,a5,s2
                if(size2 > sizeof(BlockHeader))
    800030e0:	01000513          	li	a0,16
    800030e4:	02b57663          	bgeu	a0,a1,80003110 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x9c>
                    newFree->next = curr->next;
    800030e8:	0084b783          	ld	a5,8(s1)
    800030ec:	00f6b423          	sd	a5,8(a3)
                    newFree->size = size2 - sizeof(BlockHeader);
    800030f0:	ff058593          	addi	a1,a1,-16
    800030f4:	00b6b023          	sd	a1,0(a3)
                    if (prev != 0)
    800030f8:	00070663          	beqz	a4,80003104 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x90>
                        prev->next = newFree;
    800030fc:	00d73423          	sd	a3,8(a4)
    80003100:	0400006f          	j	80003140 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                        headFree = newFree;
    80003104:	0000a797          	auipc	a5,0xa
    80003108:	ded7b623          	sd	a3,-532(a5) # 8000cef0 <_ZN15MemoryAllocator8headFreeE>
    8000310c:	0340006f          	j	80003140 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                    if(prev != 0)
    80003110:	00070a63          	beqz	a4,80003124 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb0>
                        prev->next = curr->next;
    80003114:	0084b683          	ld	a3,8(s1)
    80003118:	00d73423          	sd	a3,8(a4)
                    size+=size2;
    8000311c:	00078913          	mv	s2,a5
    80003120:	0200006f          	j	80003140 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                        headFree = curr->next;
    80003124:	0084b703          	ld	a4,8(s1)
    80003128:	0000a697          	auipc	a3,0xa
    8000312c:	dce6b423          	sd	a4,-568(a3) # 8000cef0 <_ZN15MemoryAllocator8headFreeE>
                    size+=size2;
    80003130:	00078913          	mv	s2,a5
    80003134:	00c0006f          	j	80003140 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                if(prev != 0)
    80003138:	02070063          	beqz	a4,80003158 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe4>
                    prev->next = 0;
    8000313c:	00073423          	sd	zero,8(a4)
            insertAllFragment(oldAddr, size, nxtAllFrag);
    80003140:	00090593          	mv	a1,s2
    80003144:	00048513          	mv	a0,s1
    80003148:	00000097          	auipc	ra,0x0
    8000314c:	e14080e7          	jalr	-492(ra) # 80002f5c <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_>
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
    80003150:	01048513          	addi	a0,s1,16
            break;
    80003154:	0140006f          	j	80003168 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xf4>
                    headFree = 0;
    80003158:	0000a797          	auipc	a5,0xa
    8000315c:	d807bc23          	sd	zero,-616(a5) # 8000cef0 <_ZN15MemoryAllocator8headFreeE>
    80003160:	fe1ff06f          	j	80003140 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
    uint64 retval = 0;
    80003164:	00000513          	li	a0,0
    }

    return (void*)retval;
}
    80003168:	01813083          	ld	ra,24(sp)
    8000316c:	01013403          	ld	s0,16(sp)
    80003170:	00813483          	ld	s1,8(sp)
    80003174:	00013903          	ld	s2,0(sp)
    80003178:	02010113          	addi	sp,sp,32
    8000317c:	00008067          	ret

0000000080003180 <_ZN15MemoryAllocator9mem_allocEm>:
{
    80003180:	ff010113          	addi	sp,sp,-16
    80003184:	00113423          	sd	ra,8(sp)
    80003188:	00813023          	sd	s0,0(sp)
    8000318c:	01010413          	addi	s0,sp,16
    return tryToAllocateFragment(size);
    80003190:	00000097          	auipc	ra,0x0
    80003194:	ee4080e7          	jalr	-284(ra) # 80003074 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
}
    80003198:	00813083          	ld	ra,8(sp)
    8000319c:	00013403          	ld	s0,0(sp)
    800031a0:	01010113          	addi	sp,sp,16
    800031a4:	00008067          	ret

00000000800031a8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    800031a8:	fe010113          	addi	sp,sp,-32
    800031ac:	00113c23          	sd	ra,24(sp)
    800031b0:	00813823          	sd	s0,16(sp)
    800031b4:	00913423          	sd	s1,8(sp)
    800031b8:	01213023          	sd	s2,0(sp)
    800031bc:	02010413          	addi	s0,sp,32
    800031c0:	00050493          	mv	s1,a0
    800031c4:	00058913          	mv	s2,a1
    initMemory();
    800031c8:	00000097          	auipc	ra,0x0
    800031cc:	d2c080e7          	jalr	-724(ra) # 80002ef4 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    800031d0:	0000a797          	auipc	a5,0xa
    800031d4:	d207b783          	ld	a5,-736(a5) # 8000cef0 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* newSegment = (BlockHeader*)addr;
    newSegment->size = size;
    800031d8:	0124b023          	sd	s2,0(s1)
    newSegment->next = 0;
    800031dc:	0004b423          	sd	zero,8(s1)
    BlockHeader* prev = 0;
    800031e0:	00000713          	li	a4,0
    while(curr != 0)
    800031e4:	00078c63          	beqz	a5,800031fc <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x54>
    {
        if((void*)curr > addr)
    800031e8:	00f4e863          	bltu	s1,a5,800031f8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x50>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    800031ec:	00078713          	mv	a4,a5
        curr = curr->next;
    800031f0:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    800031f4:	ff1ff06f          	j	800031e4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x3c>
            newSegment->next = curr;
    800031f8:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    800031fc:	04070663          	beqz	a4,80003248 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xa0>
        headFree = newSegment;
    else
        prev->next = newSegment;
    80003200:	00973423          	sd	s1,8(a4)

    if(newSegment->next != 0 && (char*)newSegment->next == (char*)newSegment + newSegment->size + sizeof(BlockHeader))
    80003204:	0084b783          	ld	a5,8(s1)
    80003208:	00078a63          	beqz	a5,8000321c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
    8000320c:	0004b603          	ld	a2,0(s1)
    80003210:	01060693          	addi	a3,a2,16
    80003214:	00d486b3          	add	a3,s1,a3
    80003218:	02d78e63          	beq	a5,a3,80003254 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xac>
    {
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
        newSegment->next = newSegment->next->next;
    }

    if(prev != 0 && (char*)newSegment == (char*)prev + prev->size + sizeof(BlockHeader))
    8000321c:	00070a63          	beqz	a4,80003230 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>
    80003220:	00073683          	ld	a3,0(a4)
    80003224:	01068793          	addi	a5,a3,16
    80003228:	00f707b3          	add	a5,a4,a5
    8000322c:	04978263          	beq	a5,s1,80003270 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xc8>
    {
        prev->size+=newSegment->size + sizeof(BlockHeader);
        prev->next = newSegment->next;
    }
}
    80003230:	01813083          	ld	ra,24(sp)
    80003234:	01013403          	ld	s0,16(sp)
    80003238:	00813483          	ld	s1,8(sp)
    8000323c:	00013903          	ld	s2,0(sp)
    80003240:	02010113          	addi	sp,sp,32
    80003244:	00008067          	ret
        headFree = newSegment;
    80003248:	0000a797          	auipc	a5,0xa
    8000324c:	ca97b423          	sd	s1,-856(a5) # 8000cef0 <_ZN15MemoryAllocator8headFreeE>
    80003250:	fb5ff06f          	j	80003204 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x5c>
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
    80003254:	0007b683          	ld	a3,0(a5)
    80003258:	00d60633          	add	a2,a2,a3
    8000325c:	01060613          	addi	a2,a2,16
    80003260:	00c4b023          	sd	a2,0(s1)
        newSegment->next = newSegment->next->next;
    80003264:	0087b783          	ld	a5,8(a5)
    80003268:	00f4b423          	sd	a5,8(s1)
    8000326c:	fb1ff06f          	j	8000321c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
        prev->size+=newSegment->size + sizeof(BlockHeader);
    80003270:	0004b783          	ld	a5,0(s1)
    80003274:	00f686b3          	add	a3,a3,a5
    80003278:	01068693          	addi	a3,a3,16
    8000327c:	00d73023          	sd	a3,0(a4)
        prev->next = newSegment->next;
    80003280:	0084b783          	ld	a5,8(s1)
    80003284:	00f73423          	sd	a5,8(a4)
}
    80003288:	fa9ff06f          	j	80003230 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>

000000008000328c <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    8000328c:	fe010113          	addi	sp,sp,-32
    80003290:	00113c23          	sd	ra,24(sp)
    80003294:	00813823          	sd	s0,16(sp)
    80003298:	00913423          	sd	s1,8(sp)
    8000329c:	01213023          	sd	s2,0(sp)
    800032a0:	02010413          	addi	s0,sp,32
    800032a4:	00050913          	mv	s2,a0
    initMemory();
    800032a8:	00000097          	auipc	ra,0x0
    800032ac:	c4c080e7          	jalr	-948(ra) # 80002ef4 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headAllocated;
    800032b0:	0000a497          	auipc	s1,0xa
    800032b4:	c384b483          	ld	s1,-968(s1) # 8000cee8 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* prev = 0;
    800032b8:	00000713          	li	a4,0
    while(curr != 0)
    800032bc:	02048a63          	beqz	s1,800032f0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x64>
    {
        if(addr == (void*)((char*)curr + sizeof(BlockHeader)))
    800032c0:	01048793          	addi	a5,s1,16
    800032c4:	01278863          	beq	a5,s2,800032d4 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x48>
            insertNewFreeSegment((void*)curr, curr->size);

            break;
        }

        prev = curr;
    800032c8:	00048713          	mv	a4,s1
        curr = curr->next;
    800032cc:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    800032d0:	fedff06f          	j	800032bc <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x30>
            if(prev != 0)
    800032d4:	02070e63          	beqz	a4,80003310 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x84>
                prev->next = curr->next;
    800032d8:	0084b783          	ld	a5,8(s1)
    800032dc:	00f73423          	sd	a5,8(a4)
            insertNewFreeSegment((void*)curr, curr->size);
    800032e0:	0004b583          	ld	a1,0(s1)
    800032e4:	00048513          	mv	a0,s1
    800032e8:	00000097          	auipc	ra,0x0
    800032ec:	ec0080e7          	jalr	-320(ra) # 800031a8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>
    }

    if(curr != 0)
    800032f0:	02048863          	beqz	s1,80003320 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x94>
        return 0;
    800032f4:	00000513          	li	a0,0
    else
        return 1;
}
    800032f8:	01813083          	ld	ra,24(sp)
    800032fc:	01013403          	ld	s0,16(sp)
    80003300:	00813483          	ld	s1,8(sp)
    80003304:	00013903          	ld	s2,0(sp)
    80003308:	02010113          	addi	sp,sp,32
    8000330c:	00008067          	ret
                headAllocated = curr->next;
    80003310:	0084b783          	ld	a5,8(s1)
    80003314:	0000a717          	auipc	a4,0xa
    80003318:	bcf73a23          	sd	a5,-1068(a4) # 8000cee8 <_ZN15MemoryAllocator13headAllocatedE>
    8000331c:	fc5ff06f          	j	800032e0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x54>
        return 1;
    80003320:	00100513          	li	a0,1
    80003324:	fd5ff06f          	j	800032f8 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x6c>

0000000080003328 <_ZN15MemoryAllocator8mem_freeEPv>:
{
    80003328:	ff010113          	addi	sp,sp,-16
    8000332c:	00113423          	sd	ra,8(sp)
    80003330:	00813023          	sd	s0,0(sp)
    80003334:	01010413          	addi	s0,sp,16
    return tryToFreeSegment(addr);
    80003338:	00000097          	auipc	ra,0x0
    8000333c:	f54080e7          	jalr	-172(ra) # 8000328c <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
}
    80003340:	00813083          	ld	ra,8(sp)
    80003344:	00013403          	ld	s0,0(sp)
    80003348:	01010113          	addi	sp,sp,16
    8000334c:	00008067          	ret

0000000080003350 <_ZN15MemoryAllocator7kmallocEm>:
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    Riscv::w_a0_sscratch();
}

void* MemoryAllocator::kmalloc(size_t size)
{
    80003350:	ff010113          	addi	sp,sp,-16
    80003354:	00113423          	sd	ra,8(sp)
    80003358:	00813023          	sd	s0,0(sp)
    8000335c:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    80003360:	00000097          	auipc	ra,0x0
    80003364:	e20080e7          	jalr	-480(ra) # 80003180 <_ZN15MemoryAllocator9mem_allocEm>
}
    80003368:	00813083          	ld	ra,8(sp)
    8000336c:	00013403          	ld	s0,0(sp)
    80003370:	01010113          	addi	sp,sp,16
    80003374:	00008067          	ret

0000000080003378 <_ZN15MemoryAllocator15memAllocHandlerEv>:
{
    80003378:	ff010113          	addi	sp,sp,-16
    8000337c:	00113423          	sd	ra,8(sp)
    80003380:	00813023          	sd	s0,0(sp)
    80003384:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(size));
    80003388:	00058513          	mv	a0,a1
    void* allocatedAddr = kmalloc(size);
    8000338c:	00651513          	slli	a0,a0,0x6
    80003390:	00000097          	auipc	ra,0x0
    80003394:	fc0080e7          	jalr	-64(ra) # 80003350 <_ZN15MemoryAllocator7kmallocEm>
    __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    80003398:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    8000339c:	fffff097          	auipc	ra,0xfffff
    800033a0:	7e4080e7          	jalr	2020(ra) # 80002b80 <_ZN5Riscv13w_a0_sscratchEv>
}
    800033a4:	00813083          	ld	ra,8(sp)
    800033a8:	00013403          	ld	s0,0(sp)
    800033ac:	01010113          	addi	sp,sp,16
    800033b0:	00008067          	ret

00000000800033b4 <_ZN15MemoryAllocator5kfreeEPv>:

uint64 MemoryAllocator::kfree(void* p)
{
    800033b4:	ff010113          	addi	sp,sp,-16
    800033b8:	00113423          	sd	ra,8(sp)
    800033bc:	00813023          	sd	s0,0(sp)
    800033c0:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(p);
    800033c4:	00000097          	auipc	ra,0x0
    800033c8:	f64080e7          	jalr	-156(ra) # 80003328 <_ZN15MemoryAllocator8mem_freeEPv>
    800033cc:	00813083          	ld	ra,8(sp)
    800033d0:	00013403          	ld	s0,0(sp)
    800033d4:	01010113          	addi	sp,sp,16
    800033d8:	00008067          	ret

00000000800033dc <_ZN15MemoryAllocator14memFreeHandlerEv>:
{
    800033dc:	ff010113          	addi	sp,sp,-16
    800033e0:	00113423          	sd	ra,8(sp)
    800033e4:	00813023          	sd	s0,0(sp)
    800033e8:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(addr));
    800033ec:	00058513          	mv	a0,a1
    uint64 retval = kfree((void*)addr);
    800033f0:	00000097          	auipc	ra,0x0
    800033f4:	fc4080e7          	jalr	-60(ra) # 800033b4 <_ZN15MemoryAllocator5kfreeEPv>
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    800033f8:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    800033fc:	fffff097          	auipc	ra,0xfffff
    80003400:	784080e7          	jalr	1924(ra) # 80002b80 <_ZN5Riscv13w_a0_sscratchEv>
}
    80003404:	00813083          	ld	ra,8(sp)
    80003408:	00013403          	ld	s0,0(sp)
    8000340c:	01010113          	addi	sp,sp,16
    80003410:	00008067          	ret

0000000080003414 <_ZN10KSemaphoreC1Ei>:
#include "../h/KSemaphore.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/Riscv.hpp"
#include "../h/Scheduler.hpp"

KSemaphore::KSemaphore(int val)
    80003414:	ff010113          	addi	sp,sp,-16
    80003418:	00813423          	sd	s0,8(sp)
    8000341c:	01010413          	addi	s0,sp,16
{
    this->val = this->beginVal = val;
    80003420:	00b52a23          	sw	a1,20(a0)
    80003424:	00b52823          	sw	a1,16(a0)
    headBlocked = tailBlocked = 0;
    80003428:	00053423          	sd	zero,8(a0)
    8000342c:	00053023          	sd	zero,0(a0)
}
    80003430:	00813403          	ld	s0,8(sp)
    80003434:	01010113          	addi	sp,sp,16
    80003438:	00008067          	ret

000000008000343c <_ZN10KSemaphore12addToBlockedEP3PCB>:
        Scheduler::put(pcb);
    }
}

void KSemaphore::addToBlocked(PCB* pcb)
{
    8000343c:	ff010113          	addi	sp,sp,-16
    80003440:	00813423          	sd	s0,8(sp)
    80003444:	01010413          	addi	s0,sp,16
    pcb->nextPCB = 0;
    80003448:	0005b423          	sd	zero,8(a1)
    if(headBlocked == 0)
    8000344c:	00053783          	ld	a5,0(a0)
    80003450:	00078e63          	beqz	a5,8000346c <_ZN10KSemaphore12addToBlockedEP3PCB+0x30>
    {
        headBlocked = tailBlocked = pcb;
    }
    else
    {
        tailBlocked->nextPCB = pcb;
    80003454:	00853783          	ld	a5,8(a0)
    80003458:	00b7b423          	sd	a1,8(a5)
        tailBlocked = pcb;
    8000345c:	00b53423          	sd	a1,8(a0)
    }
}
    80003460:	00813403          	ld	s0,8(sp)
    80003464:	01010113          	addi	sp,sp,16
    80003468:	00008067          	ret
        headBlocked = tailBlocked = pcb;
    8000346c:	00b53423          	sd	a1,8(a0)
    80003470:	00b53023          	sd	a1,0(a0)
    80003474:	fedff06f          	j	80003460 <_ZN10KSemaphore12addToBlockedEP3PCB+0x24>

0000000080003478 <_ZN10KSemaphore5blockEv>:

void KSemaphore::block()
{
    80003478:	ff010113          	addi	sp,sp,-16
    8000347c:	00113423          	sd	ra,8(sp)
    80003480:	00813023          	sd	s0,0(sp)
    80003484:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SUSPENDED);
    80003488:	00006797          	auipc	a5,0x6
    8000348c:	9607b783          	ld	a5,-1696(a5) # 80008de8 <_GLOBAL_OFFSET_TABLE_+0x70>
    80003490:	0007b583          	ld	a1,0(a5)
    void setState(State s) {state = s;}
    80003494:	00200793          	li	a5,2
    80003498:	04f5a023          	sw	a5,64(a1)
    addToBlocked(PCB::running);
    8000349c:	00000097          	auipc	ra,0x0
    800034a0:	fa0080e7          	jalr	-96(ra) # 8000343c <_ZN10KSemaphore12addToBlockedEP3PCB>
    PCB::dispatch();
    800034a4:	ffffe097          	auipc	ra,0xffffe
    800034a8:	208080e7          	jalr	520(ra) # 800016ac <_ZN3PCB8dispatchEv>
}
    800034ac:	00813083          	ld	ra,8(sp)
    800034b0:	00013403          	ld	s0,0(sp)
    800034b4:	01010113          	addi	sp,sp,16
    800034b8:	00008067          	ret

00000000800034bc <_ZN10KSemaphore4waitEv>:
    PCB::running->retFromClosedSem = false;
    800034bc:	00006797          	auipc	a5,0x6
    800034c0:	92c7b783          	ld	a5,-1748(a5) # 80008de8 <_GLOBAL_OFFSET_TABLE_+0x70>
    800034c4:	0007b783          	ld	a5,0(a5)
    800034c8:	04078c23          	sb	zero,88(a5)
    if(--val < 0)
    800034cc:	01052783          	lw	a5,16(a0)
    800034d0:	fff7879b          	addiw	a5,a5,-1
    800034d4:	00f52823          	sw	a5,16(a0)
    800034d8:	02079713          	slli	a4,a5,0x20
    800034dc:	00074663          	bltz	a4,800034e8 <_ZN10KSemaphore4waitEv+0x2c>
}
    800034e0:	00000513          	li	a0,0
    800034e4:	00008067          	ret
{
    800034e8:	ff010113          	addi	sp,sp,-16
    800034ec:	00113423          	sd	ra,8(sp)
    800034f0:	00813023          	sd	s0,0(sp)
    800034f4:	01010413          	addi	s0,sp,16
        block();
    800034f8:	00000097          	auipc	ra,0x0
    800034fc:	f80080e7          	jalr	-128(ra) # 80003478 <_ZN10KSemaphore5blockEv>
}
    80003500:	00000513          	li	a0,0
    80003504:	00813083          	ld	ra,8(sp)
    80003508:	00013403          	ld	s0,0(sp)
    8000350c:	01010113          	addi	sp,sp,16
    80003510:	00008067          	ret

0000000080003514 <_ZN10KSemaphore15getFirstBlockedEv>:

PCB* KSemaphore::getFirstBlocked()
{
    80003514:	ff010113          	addi	sp,sp,-16
    80003518:	00813423          	sd	s0,8(sp)
    8000351c:	01010413          	addi	s0,sp,16
   return headBlocked;
}
    80003520:	00053503          	ld	a0,0(a0)
    80003524:	00813403          	ld	s0,8(sp)
    80003528:	01010113          	addi	sp,sp,16
    8000352c:	00008067          	ret

0000000080003530 <_ZN10KSemaphore18removeFirstBlockedEv>:

void KSemaphore::removeFirstBlocked()
{
    80003530:	ff010113          	addi	sp,sp,-16
    80003534:	00813423          	sd	s0,8(sp)
    80003538:	01010413          	addi	s0,sp,16
    if(headBlocked == 0)
    8000353c:	00053783          	ld	a5,0(a0)
    80003540:	00078c63          	beqz	a5,80003558 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>
        return;
    PCB* first = headBlocked;
    headBlocked = headBlocked->nextPCB;
    80003544:	0087b703          	ld	a4,8(a5)
    80003548:	00e53023          	sd	a4,0(a0)
    first->nextPCB = 0;
    8000354c:	0007b423          	sd	zero,8(a5)
    if(headBlocked == 0)
    80003550:	00053783          	ld	a5,0(a0)
    80003554:	00078863          	beqz	a5,80003564 <_ZN10KSemaphore18removeFirstBlockedEv+0x34>
        tailBlocked =0;
}
    80003558:	00813403          	ld	s0,8(sp)
    8000355c:	01010113          	addi	sp,sp,16
    80003560:	00008067          	ret
        tailBlocked =0;
    80003564:	00053423          	sd	zero,8(a0)
    80003568:	ff1ff06f          	j	80003558 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>

000000008000356c <_ZN10KSemaphoreD1Ev>:
KSemaphore::~KSemaphore()
    8000356c:	fe010113          	addi	sp,sp,-32
    80003570:	00113c23          	sd	ra,24(sp)
    80003574:	00813823          	sd	s0,16(sp)
    80003578:	00913423          	sd	s1,8(sp)
    8000357c:	01213023          	sd	s2,0(sp)
    80003580:	02010413          	addi	s0,sp,32
    80003584:	00050913          	mv	s2,a0
    while(getFirstBlocked() != 0)
    80003588:	00090513          	mv	a0,s2
    8000358c:	00000097          	auipc	ra,0x0
    80003590:	f88080e7          	jalr	-120(ra) # 80003514 <_ZN10KSemaphore15getFirstBlockedEv>
    80003594:	00050493          	mv	s1,a0
    80003598:	02050463          	beqz	a0,800035c0 <_ZN10KSemaphoreD1Ev+0x54>
        removeFirstBlocked();
    8000359c:	00090513          	mv	a0,s2
    800035a0:	00000097          	auipc	ra,0x0
    800035a4:	f90080e7          	jalr	-112(ra) # 80003530 <_ZN10KSemaphore18removeFirstBlockedEv>
        pcb->retFromClosedSem = true;
    800035a8:	00100793          	li	a5,1
    800035ac:	04f48c23          	sb	a5,88(s1)
        Scheduler::put(pcb);
    800035b0:	00048513          	mv	a0,s1
    800035b4:	fffff097          	auipc	ra,0xfffff
    800035b8:	d88080e7          	jalr	-632(ra) # 8000233c <_ZN9Scheduler3putEP3PCB>
    while(getFirstBlocked() != 0)
    800035bc:	fcdff06f          	j	80003588 <_ZN10KSemaphoreD1Ev+0x1c>
}
    800035c0:	01813083          	ld	ra,24(sp)
    800035c4:	01013403          	ld	s0,16(sp)
    800035c8:	00813483          	ld	s1,8(sp)
    800035cc:	00013903          	ld	s2,0(sp)
    800035d0:	02010113          	addi	sp,sp,32
    800035d4:	00008067          	ret

00000000800035d8 <_ZN10KSemaphore7unblockEv>:

void KSemaphore::unblock() {
    800035d8:	fe010113          	addi	sp,sp,-32
    800035dc:	00113c23          	sd	ra,24(sp)
    800035e0:	00813823          	sd	s0,16(sp)
    800035e4:	00913423          	sd	s1,8(sp)
    800035e8:	01213023          	sd	s2,0(sp)
    800035ec:	02010413          	addi	s0,sp,32
    800035f0:	00050913          	mv	s2,a0
    PCB* fr = getFirstBlocked();
    800035f4:	00000097          	auipc	ra,0x0
    800035f8:	f20080e7          	jalr	-224(ra) # 80003514 <_ZN10KSemaphore15getFirstBlockedEv>
    800035fc:	00050493          	mv	s1,a0
    removeFirstBlocked();
    80003600:	00090513          	mv	a0,s2
    80003604:	00000097          	auipc	ra,0x0
    80003608:	f2c080e7          	jalr	-212(ra) # 80003530 <_ZN10KSemaphore18removeFirstBlockedEv>
    if(fr != 0)
    8000360c:	00048863          	beqz	s1,8000361c <_ZN10KSemaphore7unblockEv+0x44>
    {
        Scheduler::put(fr);
    80003610:	00048513          	mv	a0,s1
    80003614:	fffff097          	auipc	ra,0xfffff
    80003618:	d28080e7          	jalr	-728(ra) # 8000233c <_ZN9Scheduler3putEP3PCB>
    }
}
    8000361c:	01813083          	ld	ra,24(sp)
    80003620:	01013403          	ld	s0,16(sp)
    80003624:	00813483          	ld	s1,8(sp)
    80003628:	00013903          	ld	s2,0(sp)
    8000362c:	02010113          	addi	sp,sp,32
    80003630:	00008067          	ret

0000000080003634 <_ZN10KSemaphore6signalEv>:
    if(++val <= 0)
    80003634:	01052783          	lw	a5,16(a0)
    80003638:	0017879b          	addiw	a5,a5,1
    8000363c:	0007871b          	sext.w	a4,a5
    80003640:	00f52823          	sw	a5,16(a0)
    80003644:	00e05663          	blez	a4,80003650 <_ZN10KSemaphore6signalEv+0x1c>
}
    80003648:	00000513          	li	a0,0
    8000364c:	00008067          	ret
uint64 KSemaphore::signal() {
    80003650:	ff010113          	addi	sp,sp,-16
    80003654:	00113423          	sd	ra,8(sp)
    80003658:	00813023          	sd	s0,0(sp)
    8000365c:	01010413          	addi	s0,sp,16
        unblock();
    80003660:	00000097          	auipc	ra,0x0
    80003664:	f78080e7          	jalr	-136(ra) # 800035d8 <_ZN10KSemaphore7unblockEv>
}
    80003668:	00000513          	li	a0,0
    8000366c:	00813083          	ld	ra,8(sp)
    80003670:	00013403          	ld	s0,0(sp)
    80003674:	01010113          	addi	sp,sp,16
    80003678:	00008067          	ret

000000008000367c <_ZN10KSemaphorenwEm>:
void *KSemaphore::operator new(size_t size) {
    8000367c:	ff010113          	addi	sp,sp,-16
    80003680:	00113423          	sd	ra,8(sp)
    80003684:	00813023          	sd	s0,0(sp)
    80003688:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmalloc(size);
    8000368c:	00000097          	auipc	ra,0x0
    80003690:	cc4080e7          	jalr	-828(ra) # 80003350 <_ZN15MemoryAllocator7kmallocEm>
}
    80003694:	00813083          	ld	ra,8(sp)
    80003698:	00013403          	ld	s0,0(sp)
    8000369c:	01010113          	addi	sp,sp,16
    800036a0:	00008067          	ret

00000000800036a4 <_ZN10KSemaphore14semOpenHandlerEv>:
{
    800036a4:	fd010113          	addi	sp,sp,-48
    800036a8:	02113423          	sd	ra,40(sp)
    800036ac:	02813023          	sd	s0,32(sp)
    800036b0:	00913c23          	sd	s1,24(sp)
    800036b4:	01213823          	sd	s2,16(sp)
    800036b8:	01313423          	sd	s3,8(sp)
    800036bc:	03010413          	addi	s0,sp,48
    __asm__ volatile("mv %0, a1" : "=r"(semaphoreHandle));
    800036c0:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(val));
    800036c4:	00060993          	mv	s3,a2
    KSemaphore* newSem = new KSemaphore(val);
    800036c8:	01800513          	li	a0,24
    800036cc:	00000097          	auipc	ra,0x0
    800036d0:	fb0080e7          	jalr	-80(ra) # 8000367c <_ZN10KSemaphorenwEm>
    800036d4:	00050493          	mv	s1,a0
    800036d8:	0009859b          	sext.w	a1,s3
    800036dc:	00000097          	auipc	ra,0x0
    800036e0:	d38080e7          	jalr	-712(ra) # 80003414 <_ZN10KSemaphoreC1Ei>
    (*semaphoreHandle) = newSem;
    800036e4:	00993023          	sd	s1,0(s2)
    if(newSem == 0)
    800036e8:	02048663          	beqz	s1,80003714 <_ZN10KSemaphore14semOpenHandlerEv+0x70>
            __asm__ volatile("li a0, 0");
    800036ec:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    800036f0:	fffff097          	auipc	ra,0xfffff
    800036f4:	490080e7          	jalr	1168(ra) # 80002b80 <_ZN5Riscv13w_a0_sscratchEv>
}
    800036f8:	02813083          	ld	ra,40(sp)
    800036fc:	02013403          	ld	s0,32(sp)
    80003700:	01813483          	ld	s1,24(sp)
    80003704:	01013903          	ld	s2,16(sp)
    80003708:	00813983          	ld	s3,8(sp)
    8000370c:	03010113          	addi	sp,sp,48
    80003710:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    80003714:	fff00513          	li	a0,-1
    80003718:	fd9ff06f          	j	800036f0 <_ZN10KSemaphore14semOpenHandlerEv+0x4c>

000000008000371c <_ZN10KSemaphoredlEPv>:

void KSemaphore::operator delete(void *p)
{
    8000371c:	ff010113          	addi	sp,sp,-16
    80003720:	00113423          	sd	ra,8(sp)
    80003724:	00813023          	sd	s0,0(sp)
    80003728:	01010413          	addi	s0,sp,16
    MemoryAllocator::kfree(p);
    8000372c:	00000097          	auipc	ra,0x0
    80003730:	c88080e7          	jalr	-888(ra) # 800033b4 <_ZN15MemoryAllocator5kfreeEPv>
}
    80003734:	00813083          	ld	ra,8(sp)
    80003738:	00013403          	ld	s0,0(sp)
    8000373c:	01010113          	addi	sp,sp,16
    80003740:	00008067          	ret

0000000080003744 <_ZN10KSemaphore14semWaitHandlerEv>:

void KSemaphore::semWaitHandler()
{
    80003744:	ff010113          	addi	sp,sp,-16
    80003748:	00113423          	sd	ra,8(sp)
    8000374c:	00813023          	sd	s0,0(sp)
    80003750:	01010413          	addi	s0,sp,16
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80003754:	00058513          	mv	a0,a1
    kSem->wait();
    80003758:	00000097          	auipc	ra,0x0
    8000375c:	d64080e7          	jalr	-668(ra) # 800034bc <_ZN10KSemaphore4waitEv>
    if(PCB::running->retFromClosedSem)
    80003760:	00005797          	auipc	a5,0x5
    80003764:	6887b783          	ld	a5,1672(a5) # 80008de8 <_GLOBAL_OFFSET_TABLE_+0x70>
    80003768:	0007b783          	ld	a5,0(a5)
    8000376c:	0587c783          	lbu	a5,88(a5)
    80003770:	02078063          	beqz	a5,80003790 <_ZN10KSemaphore14semWaitHandlerEv+0x4c>
        __asm__ volatile("li a0, 0x1");
    80003774:	00100513          	li	a0,1
    else
        __asm__ volatile("li a0, 0x0");
    Riscv::w_a0_sscratch();
    80003778:	fffff097          	auipc	ra,0xfffff
    8000377c:	408080e7          	jalr	1032(ra) # 80002b80 <_ZN5Riscv13w_a0_sscratchEv>
}
    80003780:	00813083          	ld	ra,8(sp)
    80003784:	00013403          	ld	s0,0(sp)
    80003788:	01010113          	addi	sp,sp,16
    8000378c:	00008067          	ret
        __asm__ volatile("li a0, 0x0");
    80003790:	00000513          	li	a0,0
    80003794:	fe5ff06f          	j	80003778 <_ZN10KSemaphore14semWaitHandlerEv+0x34>

0000000080003798 <_ZN10KSemaphore16semSignalHandlerEv>:

void KSemaphore::semSignalHandler() {
    80003798:	ff010113          	addi	sp,sp,-16
    8000379c:	00113423          	sd	ra,8(sp)
    800037a0:	00813023          	sd	s0,0(sp)
    800037a4:	01010413          	addi	s0,sp,16
    KSemaphore *kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    800037a8:	00058513          	mv	a0,a1
    if (kSem == 0)
    800037ac:	02050463          	beqz	a0,800037d4 <_ZN10KSemaphore16semSignalHandlerEv+0x3c>
    {
        __asm__ volatile("li a0, 0x1");
    }
    else
    {
        kSem->signal();
    800037b0:	00000097          	auipc	ra,0x0
    800037b4:	e84080e7          	jalr	-380(ra) # 80003634 <_ZN10KSemaphore6signalEv>
        __asm__ volatile("li a0, 0x0");
    800037b8:	00000513          	li	a0,0
    }
    Riscv::w_a0_sscratch();
    800037bc:	fffff097          	auipc	ra,0xfffff
    800037c0:	3c4080e7          	jalr	964(ra) # 80002b80 <_ZN5Riscv13w_a0_sscratchEv>
}
    800037c4:	00813083          	ld	ra,8(sp)
    800037c8:	00013403          	ld	s0,0(sp)
    800037cc:	01010113          	addi	sp,sp,16
    800037d0:	00008067          	ret
        __asm__ volatile("li a0, 0x1");
    800037d4:	00100513          	li	a0,1
    800037d8:	fe5ff06f          	j	800037bc <_ZN10KSemaphore16semSignalHandlerEv+0x24>

00000000800037dc <_ZN10KSemaphore15semCloseHandlerEv>:

void KSemaphore::semCloseHandler()
{
    800037dc:	fe010113          	addi	sp,sp,-32
    800037e0:	00113c23          	sd	ra,24(sp)
    800037e4:	00813823          	sd	s0,16(sp)
    800037e8:	00913423          	sd	s1,8(sp)
    800037ec:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    800037f0:	00058493          	mv	s1,a1
    delete kSem;
    800037f4:	00048e63          	beqz	s1,80003810 <_ZN10KSemaphore15semCloseHandlerEv+0x34>
    800037f8:	00048513          	mv	a0,s1
    800037fc:	00000097          	auipc	ra,0x0
    80003800:	d70080e7          	jalr	-656(ra) # 8000356c <_ZN10KSemaphoreD1Ev>
    80003804:	00048513          	mv	a0,s1
    80003808:	00000097          	auipc	ra,0x0
    8000380c:	f14080e7          	jalr	-236(ra) # 8000371c <_ZN10KSemaphoredlEPv>
    __asm__ volatile("li a0, 0");
    80003810:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80003814:	fffff097          	auipc	ra,0xfffff
    80003818:	36c080e7          	jalr	876(ra) # 80002b80 <_ZN5Riscv13w_a0_sscratchEv>
}
    8000381c:	01813083          	ld	ra,24(sp)
    80003820:	01013403          	ld	s0,16(sp)
    80003824:	00813483          	ld	s1,8(sp)
    80003828:	02010113          	addi	sp,sp,32
    8000382c:	00008067          	ret

0000000080003830 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80003830:	fe010113          	addi	sp,sp,-32
    80003834:	00113c23          	sd	ra,24(sp)
    80003838:	00813823          	sd	s0,16(sp)
    8000383c:	00913423          	sd	s1,8(sp)
    80003840:	02010413          	addi	s0,sp,32
    80003844:	00050493          	mv	s1,a0
    LOCK();
    80003848:	00100613          	li	a2,1
    8000384c:	00000593          	li	a1,0
    80003850:	00009517          	auipc	a0,0x9
    80003854:	6a850513          	addi	a0,a0,1704 # 8000cef8 <lockPrint>
    80003858:	ffffe097          	auipc	ra,0xffffe
    8000385c:	9c0080e7          	jalr	-1600(ra) # 80001218 <copy_and_swap>
    80003860:	fe0514e3          	bnez	a0,80003848 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80003864:	0004c503          	lbu	a0,0(s1)
    80003868:	00050a63          	beqz	a0,8000387c <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    8000386c:	ffffe097          	auipc	ra,0xffffe
    80003870:	ccc080e7          	jalr	-820(ra) # 80001538 <_Z4putcc>
        string++;
    80003874:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80003878:	fedff06f          	j	80003864 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    8000387c:	00000613          	li	a2,0
    80003880:	00100593          	li	a1,1
    80003884:	00009517          	auipc	a0,0x9
    80003888:	67450513          	addi	a0,a0,1652 # 8000cef8 <lockPrint>
    8000388c:	ffffe097          	auipc	ra,0xffffe
    80003890:	98c080e7          	jalr	-1652(ra) # 80001218 <copy_and_swap>
    80003894:	fe0514e3          	bnez	a0,8000387c <_Z11printStringPKc+0x4c>
}
    80003898:	01813083          	ld	ra,24(sp)
    8000389c:	01013403          	ld	s0,16(sp)
    800038a0:	00813483          	ld	s1,8(sp)
    800038a4:	02010113          	addi	sp,sp,32
    800038a8:	00008067          	ret

00000000800038ac <_Z9getStringPci>:

char* getString(char *buf, int max) {
    800038ac:	fd010113          	addi	sp,sp,-48
    800038b0:	02113423          	sd	ra,40(sp)
    800038b4:	02813023          	sd	s0,32(sp)
    800038b8:	00913c23          	sd	s1,24(sp)
    800038bc:	01213823          	sd	s2,16(sp)
    800038c0:	01313423          	sd	s3,8(sp)
    800038c4:	01413023          	sd	s4,0(sp)
    800038c8:	03010413          	addi	s0,sp,48
    800038cc:	00050993          	mv	s3,a0
    800038d0:	00058a13          	mv	s4,a1
    LOCK();
    800038d4:	00100613          	li	a2,1
    800038d8:	00000593          	li	a1,0
    800038dc:	00009517          	auipc	a0,0x9
    800038e0:	61c50513          	addi	a0,a0,1564 # 8000cef8 <lockPrint>
    800038e4:	ffffe097          	auipc	ra,0xffffe
    800038e8:	934080e7          	jalr	-1740(ra) # 80001218 <copy_and_swap>
    800038ec:	fe0514e3          	bnez	a0,800038d4 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    800038f0:	00000913          	li	s2,0
    800038f4:	00090493          	mv	s1,s2
    800038f8:	0019091b          	addiw	s2,s2,1
    800038fc:	03495a63          	bge	s2,s4,80003930 <_Z9getStringPci+0x84>
        cc = getc();
    80003900:	ffffe097          	auipc	ra,0xffffe
    80003904:	c10080e7          	jalr	-1008(ra) # 80001510 <_Z4getcv>
        if(cc < 1)
    80003908:	02050463          	beqz	a0,80003930 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    8000390c:	009984b3          	add	s1,s3,s1
    80003910:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80003914:	00a00793          	li	a5,10
    80003918:	00f50a63          	beq	a0,a5,8000392c <_Z9getStringPci+0x80>
    8000391c:	00d00793          	li	a5,13
    80003920:	fcf51ae3          	bne	a0,a5,800038f4 <_Z9getStringPci+0x48>
        buf[i++] = c;
    80003924:	00090493          	mv	s1,s2
    80003928:	0080006f          	j	80003930 <_Z9getStringPci+0x84>
    8000392c:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80003930:	009984b3          	add	s1,s3,s1
    80003934:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80003938:	00000613          	li	a2,0
    8000393c:	00100593          	li	a1,1
    80003940:	00009517          	auipc	a0,0x9
    80003944:	5b850513          	addi	a0,a0,1464 # 8000cef8 <lockPrint>
    80003948:	ffffe097          	auipc	ra,0xffffe
    8000394c:	8d0080e7          	jalr	-1840(ra) # 80001218 <copy_and_swap>
    80003950:	fe0514e3          	bnez	a0,80003938 <_Z9getStringPci+0x8c>
    return buf;
}
    80003954:	00098513          	mv	a0,s3
    80003958:	02813083          	ld	ra,40(sp)
    8000395c:	02013403          	ld	s0,32(sp)
    80003960:	01813483          	ld	s1,24(sp)
    80003964:	01013903          	ld	s2,16(sp)
    80003968:	00813983          	ld	s3,8(sp)
    8000396c:	00013a03          	ld	s4,0(sp)
    80003970:	03010113          	addi	sp,sp,48
    80003974:	00008067          	ret

0000000080003978 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80003978:	ff010113          	addi	sp,sp,-16
    8000397c:	00813423          	sd	s0,8(sp)
    80003980:	01010413          	addi	s0,sp,16
    80003984:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80003988:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    8000398c:	0006c603          	lbu	a2,0(a3)
    80003990:	fd06071b          	addiw	a4,a2,-48
    80003994:	0ff77713          	andi	a4,a4,255
    80003998:	00900793          	li	a5,9
    8000399c:	02e7e063          	bltu	a5,a4,800039bc <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800039a0:	0025179b          	slliw	a5,a0,0x2
    800039a4:	00a787bb          	addw	a5,a5,a0
    800039a8:	0017979b          	slliw	a5,a5,0x1
    800039ac:	00168693          	addi	a3,a3,1
    800039b0:	00c787bb          	addw	a5,a5,a2
    800039b4:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800039b8:	fd5ff06f          	j	8000398c <_Z11stringToIntPKc+0x14>
    return n;
}
    800039bc:	00813403          	ld	s0,8(sp)
    800039c0:	01010113          	addi	sp,sp,16
    800039c4:	00008067          	ret

00000000800039c8 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    800039c8:	fc010113          	addi	sp,sp,-64
    800039cc:	02113c23          	sd	ra,56(sp)
    800039d0:	02813823          	sd	s0,48(sp)
    800039d4:	02913423          	sd	s1,40(sp)
    800039d8:	03213023          	sd	s2,32(sp)
    800039dc:	01313c23          	sd	s3,24(sp)
    800039e0:	04010413          	addi	s0,sp,64
    800039e4:	00050493          	mv	s1,a0
    800039e8:	00058913          	mv	s2,a1
    800039ec:	00060993          	mv	s3,a2
    LOCK();
    800039f0:	00100613          	li	a2,1
    800039f4:	00000593          	li	a1,0
    800039f8:	00009517          	auipc	a0,0x9
    800039fc:	50050513          	addi	a0,a0,1280 # 8000cef8 <lockPrint>
    80003a00:	ffffe097          	auipc	ra,0xffffe
    80003a04:	818080e7          	jalr	-2024(ra) # 80001218 <copy_and_swap>
    80003a08:	fe0514e3          	bnez	a0,800039f0 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80003a0c:	00098463          	beqz	s3,80003a14 <_Z8printIntiii+0x4c>
    80003a10:	0804c463          	bltz	s1,80003a98 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80003a14:	0004851b          	sext.w	a0,s1
    neg = 0;
    80003a18:	00000593          	li	a1,0
    }

    i = 0;
    80003a1c:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80003a20:	0009079b          	sext.w	a5,s2
    80003a24:	0325773b          	remuw	a4,a0,s2
    80003a28:	00048613          	mv	a2,s1
    80003a2c:	0014849b          	addiw	s1,s1,1
    80003a30:	02071693          	slli	a3,a4,0x20
    80003a34:	0206d693          	srli	a3,a3,0x20
    80003a38:	00005717          	auipc	a4,0x5
    80003a3c:	32870713          	addi	a4,a4,808 # 80008d60 <digits>
    80003a40:	00d70733          	add	a4,a4,a3
    80003a44:	00074683          	lbu	a3,0(a4)
    80003a48:	fd040713          	addi	a4,s0,-48
    80003a4c:	00c70733          	add	a4,a4,a2
    80003a50:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80003a54:	0005071b          	sext.w	a4,a0
    80003a58:	0325553b          	divuw	a0,a0,s2
    80003a5c:	fcf772e3          	bgeu	a4,a5,80003a20 <_Z8printIntiii+0x58>
    if(neg)
    80003a60:	00058c63          	beqz	a1,80003a78 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80003a64:	fd040793          	addi	a5,s0,-48
    80003a68:	009784b3          	add	s1,a5,s1
    80003a6c:	02d00793          	li	a5,45
    80003a70:	fef48823          	sb	a5,-16(s1)
    80003a74:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80003a78:	fff4849b          	addiw	s1,s1,-1
    80003a7c:	0204c463          	bltz	s1,80003aa4 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    80003a80:	fd040793          	addi	a5,s0,-48
    80003a84:	009787b3          	add	a5,a5,s1
    80003a88:	ff07c503          	lbu	a0,-16(a5)
    80003a8c:	ffffe097          	auipc	ra,0xffffe
    80003a90:	aac080e7          	jalr	-1364(ra) # 80001538 <_Z4putcc>
    80003a94:	fe5ff06f          	j	80003a78 <_Z8printIntiii+0xb0>
        x = -xx;
    80003a98:	4090053b          	negw	a0,s1
        neg = 1;
    80003a9c:	00100593          	li	a1,1
        x = -xx;
    80003aa0:	f7dff06f          	j	80003a1c <_Z8printIntiii+0x54>

    UNLOCK();
    80003aa4:	00000613          	li	a2,0
    80003aa8:	00100593          	li	a1,1
    80003aac:	00009517          	auipc	a0,0x9
    80003ab0:	44c50513          	addi	a0,a0,1100 # 8000cef8 <lockPrint>
    80003ab4:	ffffd097          	auipc	ra,0xffffd
    80003ab8:	764080e7          	jalr	1892(ra) # 80001218 <copy_and_swap>
    80003abc:	fe0514e3          	bnez	a0,80003aa4 <_Z8printIntiii+0xdc>
}
    80003ac0:	03813083          	ld	ra,56(sp)
    80003ac4:	03013403          	ld	s0,48(sp)
    80003ac8:	02813483          	ld	s1,40(sp)
    80003acc:	02013903          	ld	s2,32(sp)
    80003ad0:	01813983          	ld	s3,24(sp)
    80003ad4:	04010113          	addi	sp,sp,64
    80003ad8:	00008067          	ret

0000000080003adc <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"
#include "printing.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80003adc:	fd010113          	addi	sp,sp,-48
    80003ae0:	02113423          	sd	ra,40(sp)
    80003ae4:	02813023          	sd	s0,32(sp)
    80003ae8:	00913c23          	sd	s1,24(sp)
    80003aec:	01213823          	sd	s2,16(sp)
    80003af0:	01313423          	sd	s3,8(sp)
    80003af4:	03010413          	addi	s0,sp,48
    80003af8:	00050493          	mv	s1,a0
    80003afc:	00058913          	mv	s2,a1
    80003b00:	0015879b          	addiw	a5,a1,1
    80003b04:	0007851b          	sext.w	a0,a5
    80003b08:	00f4a023          	sw	a5,0(s1)
    80003b0c:	0004a823          	sw	zero,16(s1)
    80003b10:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80003b14:	00251513          	slli	a0,a0,0x2
    80003b18:	ffffd097          	auipc	ra,0xffffd
    80003b1c:	740080e7          	jalr	1856(ra) # 80001258 <_Z9mem_allocm>
    80003b20:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80003b24:	01000513          	li	a0,16
    80003b28:	fffff097          	auipc	ra,0xfffff
    80003b2c:	9e8080e7          	jalr	-1560(ra) # 80002510 <_Znwm>
    80003b30:	00050993          	mv	s3,a0
    80003b34:	00000593          	li	a1,0
    80003b38:	fffff097          	auipc	ra,0xfffff
    80003b3c:	c2c080e7          	jalr	-980(ra) # 80002764 <_ZN9SemaphoreC1Ej>
    80003b40:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80003b44:	01000513          	li	a0,16
    80003b48:	fffff097          	auipc	ra,0xfffff
    80003b4c:	9c8080e7          	jalr	-1592(ra) # 80002510 <_Znwm>
    80003b50:	00050993          	mv	s3,a0
    80003b54:	00090593          	mv	a1,s2
    80003b58:	fffff097          	auipc	ra,0xfffff
    80003b5c:	c0c080e7          	jalr	-1012(ra) # 80002764 <_ZN9SemaphoreC1Ej>
    80003b60:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80003b64:	01000513          	li	a0,16
    80003b68:	fffff097          	auipc	ra,0xfffff
    80003b6c:	9a8080e7          	jalr	-1624(ra) # 80002510 <_Znwm>
    80003b70:	00050913          	mv	s2,a0
    80003b74:	00100593          	li	a1,1
    80003b78:	fffff097          	auipc	ra,0xfffff
    80003b7c:	bec080e7          	jalr	-1044(ra) # 80002764 <_ZN9SemaphoreC1Ej>
    80003b80:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80003b84:	01000513          	li	a0,16
    80003b88:	fffff097          	auipc	ra,0xfffff
    80003b8c:	988080e7          	jalr	-1656(ra) # 80002510 <_Znwm>
    80003b90:	00050913          	mv	s2,a0
    80003b94:	00100593          	li	a1,1
    80003b98:	fffff097          	auipc	ra,0xfffff
    80003b9c:	bcc080e7          	jalr	-1076(ra) # 80002764 <_ZN9SemaphoreC1Ej>
    80003ba0:	0324b823          	sd	s2,48(s1)
}
    80003ba4:	02813083          	ld	ra,40(sp)
    80003ba8:	02013403          	ld	s0,32(sp)
    80003bac:	01813483          	ld	s1,24(sp)
    80003bb0:	01013903          	ld	s2,16(sp)
    80003bb4:	00813983          	ld	s3,8(sp)
    80003bb8:	03010113          	addi	sp,sp,48
    80003bbc:	00008067          	ret
    80003bc0:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80003bc4:	00098513          	mv	a0,s3
    80003bc8:	fffff097          	auipc	ra,0xfffff
    80003bcc:	970080e7          	jalr	-1680(ra) # 80002538 <_ZdlPv>
    80003bd0:	00048513          	mv	a0,s1
    80003bd4:	0000a097          	auipc	ra,0xa
    80003bd8:	404080e7          	jalr	1028(ra) # 8000dfd8 <_Unwind_Resume>
    80003bdc:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80003be0:	00098513          	mv	a0,s3
    80003be4:	fffff097          	auipc	ra,0xfffff
    80003be8:	954080e7          	jalr	-1708(ra) # 80002538 <_ZdlPv>
    80003bec:	00048513          	mv	a0,s1
    80003bf0:	0000a097          	auipc	ra,0xa
    80003bf4:	3e8080e7          	jalr	1000(ra) # 8000dfd8 <_Unwind_Resume>
    80003bf8:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80003bfc:	00090513          	mv	a0,s2
    80003c00:	fffff097          	auipc	ra,0xfffff
    80003c04:	938080e7          	jalr	-1736(ra) # 80002538 <_ZdlPv>
    80003c08:	00048513          	mv	a0,s1
    80003c0c:	0000a097          	auipc	ra,0xa
    80003c10:	3cc080e7          	jalr	972(ra) # 8000dfd8 <_Unwind_Resume>
    80003c14:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80003c18:	00090513          	mv	a0,s2
    80003c1c:	fffff097          	auipc	ra,0xfffff
    80003c20:	91c080e7          	jalr	-1764(ra) # 80002538 <_ZdlPv>
    80003c24:	00048513          	mv	a0,s1
    80003c28:	0000a097          	auipc	ra,0xa
    80003c2c:	3b0080e7          	jalr	944(ra) # 8000dfd8 <_Unwind_Resume>

0000000080003c30 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80003c30:	fe010113          	addi	sp,sp,-32
    80003c34:	00113c23          	sd	ra,24(sp)
    80003c38:	00813823          	sd	s0,16(sp)
    80003c3c:	00913423          	sd	s1,8(sp)
    80003c40:	01213023          	sd	s2,0(sp)
    80003c44:	02010413          	addi	s0,sp,32
    80003c48:	00050493          	mv	s1,a0
    80003c4c:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80003c50:	01853503          	ld	a0,24(a0)
    80003c54:	fffff097          	auipc	ra,0xfffff
    80003c58:	ad8080e7          	jalr	-1320(ra) # 8000272c <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80003c5c:	0304b503          	ld	a0,48(s1)
    80003c60:	fffff097          	auipc	ra,0xfffff
    80003c64:	acc080e7          	jalr	-1332(ra) # 8000272c <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80003c68:	0084b783          	ld	a5,8(s1)
    80003c6c:	0144a703          	lw	a4,20(s1)
    80003c70:	00271713          	slli	a4,a4,0x2
    80003c74:	00e787b3          	add	a5,a5,a4
    80003c78:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80003c7c:	0144a783          	lw	a5,20(s1)
    80003c80:	0017879b          	addiw	a5,a5,1
    80003c84:	0004a703          	lw	a4,0(s1)
    80003c88:	02e7e7bb          	remw	a5,a5,a4
    80003c8c:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80003c90:	0304b503          	ld	a0,48(s1)
    80003c94:	fffff097          	auipc	ra,0xfffff
    80003c98:	b1c080e7          	jalr	-1252(ra) # 800027b0 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80003c9c:	0204b503          	ld	a0,32(s1)
    80003ca0:	fffff097          	auipc	ra,0xfffff
    80003ca4:	b10080e7          	jalr	-1264(ra) # 800027b0 <_ZN9Semaphore6signalEv>

}
    80003ca8:	01813083          	ld	ra,24(sp)
    80003cac:	01013403          	ld	s0,16(sp)
    80003cb0:	00813483          	ld	s1,8(sp)
    80003cb4:	00013903          	ld	s2,0(sp)
    80003cb8:	02010113          	addi	sp,sp,32
    80003cbc:	00008067          	ret

0000000080003cc0 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80003cc0:	fe010113          	addi	sp,sp,-32
    80003cc4:	00113c23          	sd	ra,24(sp)
    80003cc8:	00813823          	sd	s0,16(sp)
    80003ccc:	00913423          	sd	s1,8(sp)
    80003cd0:	01213023          	sd	s2,0(sp)
    80003cd4:	02010413          	addi	s0,sp,32
    80003cd8:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80003cdc:	02053503          	ld	a0,32(a0)
    80003ce0:	fffff097          	auipc	ra,0xfffff
    80003ce4:	a4c080e7          	jalr	-1460(ra) # 8000272c <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80003ce8:	0284b503          	ld	a0,40(s1)
    80003cec:	fffff097          	auipc	ra,0xfffff
    80003cf0:	a40080e7          	jalr	-1472(ra) # 8000272c <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80003cf4:	0084b703          	ld	a4,8(s1)
    80003cf8:	0104a783          	lw	a5,16(s1)
    80003cfc:	00279693          	slli	a3,a5,0x2
    80003d00:	00d70733          	add	a4,a4,a3
    80003d04:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80003d08:	0017879b          	addiw	a5,a5,1
    80003d0c:	0004a703          	lw	a4,0(s1)
    80003d10:	02e7e7bb          	remw	a5,a5,a4
    80003d14:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80003d18:	0284b503          	ld	a0,40(s1)
    80003d1c:	fffff097          	auipc	ra,0xfffff
    80003d20:	a94080e7          	jalr	-1388(ra) # 800027b0 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80003d24:	0184b503          	ld	a0,24(s1)
    80003d28:	fffff097          	auipc	ra,0xfffff
    80003d2c:	a88080e7          	jalr	-1400(ra) # 800027b0 <_ZN9Semaphore6signalEv>

    return ret;
}
    80003d30:	00090513          	mv	a0,s2
    80003d34:	01813083          	ld	ra,24(sp)
    80003d38:	01013403          	ld	s0,16(sp)
    80003d3c:	00813483          	ld	s1,8(sp)
    80003d40:	00013903          	ld	s2,0(sp)
    80003d44:	02010113          	addi	sp,sp,32
    80003d48:	00008067          	ret

0000000080003d4c <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80003d4c:	fe010113          	addi	sp,sp,-32
    80003d50:	00113c23          	sd	ra,24(sp)
    80003d54:	00813823          	sd	s0,16(sp)
    80003d58:	00913423          	sd	s1,8(sp)
    80003d5c:	01213023          	sd	s2,0(sp)
    80003d60:	02010413          	addi	s0,sp,32
    80003d64:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80003d68:	02853503          	ld	a0,40(a0)
    80003d6c:	fffff097          	auipc	ra,0xfffff
    80003d70:	9c0080e7          	jalr	-1600(ra) # 8000272c <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80003d74:	0304b503          	ld	a0,48(s1)
    80003d78:	fffff097          	auipc	ra,0xfffff
    80003d7c:	9b4080e7          	jalr	-1612(ra) # 8000272c <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80003d80:	0144a783          	lw	a5,20(s1)
    80003d84:	0104a903          	lw	s2,16(s1)
    80003d88:	0327ce63          	blt	a5,s2,80003dc4 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80003d8c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80003d90:	0304b503          	ld	a0,48(s1)
    80003d94:	fffff097          	auipc	ra,0xfffff
    80003d98:	a1c080e7          	jalr	-1508(ra) # 800027b0 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80003d9c:	0284b503          	ld	a0,40(s1)
    80003da0:	fffff097          	auipc	ra,0xfffff
    80003da4:	a10080e7          	jalr	-1520(ra) # 800027b0 <_ZN9Semaphore6signalEv>

    return ret;
}
    80003da8:	00090513          	mv	a0,s2
    80003dac:	01813083          	ld	ra,24(sp)
    80003db0:	01013403          	ld	s0,16(sp)
    80003db4:	00813483          	ld	s1,8(sp)
    80003db8:	00013903          	ld	s2,0(sp)
    80003dbc:	02010113          	addi	sp,sp,32
    80003dc0:	00008067          	ret
        ret = cap - head + tail;
    80003dc4:	0004a703          	lw	a4,0(s1)
    80003dc8:	4127093b          	subw	s2,a4,s2
    80003dcc:	00f9093b          	addw	s2,s2,a5
    80003dd0:	fc1ff06f          	j	80003d90 <_ZN9BufferCPP6getCntEv+0x44>

0000000080003dd4 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80003dd4:	fe010113          	addi	sp,sp,-32
    80003dd8:	00113c23          	sd	ra,24(sp)
    80003ddc:	00813823          	sd	s0,16(sp)
    80003de0:	00913423          	sd	s1,8(sp)
    80003de4:	02010413          	addi	s0,sp,32
    80003de8:	00050493          	mv	s1,a0
    Console::putc('\n');
    80003dec:	00a00513          	li	a0,10
    80003df0:	fffff097          	auipc	ra,0xfffff
    80003df4:	a20080e7          	jalr	-1504(ra) # 80002810 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80003df8:	00003517          	auipc	a0,0x3
    80003dfc:	35050513          	addi	a0,a0,848 # 80007148 <CONSOLE_STATUS+0x138>
    80003e00:	00000097          	auipc	ra,0x0
    80003e04:	a30080e7          	jalr	-1488(ra) # 80003830 <_Z11printStringPKc>
    while (getCnt()) {
    80003e08:	00048513          	mv	a0,s1
    80003e0c:	00000097          	auipc	ra,0x0
    80003e10:	f40080e7          	jalr	-192(ra) # 80003d4c <_ZN9BufferCPP6getCntEv>
    80003e14:	02050c63          	beqz	a0,80003e4c <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80003e18:	0084b783          	ld	a5,8(s1)
    80003e1c:	0104a703          	lw	a4,16(s1)
    80003e20:	00271713          	slli	a4,a4,0x2
    80003e24:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80003e28:	0007c503          	lbu	a0,0(a5)
    80003e2c:	fffff097          	auipc	ra,0xfffff
    80003e30:	9e4080e7          	jalr	-1564(ra) # 80002810 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80003e34:	0104a783          	lw	a5,16(s1)
    80003e38:	0017879b          	addiw	a5,a5,1
    80003e3c:	0004a703          	lw	a4,0(s1)
    80003e40:	02e7e7bb          	remw	a5,a5,a4
    80003e44:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80003e48:	fc1ff06f          	j	80003e08 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80003e4c:	02100513          	li	a0,33
    80003e50:	fffff097          	auipc	ra,0xfffff
    80003e54:	9c0080e7          	jalr	-1600(ra) # 80002810 <_ZN7Console4putcEc>
    Console::putc('\n');
    80003e58:	00a00513          	li	a0,10
    80003e5c:	fffff097          	auipc	ra,0xfffff
    80003e60:	9b4080e7          	jalr	-1612(ra) # 80002810 <_ZN7Console4putcEc>
    mem_free(buffer);
    80003e64:	0084b503          	ld	a0,8(s1)
    80003e68:	ffffd097          	auipc	ra,0xffffd
    80003e6c:	420080e7          	jalr	1056(ra) # 80001288 <_Z8mem_freePv>
    delete itemAvailable;
    80003e70:	0204b503          	ld	a0,32(s1)
    80003e74:	00050863          	beqz	a0,80003e84 <_ZN9BufferCPPD1Ev+0xb0>
    80003e78:	00053783          	ld	a5,0(a0)
    80003e7c:	0087b783          	ld	a5,8(a5)
    80003e80:	000780e7          	jalr	a5
    delete spaceAvailable;
    80003e84:	0184b503          	ld	a0,24(s1)
    80003e88:	00050863          	beqz	a0,80003e98 <_ZN9BufferCPPD1Ev+0xc4>
    80003e8c:	00053783          	ld	a5,0(a0)
    80003e90:	0087b783          	ld	a5,8(a5)
    80003e94:	000780e7          	jalr	a5
    delete mutexTail;
    80003e98:	0304b503          	ld	a0,48(s1)
    80003e9c:	00050863          	beqz	a0,80003eac <_ZN9BufferCPPD1Ev+0xd8>
    80003ea0:	00053783          	ld	a5,0(a0)
    80003ea4:	0087b783          	ld	a5,8(a5)
    80003ea8:	000780e7          	jalr	a5
    delete mutexHead;
    80003eac:	0284b503          	ld	a0,40(s1)
    80003eb0:	00050863          	beqz	a0,80003ec0 <_ZN9BufferCPPD1Ev+0xec>
    80003eb4:	00053783          	ld	a5,0(a0)
    80003eb8:	0087b783          	ld	a5,8(a5)
    80003ebc:	000780e7          	jalr	a5
}
    80003ec0:	01813083          	ld	ra,24(sp)
    80003ec4:	01013403          	ld	s0,16(sp)
    80003ec8:	00813483          	ld	s1,8(sp)
    80003ecc:	02010113          	addi	sp,sp,32
    80003ed0:	00008067          	ret

0000000080003ed4 <_Z11workerBodyAPv>:
    if (n == 0 || n == 1) { return n; }
    if (n % 10 == 0) { thread_dispatch(); }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

void workerBodyA(void* arg) {
    80003ed4:	fe010113          	addi	sp,sp,-32
    80003ed8:	00113c23          	sd	ra,24(sp)
    80003edc:	00813823          	sd	s0,16(sp)
    80003ee0:	00913423          	sd	s1,8(sp)
    80003ee4:	01213023          	sd	s2,0(sp)
    80003ee8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003eec:	00000913          	li	s2,0
    80003ef0:	0380006f          	j	80003f28 <_Z11workerBodyAPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003ef4:	ffffd097          	auipc	ra,0xffffd
    80003ef8:	440080e7          	jalr	1088(ra) # 80001334 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003efc:	00148493          	addi	s1,s1,1
    80003f00:	000027b7          	lui	a5,0x2
    80003f04:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003f08:	0097ee63          	bltu	a5,s1,80003f24 <_Z11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003f0c:	00000713          	li	a4,0
    80003f10:	000077b7          	lui	a5,0x7
    80003f14:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003f18:	fce7eee3          	bltu	a5,a4,80003ef4 <_Z11workerBodyAPv+0x20>
    80003f1c:	00170713          	addi	a4,a4,1
    80003f20:	ff1ff06f          	j	80003f10 <_Z11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003f24:	00190913          	addi	s2,s2,1
    80003f28:	00900793          	li	a5,9
    80003f2c:	0527e063          	bltu	a5,s2,80003f6c <_Z11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003f30:	00003517          	auipc	a0,0x3
    80003f34:	23050513          	addi	a0,a0,560 # 80007160 <CONSOLE_STATUS+0x150>
    80003f38:	00000097          	auipc	ra,0x0
    80003f3c:	8f8080e7          	jalr	-1800(ra) # 80003830 <_Z11printStringPKc>
    80003f40:	00000613          	li	a2,0
    80003f44:	00a00593          	li	a1,10
    80003f48:	0009051b          	sext.w	a0,s2
    80003f4c:	00000097          	auipc	ra,0x0
    80003f50:	a7c080e7          	jalr	-1412(ra) # 800039c8 <_Z8printIntiii>
    80003f54:	00003517          	auipc	a0,0x3
    80003f58:	41450513          	addi	a0,a0,1044 # 80007368 <CONSOLE_STATUS+0x358>
    80003f5c:	00000097          	auipc	ra,0x0
    80003f60:	8d4080e7          	jalr	-1836(ra) # 80003830 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003f64:	00000493          	li	s1,0
    80003f68:	f99ff06f          	j	80003f00 <_Z11workerBodyAPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003f6c:	00003517          	auipc	a0,0x3
    80003f70:	1fc50513          	addi	a0,a0,508 # 80007168 <CONSOLE_STATUS+0x158>
    80003f74:	00000097          	auipc	ra,0x0
    80003f78:	8bc080e7          	jalr	-1860(ra) # 80003830 <_Z11printStringPKc>
    finishedA = true;
    80003f7c:	00100793          	li	a5,1
    80003f80:	00009717          	auipc	a4,0x9
    80003f84:	f8f70023          	sb	a5,-128(a4) # 8000cf00 <finishedA>
}
    80003f88:	01813083          	ld	ra,24(sp)
    80003f8c:	01013403          	ld	s0,16(sp)
    80003f90:	00813483          	ld	s1,8(sp)
    80003f94:	00013903          	ld	s2,0(sp)
    80003f98:	02010113          	addi	sp,sp,32
    80003f9c:	00008067          	ret

0000000080003fa0 <_Z11workerBodyBPv>:

void workerBodyB(void* arg) {
    80003fa0:	fe010113          	addi	sp,sp,-32
    80003fa4:	00113c23          	sd	ra,24(sp)
    80003fa8:	00813823          	sd	s0,16(sp)
    80003fac:	00913423          	sd	s1,8(sp)
    80003fb0:	01213023          	sd	s2,0(sp)
    80003fb4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003fb8:	00000913          	li	s2,0
    80003fbc:	0380006f          	j	80003ff4 <_Z11workerBodyBPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003fc0:	ffffd097          	auipc	ra,0xffffd
    80003fc4:	374080e7          	jalr	884(ra) # 80001334 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003fc8:	00148493          	addi	s1,s1,1
    80003fcc:	000027b7          	lui	a5,0x2
    80003fd0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003fd4:	0097ee63          	bltu	a5,s1,80003ff0 <_Z11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003fd8:	00000713          	li	a4,0
    80003fdc:	000077b7          	lui	a5,0x7
    80003fe0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003fe4:	fce7eee3          	bltu	a5,a4,80003fc0 <_Z11workerBodyBPv+0x20>
    80003fe8:	00170713          	addi	a4,a4,1
    80003fec:	ff1ff06f          	j	80003fdc <_Z11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003ff0:	00190913          	addi	s2,s2,1
    80003ff4:	00f00793          	li	a5,15
    80003ff8:	0527e063          	bltu	a5,s2,80004038 <_Z11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003ffc:	00003517          	auipc	a0,0x3
    80004000:	17c50513          	addi	a0,a0,380 # 80007178 <CONSOLE_STATUS+0x168>
    80004004:	00000097          	auipc	ra,0x0
    80004008:	82c080e7          	jalr	-2004(ra) # 80003830 <_Z11printStringPKc>
    8000400c:	00000613          	li	a2,0
    80004010:	00a00593          	li	a1,10
    80004014:	0009051b          	sext.w	a0,s2
    80004018:	00000097          	auipc	ra,0x0
    8000401c:	9b0080e7          	jalr	-1616(ra) # 800039c8 <_Z8printIntiii>
    80004020:	00003517          	auipc	a0,0x3
    80004024:	34850513          	addi	a0,a0,840 # 80007368 <CONSOLE_STATUS+0x358>
    80004028:	00000097          	auipc	ra,0x0
    8000402c:	808080e7          	jalr	-2040(ra) # 80003830 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004030:	00000493          	li	s1,0
    80004034:	f99ff06f          	j	80003fcc <_Z11workerBodyBPv+0x2c>
        }
    }
    thread_dispatch();
    80004038:	ffffd097          	auipc	ra,0xffffd
    8000403c:	2fc080e7          	jalr	764(ra) # 80001334 <_Z15thread_dispatchv>
    printString("B finished!\n");
    80004040:	00003517          	auipc	a0,0x3
    80004044:	14050513          	addi	a0,a0,320 # 80007180 <CONSOLE_STATUS+0x170>
    80004048:	fffff097          	auipc	ra,0xfffff
    8000404c:	7e8080e7          	jalr	2024(ra) # 80003830 <_Z11printStringPKc>
    finishedB = true;
    80004050:	00100793          	li	a5,1
    80004054:	00009717          	auipc	a4,0x9
    80004058:	eaf706a3          	sb	a5,-339(a4) # 8000cf01 <finishedB>
}
    8000405c:	01813083          	ld	ra,24(sp)
    80004060:	01013403          	ld	s0,16(sp)
    80004064:	00813483          	ld	s1,8(sp)
    80004068:	00013903          	ld	s2,0(sp)
    8000406c:	02010113          	addi	sp,sp,32
    80004070:	00008067          	ret

0000000080004074 <_Z9fibonaccim>:
uint64 fibonacci(uint64 n) {
    80004074:	fe010113          	addi	sp,sp,-32
    80004078:	00113c23          	sd	ra,24(sp)
    8000407c:	00813823          	sd	s0,16(sp)
    80004080:	00913423          	sd	s1,8(sp)
    80004084:	01213023          	sd	s2,0(sp)
    80004088:	02010413          	addi	s0,sp,32
    8000408c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004090:	00100793          	li	a5,1
    80004094:	02a7f863          	bgeu	a5,a0,800040c4 <_Z9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004098:	00a00793          	li	a5,10
    8000409c:	02f577b3          	remu	a5,a0,a5
    800040a0:	02078e63          	beqz	a5,800040dc <_Z9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800040a4:	fff48513          	addi	a0,s1,-1
    800040a8:	00000097          	auipc	ra,0x0
    800040ac:	fcc080e7          	jalr	-52(ra) # 80004074 <_Z9fibonaccim>
    800040b0:	00050913          	mv	s2,a0
    800040b4:	ffe48513          	addi	a0,s1,-2
    800040b8:	00000097          	auipc	ra,0x0
    800040bc:	fbc080e7          	jalr	-68(ra) # 80004074 <_Z9fibonaccim>
    800040c0:	00a90533          	add	a0,s2,a0
}
    800040c4:	01813083          	ld	ra,24(sp)
    800040c8:	01013403          	ld	s0,16(sp)
    800040cc:	00813483          	ld	s1,8(sp)
    800040d0:	00013903          	ld	s2,0(sp)
    800040d4:	02010113          	addi	sp,sp,32
    800040d8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800040dc:	ffffd097          	auipc	ra,0xffffd
    800040e0:	258080e7          	jalr	600(ra) # 80001334 <_Z15thread_dispatchv>
    800040e4:	fc1ff06f          	j	800040a4 <_Z9fibonaccim+0x30>

00000000800040e8 <_Z11workerBodyCPv>:

void workerBodyC(void* arg) {
    800040e8:	fe010113          	addi	sp,sp,-32
    800040ec:	00113c23          	sd	ra,24(sp)
    800040f0:	00813823          	sd	s0,16(sp)
    800040f4:	00913423          	sd	s1,8(sp)
    800040f8:	01213023          	sd	s2,0(sp)
    800040fc:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004100:	00000493          	li	s1,0
    80004104:	0400006f          	j	80004144 <_Z11workerBodyCPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004108:	00003517          	auipc	a0,0x3
    8000410c:	08850513          	addi	a0,a0,136 # 80007190 <CONSOLE_STATUS+0x180>
    80004110:	fffff097          	auipc	ra,0xfffff
    80004114:	720080e7          	jalr	1824(ra) # 80003830 <_Z11printStringPKc>
    80004118:	00000613          	li	a2,0
    8000411c:	00a00593          	li	a1,10
    80004120:	00048513          	mv	a0,s1
    80004124:	00000097          	auipc	ra,0x0
    80004128:	8a4080e7          	jalr	-1884(ra) # 800039c8 <_Z8printIntiii>
    8000412c:	00003517          	auipc	a0,0x3
    80004130:	23c50513          	addi	a0,a0,572 # 80007368 <CONSOLE_STATUS+0x358>
    80004134:	fffff097          	auipc	ra,0xfffff
    80004138:	6fc080e7          	jalr	1788(ra) # 80003830 <_Z11printStringPKc>
    for (; i < 3; i++) {
    8000413c:	0014849b          	addiw	s1,s1,1
    80004140:	0ff4f493          	andi	s1,s1,255
    80004144:	00200793          	li	a5,2
    80004148:	fc97f0e3          	bgeu	a5,s1,80004108 <_Z11workerBodyCPv+0x20>
    }

    printString("C: dispatch\n");
    8000414c:	00003517          	auipc	a0,0x3
    80004150:	04c50513          	addi	a0,a0,76 # 80007198 <CONSOLE_STATUS+0x188>
    80004154:	fffff097          	auipc	ra,0xfffff
    80004158:	6dc080e7          	jalr	1756(ra) # 80003830 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    8000415c:	00700313          	li	t1,7
    thread_dispatch();
    80004160:	ffffd097          	auipc	ra,0xffffd
    80004164:	1d4080e7          	jalr	468(ra) # 80001334 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004168:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    8000416c:	00003517          	auipc	a0,0x3
    80004170:	03c50513          	addi	a0,a0,60 # 800071a8 <CONSOLE_STATUS+0x198>
    80004174:	fffff097          	auipc	ra,0xfffff
    80004178:	6bc080e7          	jalr	1724(ra) # 80003830 <_Z11printStringPKc>
    8000417c:	00000613          	li	a2,0
    80004180:	00a00593          	li	a1,10
    80004184:	0009051b          	sext.w	a0,s2
    80004188:	00000097          	auipc	ra,0x0
    8000418c:	840080e7          	jalr	-1984(ra) # 800039c8 <_Z8printIntiii>
    80004190:	00003517          	auipc	a0,0x3
    80004194:	1d850513          	addi	a0,a0,472 # 80007368 <CONSOLE_STATUS+0x358>
    80004198:	fffff097          	auipc	ra,0xfffff
    8000419c:	698080e7          	jalr	1688(ra) # 80003830 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800041a0:	00c00513          	li	a0,12
    800041a4:	00000097          	auipc	ra,0x0
    800041a8:	ed0080e7          	jalr	-304(ra) # 80004074 <_Z9fibonaccim>
    800041ac:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800041b0:	00003517          	auipc	a0,0x3
    800041b4:	00050513          	mv	a0,a0
    800041b8:	fffff097          	auipc	ra,0xfffff
    800041bc:	678080e7          	jalr	1656(ra) # 80003830 <_Z11printStringPKc>
    800041c0:	00000613          	li	a2,0
    800041c4:	00a00593          	li	a1,10
    800041c8:	0009051b          	sext.w	a0,s2
    800041cc:	fffff097          	auipc	ra,0xfffff
    800041d0:	7fc080e7          	jalr	2044(ra) # 800039c8 <_Z8printIntiii>
    800041d4:	00003517          	auipc	a0,0x3
    800041d8:	19450513          	addi	a0,a0,404 # 80007368 <CONSOLE_STATUS+0x358>
    800041dc:	fffff097          	auipc	ra,0xfffff
    800041e0:	654080e7          	jalr	1620(ra) # 80003830 <_Z11printStringPKc>
    800041e4:	0400006f          	j	80004224 <_Z11workerBodyCPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800041e8:	00003517          	auipc	a0,0x3
    800041ec:	fa850513          	addi	a0,a0,-88 # 80007190 <CONSOLE_STATUS+0x180>
    800041f0:	fffff097          	auipc	ra,0xfffff
    800041f4:	640080e7          	jalr	1600(ra) # 80003830 <_Z11printStringPKc>
    800041f8:	00000613          	li	a2,0
    800041fc:	00a00593          	li	a1,10
    80004200:	00048513          	mv	a0,s1
    80004204:	fffff097          	auipc	ra,0xfffff
    80004208:	7c4080e7          	jalr	1988(ra) # 800039c8 <_Z8printIntiii>
    8000420c:	00003517          	auipc	a0,0x3
    80004210:	15c50513          	addi	a0,a0,348 # 80007368 <CONSOLE_STATUS+0x358>
    80004214:	fffff097          	auipc	ra,0xfffff
    80004218:	61c080e7          	jalr	1564(ra) # 80003830 <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000421c:	0014849b          	addiw	s1,s1,1
    80004220:	0ff4f493          	andi	s1,s1,255
    80004224:	00500793          	li	a5,5
    80004228:	fc97f0e3          	bgeu	a5,s1,800041e8 <_Z11workerBodyCPv+0x100>
    }

    thread_dispatch();
    8000422c:	ffffd097          	auipc	ra,0xffffd
    80004230:	108080e7          	jalr	264(ra) # 80001334 <_Z15thread_dispatchv>
    printString("A finished!\n");
    80004234:	00003517          	auipc	a0,0x3
    80004238:	f3450513          	addi	a0,a0,-204 # 80007168 <CONSOLE_STATUS+0x158>
    8000423c:	fffff097          	auipc	ra,0xfffff
    80004240:	5f4080e7          	jalr	1524(ra) # 80003830 <_Z11printStringPKc>
    finishedC = true;
    80004244:	00100793          	li	a5,1
    80004248:	00009717          	auipc	a4,0x9
    8000424c:	caf70d23          	sb	a5,-838(a4) # 8000cf02 <finishedC>
}
    80004250:	01813083          	ld	ra,24(sp)
    80004254:	01013403          	ld	s0,16(sp)
    80004258:	00813483          	ld	s1,8(sp)
    8000425c:	00013903          	ld	s2,0(sp)
    80004260:	02010113          	addi	sp,sp,32
    80004264:	00008067          	ret

0000000080004268 <_Z11workerBodyDPv>:

void workerBodyD(void* arg) {
    80004268:	fe010113          	addi	sp,sp,-32
    8000426c:	00113c23          	sd	ra,24(sp)
    80004270:	00813823          	sd	s0,16(sp)
    80004274:	00913423          	sd	s1,8(sp)
    80004278:	01213023          	sd	s2,0(sp)
    8000427c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004280:	00a00493          	li	s1,10
    80004284:	0400006f          	j	800042c4 <_Z11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004288:	00003517          	auipc	a0,0x3
    8000428c:	f3850513          	addi	a0,a0,-200 # 800071c0 <CONSOLE_STATUS+0x1b0>
    80004290:	fffff097          	auipc	ra,0xfffff
    80004294:	5a0080e7          	jalr	1440(ra) # 80003830 <_Z11printStringPKc>
    80004298:	00000613          	li	a2,0
    8000429c:	00a00593          	li	a1,10
    800042a0:	00048513          	mv	a0,s1
    800042a4:	fffff097          	auipc	ra,0xfffff
    800042a8:	724080e7          	jalr	1828(ra) # 800039c8 <_Z8printIntiii>
    800042ac:	00003517          	auipc	a0,0x3
    800042b0:	0bc50513          	addi	a0,a0,188 # 80007368 <CONSOLE_STATUS+0x358>
    800042b4:	fffff097          	auipc	ra,0xfffff
    800042b8:	57c080e7          	jalr	1404(ra) # 80003830 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800042bc:	0014849b          	addiw	s1,s1,1
    800042c0:	0ff4f493          	andi	s1,s1,255
    800042c4:	00c00793          	li	a5,12
    800042c8:	fc97f0e3          	bgeu	a5,s1,80004288 <_Z11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800042cc:	00003517          	auipc	a0,0x3
    800042d0:	efc50513          	addi	a0,a0,-260 # 800071c8 <CONSOLE_STATUS+0x1b8>
    800042d4:	fffff097          	auipc	ra,0xfffff
    800042d8:	55c080e7          	jalr	1372(ra) # 80003830 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800042dc:	00500313          	li	t1,5
    thread_dispatch();
    800042e0:	ffffd097          	auipc	ra,0xffffd
    800042e4:	054080e7          	jalr	84(ra) # 80001334 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800042e8:	01000513          	li	a0,16
    800042ec:	00000097          	auipc	ra,0x0
    800042f0:	d88080e7          	jalr	-632(ra) # 80004074 <_Z9fibonaccim>
    800042f4:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800042f8:	00003517          	auipc	a0,0x3
    800042fc:	ee050513          	addi	a0,a0,-288 # 800071d8 <CONSOLE_STATUS+0x1c8>
    80004300:	fffff097          	auipc	ra,0xfffff
    80004304:	530080e7          	jalr	1328(ra) # 80003830 <_Z11printStringPKc>
    80004308:	00000613          	li	a2,0
    8000430c:	00a00593          	li	a1,10
    80004310:	0009051b          	sext.w	a0,s2
    80004314:	fffff097          	auipc	ra,0xfffff
    80004318:	6b4080e7          	jalr	1716(ra) # 800039c8 <_Z8printIntiii>
    8000431c:	00003517          	auipc	a0,0x3
    80004320:	04c50513          	addi	a0,a0,76 # 80007368 <CONSOLE_STATUS+0x358>
    80004324:	fffff097          	auipc	ra,0xfffff
    80004328:	50c080e7          	jalr	1292(ra) # 80003830 <_Z11printStringPKc>
    8000432c:	0400006f          	j	8000436c <_Z11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004330:	00003517          	auipc	a0,0x3
    80004334:	e9050513          	addi	a0,a0,-368 # 800071c0 <CONSOLE_STATUS+0x1b0>
    80004338:	fffff097          	auipc	ra,0xfffff
    8000433c:	4f8080e7          	jalr	1272(ra) # 80003830 <_Z11printStringPKc>
    80004340:	00000613          	li	a2,0
    80004344:	00a00593          	li	a1,10
    80004348:	00048513          	mv	a0,s1
    8000434c:	fffff097          	auipc	ra,0xfffff
    80004350:	67c080e7          	jalr	1660(ra) # 800039c8 <_Z8printIntiii>
    80004354:	00003517          	auipc	a0,0x3
    80004358:	01450513          	addi	a0,a0,20 # 80007368 <CONSOLE_STATUS+0x358>
    8000435c:	fffff097          	auipc	ra,0xfffff
    80004360:	4d4080e7          	jalr	1236(ra) # 80003830 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004364:	0014849b          	addiw	s1,s1,1
    80004368:	0ff4f493          	andi	s1,s1,255
    8000436c:	00f00793          	li	a5,15
    80004370:	fc97f0e3          	bgeu	a5,s1,80004330 <_Z11workerBodyDPv+0xc8>
    }

    thread_dispatch();
    80004374:	ffffd097          	auipc	ra,0xffffd
    80004378:	fc0080e7          	jalr	-64(ra) # 80001334 <_Z15thread_dispatchv>
    printString("D finished!\n");
    8000437c:	00003517          	auipc	a0,0x3
    80004380:	e6c50513          	addi	a0,a0,-404 # 800071e8 <CONSOLE_STATUS+0x1d8>
    80004384:	fffff097          	auipc	ra,0xfffff
    80004388:	4ac080e7          	jalr	1196(ra) # 80003830 <_Z11printStringPKc>
    finishedD = true;
    8000438c:	00100793          	li	a5,1
    80004390:	00009717          	auipc	a4,0x9
    80004394:	b6f709a3          	sb	a5,-1165(a4) # 8000cf03 <finishedD>
}
    80004398:	01813083          	ld	ra,24(sp)
    8000439c:	01013403          	ld	s0,16(sp)
    800043a0:	00813483          	ld	s1,8(sp)
    800043a4:	00013903          	ld	s2,0(sp)
    800043a8:	02010113          	addi	sp,sp,32
    800043ac:	00008067          	ret

00000000800043b0 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    800043b0:	fc010113          	addi	sp,sp,-64
    800043b4:	02113c23          	sd	ra,56(sp)
    800043b8:	02813823          	sd	s0,48(sp)
    800043bc:	02913423          	sd	s1,40(sp)
    800043c0:	04010413          	addi	s0,sp,64
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800043c4:	00000613          	li	a2,0
    800043c8:	00000597          	auipc	a1,0x0
    800043cc:	b0c58593          	addi	a1,a1,-1268 # 80003ed4 <_Z11workerBodyAPv>
    800043d0:	fc040513          	addi	a0,s0,-64
    800043d4:	ffffd097          	auipc	ra,0xffffd
    800043d8:	ee0080e7          	jalr	-288(ra) # 800012b4 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    800043dc:	00003517          	auipc	a0,0x3
    800043e0:	e1c50513          	addi	a0,a0,-484 # 800071f8 <CONSOLE_STATUS+0x1e8>
    800043e4:	fffff097          	auipc	ra,0xfffff
    800043e8:	44c080e7          	jalr	1100(ra) # 80003830 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800043ec:	00000613          	li	a2,0
    800043f0:	00000597          	auipc	a1,0x0
    800043f4:	bb058593          	addi	a1,a1,-1104 # 80003fa0 <_Z11workerBodyBPv>
    800043f8:	fc840513          	addi	a0,s0,-56
    800043fc:	ffffd097          	auipc	ra,0xffffd
    80004400:	eb8080e7          	jalr	-328(ra) # 800012b4 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    80004404:	00003517          	auipc	a0,0x3
    80004408:	e0c50513          	addi	a0,a0,-500 # 80007210 <CONSOLE_STATUS+0x200>
    8000440c:	fffff097          	auipc	ra,0xfffff
    80004410:	424080e7          	jalr	1060(ra) # 80003830 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80004414:	00000613          	li	a2,0
    80004418:	00000597          	auipc	a1,0x0
    8000441c:	cd058593          	addi	a1,a1,-816 # 800040e8 <_Z11workerBodyCPv>
    80004420:	fd040513          	addi	a0,s0,-48
    80004424:	ffffd097          	auipc	ra,0xffffd
    80004428:	e90080e7          	jalr	-368(ra) # 800012b4 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    8000442c:	00003517          	auipc	a0,0x3
    80004430:	dfc50513          	addi	a0,a0,-516 # 80007228 <CONSOLE_STATUS+0x218>
    80004434:	fffff097          	auipc	ra,0xfffff
    80004438:	3fc080e7          	jalr	1020(ra) # 80003830 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    8000443c:	00000613          	li	a2,0
    80004440:	00000597          	auipc	a1,0x0
    80004444:	e2858593          	addi	a1,a1,-472 # 80004268 <_Z11workerBodyDPv>
    80004448:	fd840513          	addi	a0,s0,-40
    8000444c:	ffffd097          	auipc	ra,0xffffd
    80004450:	e68080e7          	jalr	-408(ra) # 800012b4 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80004454:	00003517          	auipc	a0,0x3
    80004458:	dec50513          	addi	a0,a0,-532 # 80007240 <CONSOLE_STATUS+0x230>
    8000445c:	fffff097          	auipc	ra,0xfffff
    80004460:	3d4080e7          	jalr	980(ra) # 80003830 <_Z11printStringPKc>
    80004464:	00c0006f          	j	80004470 <_Z18Threads_C_API_testv+0xc0>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80004468:	ffffd097          	auipc	ra,0xffffd
    8000446c:	ecc080e7          	jalr	-308(ra) # 80001334 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004470:	00009797          	auipc	a5,0x9
    80004474:	a907c783          	lbu	a5,-1392(a5) # 8000cf00 <finishedA>
    80004478:	fe0788e3          	beqz	a5,80004468 <_Z18Threads_C_API_testv+0xb8>
    8000447c:	00009797          	auipc	a5,0x9
    80004480:	a857c783          	lbu	a5,-1403(a5) # 8000cf01 <finishedB>
    80004484:	fe0782e3          	beqz	a5,80004468 <_Z18Threads_C_API_testv+0xb8>
    80004488:	00009797          	auipc	a5,0x9
    8000448c:	a7a7c783          	lbu	a5,-1414(a5) # 8000cf02 <finishedC>
    80004490:	fc078ce3          	beqz	a5,80004468 <_Z18Threads_C_API_testv+0xb8>
    80004494:	00009797          	auipc	a5,0x9
    80004498:	a6f7c783          	lbu	a5,-1425(a5) # 8000cf03 <finishedD>
    8000449c:	fc0786e3          	beqz	a5,80004468 <_Z18Threads_C_API_testv+0xb8>
    }

    for (auto &thread: threads) { delete thread; }
    800044a0:	fc040493          	addi	s1,s0,-64
    800044a4:	0080006f          	j	800044ac <_Z18Threads_C_API_testv+0xfc>
    800044a8:	00848493          	addi	s1,s1,8
    800044ac:	fe040793          	addi	a5,s0,-32
    800044b0:	00f48c63          	beq	s1,a5,800044c8 <_Z18Threads_C_API_testv+0x118>
    800044b4:	0004b503          	ld	a0,0(s1)
    800044b8:	fe0508e3          	beqz	a0,800044a8 <_Z18Threads_C_API_testv+0xf8>
    800044bc:	ffffd097          	auipc	ra,0xffffd
    800044c0:	0f4080e7          	jalr	244(ra) # 800015b0 <_ZN7_threaddlEPv>
    800044c4:	fe5ff06f          	j	800044a8 <_Z18Threads_C_API_testv+0xf8>
}
    800044c8:	03813083          	ld	ra,56(sp)
    800044cc:	03013403          	ld	s0,48(sp)
    800044d0:	02813483          	ld	s1,40(sp)
    800044d4:	04010113          	addi	sp,sp,64
    800044d8:	00008067          	ret

00000000800044dc <_Z8userMainv>:

//#include "ThreadSleep_C_API_test.hpp" // thread_sleep test C API
//#include "ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

void userMain()
{
    800044dc:	ff010113          	addi	sp,sp,-16
    800044e0:	00113423          	sd	ra,8(sp)
    800044e4:	00813023          	sd	s0,0(sp)
    800044e8:	01010413          	addi	s0,sp,16
    //__asm__ volatile("csrr a0, sstatus");
    Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    800044ec:	00000097          	auipc	ra,0x0
    800044f0:	ec4080e7          	jalr	-316(ra) # 800043b0 <_Z18Threads_C_API_testv>
    //producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega
    800044f4:	00813083          	ld	ra,8(sp)
    800044f8:	00013403          	ld	s0,0(sp)
    800044fc:	01010113          	addi	sp,sp,16
    80004500:	00008067          	ret

0000000080004504 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80004504:	fe010113          	addi	sp,sp,-32
    80004508:	00113c23          	sd	ra,24(sp)
    8000450c:	00813823          	sd	s0,16(sp)
    80004510:	00913423          	sd	s1,8(sp)
    80004514:	01213023          	sd	s2,0(sp)
    80004518:	02010413          	addi	s0,sp,32
    8000451c:	00050493          	mv	s1,a0
    80004520:	00058913          	mv	s2,a1
    80004524:	0015879b          	addiw	a5,a1,1
    80004528:	0007851b          	sext.w	a0,a5
    8000452c:	00f4a023          	sw	a5,0(s1)
    80004530:	0004a823          	sw	zero,16(s1)
    80004534:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80004538:	00251513          	slli	a0,a0,0x2
    8000453c:	ffffd097          	auipc	ra,0xffffd
    80004540:	d1c080e7          	jalr	-740(ra) # 80001258 <_Z9mem_allocm>
    80004544:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80004548:	00000593          	li	a1,0
    8000454c:	02048513          	addi	a0,s1,32
    80004550:	ffffd097          	auipc	ra,0xffffd
    80004554:	e2c080e7          	jalr	-468(ra) # 8000137c <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    80004558:	00090593          	mv	a1,s2
    8000455c:	01848513          	addi	a0,s1,24
    80004560:	ffffd097          	auipc	ra,0xffffd
    80004564:	e1c080e7          	jalr	-484(ra) # 8000137c <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    80004568:	00100593          	li	a1,1
    8000456c:	02848513          	addi	a0,s1,40
    80004570:	ffffd097          	auipc	ra,0xffffd
    80004574:	e0c080e7          	jalr	-500(ra) # 8000137c <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    80004578:	00100593          	li	a1,1
    8000457c:	03048513          	addi	a0,s1,48
    80004580:	ffffd097          	auipc	ra,0xffffd
    80004584:	dfc080e7          	jalr	-516(ra) # 8000137c <_Z8sem_openPP4_semj>
}
    80004588:	01813083          	ld	ra,24(sp)
    8000458c:	01013403          	ld	s0,16(sp)
    80004590:	00813483          	ld	s1,8(sp)
    80004594:	00013903          	ld	s2,0(sp)
    80004598:	02010113          	addi	sp,sp,32
    8000459c:	00008067          	ret

00000000800045a0 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    800045a0:	fe010113          	addi	sp,sp,-32
    800045a4:	00113c23          	sd	ra,24(sp)
    800045a8:	00813823          	sd	s0,16(sp)
    800045ac:	00913423          	sd	s1,8(sp)
    800045b0:	01213023          	sd	s2,0(sp)
    800045b4:	02010413          	addi	s0,sp,32
    800045b8:	00050493          	mv	s1,a0
    800045bc:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800045c0:	01853503          	ld	a0,24(a0)
    800045c4:	ffffd097          	auipc	ra,0xffffd
    800045c8:	e1c080e7          	jalr	-484(ra) # 800013e0 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    800045cc:	0304b503          	ld	a0,48(s1)
    800045d0:	ffffd097          	auipc	ra,0xffffd
    800045d4:	e10080e7          	jalr	-496(ra) # 800013e0 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    800045d8:	0084b783          	ld	a5,8(s1)
    800045dc:	0144a703          	lw	a4,20(s1)
    800045e0:	00271713          	slli	a4,a4,0x2
    800045e4:	00e787b3          	add	a5,a5,a4
    800045e8:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800045ec:	0144a783          	lw	a5,20(s1)
    800045f0:	0017879b          	addiw	a5,a5,1
    800045f4:	0004a703          	lw	a4,0(s1)
    800045f8:	02e7e7bb          	remw	a5,a5,a4
    800045fc:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80004600:	0304b503          	ld	a0,48(s1)
    80004604:	ffffd097          	auipc	ra,0xffffd
    80004608:	e08080e7          	jalr	-504(ra) # 8000140c <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    8000460c:	0204b503          	ld	a0,32(s1)
    80004610:	ffffd097          	auipc	ra,0xffffd
    80004614:	dfc080e7          	jalr	-516(ra) # 8000140c <_Z10sem_signalP4_sem>

}
    80004618:	01813083          	ld	ra,24(sp)
    8000461c:	01013403          	ld	s0,16(sp)
    80004620:	00813483          	ld	s1,8(sp)
    80004624:	00013903          	ld	s2,0(sp)
    80004628:	02010113          	addi	sp,sp,32
    8000462c:	00008067          	ret

0000000080004630 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80004630:	fe010113          	addi	sp,sp,-32
    80004634:	00113c23          	sd	ra,24(sp)
    80004638:	00813823          	sd	s0,16(sp)
    8000463c:	00913423          	sd	s1,8(sp)
    80004640:	01213023          	sd	s2,0(sp)
    80004644:	02010413          	addi	s0,sp,32
    80004648:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    8000464c:	02053503          	ld	a0,32(a0)
    80004650:	ffffd097          	auipc	ra,0xffffd
    80004654:	d90080e7          	jalr	-624(ra) # 800013e0 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    80004658:	0284b503          	ld	a0,40(s1)
    8000465c:	ffffd097          	auipc	ra,0xffffd
    80004660:	d84080e7          	jalr	-636(ra) # 800013e0 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    80004664:	0084b703          	ld	a4,8(s1)
    80004668:	0104a783          	lw	a5,16(s1)
    8000466c:	00279693          	slli	a3,a5,0x2
    80004670:	00d70733          	add	a4,a4,a3
    80004674:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80004678:	0017879b          	addiw	a5,a5,1
    8000467c:	0004a703          	lw	a4,0(s1)
    80004680:	02e7e7bb          	remw	a5,a5,a4
    80004684:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80004688:	0284b503          	ld	a0,40(s1)
    8000468c:	ffffd097          	auipc	ra,0xffffd
    80004690:	d80080e7          	jalr	-640(ra) # 8000140c <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    80004694:	0184b503          	ld	a0,24(s1)
    80004698:	ffffd097          	auipc	ra,0xffffd
    8000469c:	d74080e7          	jalr	-652(ra) # 8000140c <_Z10sem_signalP4_sem>

    return ret;
}
    800046a0:	00090513          	mv	a0,s2
    800046a4:	01813083          	ld	ra,24(sp)
    800046a8:	01013403          	ld	s0,16(sp)
    800046ac:	00813483          	ld	s1,8(sp)
    800046b0:	00013903          	ld	s2,0(sp)
    800046b4:	02010113          	addi	sp,sp,32
    800046b8:	00008067          	ret

00000000800046bc <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    800046bc:	fe010113          	addi	sp,sp,-32
    800046c0:	00113c23          	sd	ra,24(sp)
    800046c4:	00813823          	sd	s0,16(sp)
    800046c8:	00913423          	sd	s1,8(sp)
    800046cc:	01213023          	sd	s2,0(sp)
    800046d0:	02010413          	addi	s0,sp,32
    800046d4:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    800046d8:	02853503          	ld	a0,40(a0)
    800046dc:	ffffd097          	auipc	ra,0xffffd
    800046e0:	d04080e7          	jalr	-764(ra) # 800013e0 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    800046e4:	0304b503          	ld	a0,48(s1)
    800046e8:	ffffd097          	auipc	ra,0xffffd
    800046ec:	cf8080e7          	jalr	-776(ra) # 800013e0 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    800046f0:	0144a783          	lw	a5,20(s1)
    800046f4:	0104a903          	lw	s2,16(s1)
    800046f8:	0327ce63          	blt	a5,s2,80004734 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    800046fc:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80004700:	0304b503          	ld	a0,48(s1)
    80004704:	ffffd097          	auipc	ra,0xffffd
    80004708:	d08080e7          	jalr	-760(ra) # 8000140c <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    8000470c:	0284b503          	ld	a0,40(s1)
    80004710:	ffffd097          	auipc	ra,0xffffd
    80004714:	cfc080e7          	jalr	-772(ra) # 8000140c <_Z10sem_signalP4_sem>

    return ret;
    80004718:	00090513          	mv	a0,s2
    8000471c:	01813083          	ld	ra,24(sp)
    80004720:	01013403          	ld	s0,16(sp)
    80004724:	00813483          	ld	s1,8(sp)
    80004728:	00013903          	ld	s2,0(sp)
    8000472c:	02010113          	addi	sp,sp,32
    80004730:	00008067          	ret
        ret = cap - head + tail;
    80004734:	0004a703          	lw	a4,0(s1)
    80004738:	4127093b          	subw	s2,a4,s2
    8000473c:	00f9093b          	addw	s2,s2,a5
    80004740:	fc1ff06f          	j	80004700 <_ZN6Buffer6getCntEv+0x44>

0000000080004744 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80004744:	fe010113          	addi	sp,sp,-32
    80004748:	00113c23          	sd	ra,24(sp)
    8000474c:	00813823          	sd	s0,16(sp)
    80004750:	00913423          	sd	s1,8(sp)
    80004754:	02010413          	addi	s0,sp,32
    80004758:	00050493          	mv	s1,a0
    putc('\n');
    8000475c:	00a00513          	li	a0,10
    80004760:	ffffd097          	auipc	ra,0xffffd
    80004764:	dd8080e7          	jalr	-552(ra) # 80001538 <_Z4putcc>
    printString("Buffer deleted!\n");
    80004768:	00003517          	auipc	a0,0x3
    8000476c:	9e050513          	addi	a0,a0,-1568 # 80007148 <CONSOLE_STATUS+0x138>
    80004770:	fffff097          	auipc	ra,0xfffff
    80004774:	0c0080e7          	jalr	192(ra) # 80003830 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80004778:	00048513          	mv	a0,s1
    8000477c:	00000097          	auipc	ra,0x0
    80004780:	f40080e7          	jalr	-192(ra) # 800046bc <_ZN6Buffer6getCntEv>
    80004784:	02a05c63          	blez	a0,800047bc <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80004788:	0084b783          	ld	a5,8(s1)
    8000478c:	0104a703          	lw	a4,16(s1)
    80004790:	00271713          	slli	a4,a4,0x2
    80004794:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80004798:	0007c503          	lbu	a0,0(a5)
    8000479c:	ffffd097          	auipc	ra,0xffffd
    800047a0:	d9c080e7          	jalr	-612(ra) # 80001538 <_Z4putcc>
        head = (head + 1) % cap;
    800047a4:	0104a783          	lw	a5,16(s1)
    800047a8:	0017879b          	addiw	a5,a5,1
    800047ac:	0004a703          	lw	a4,0(s1)
    800047b0:	02e7e7bb          	remw	a5,a5,a4
    800047b4:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    800047b8:	fc1ff06f          	j	80004778 <_ZN6BufferD1Ev+0x34>
    putc('!');
    800047bc:	02100513          	li	a0,33
    800047c0:	ffffd097          	auipc	ra,0xffffd
    800047c4:	d78080e7          	jalr	-648(ra) # 80001538 <_Z4putcc>
    putc('\n');
    800047c8:	00a00513          	li	a0,10
    800047cc:	ffffd097          	auipc	ra,0xffffd
    800047d0:	d6c080e7          	jalr	-660(ra) # 80001538 <_Z4putcc>
    mem_free(buffer);
    800047d4:	0084b503          	ld	a0,8(s1)
    800047d8:	ffffd097          	auipc	ra,0xffffd
    800047dc:	ab0080e7          	jalr	-1360(ra) # 80001288 <_Z8mem_freePv>
    sem_close(itemAvailable);
    800047e0:	0204b503          	ld	a0,32(s1)
    800047e4:	ffffd097          	auipc	ra,0xffffd
    800047e8:	bd0080e7          	jalr	-1072(ra) # 800013b4 <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    800047ec:	0184b503          	ld	a0,24(s1)
    800047f0:	ffffd097          	auipc	ra,0xffffd
    800047f4:	bc4080e7          	jalr	-1084(ra) # 800013b4 <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    800047f8:	0304b503          	ld	a0,48(s1)
    800047fc:	ffffd097          	auipc	ra,0xffffd
    80004800:	bb8080e7          	jalr	-1096(ra) # 800013b4 <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    80004804:	0284b503          	ld	a0,40(s1)
    80004808:	ffffd097          	auipc	ra,0xffffd
    8000480c:	bac080e7          	jalr	-1108(ra) # 800013b4 <_Z9sem_closeP4_sem>
}
    80004810:	01813083          	ld	ra,24(sp)
    80004814:	01013403          	ld	s0,16(sp)
    80004818:	00813483          	ld	s1,8(sp)
    8000481c:	02010113          	addi	sp,sp,32
    80004820:	00008067          	ret

0000000080004824 <start>:
    80004824:	ff010113          	addi	sp,sp,-16
    80004828:	00813423          	sd	s0,8(sp)
    8000482c:	01010413          	addi	s0,sp,16
    80004830:	300027f3          	csrr	a5,mstatus
    80004834:	ffffe737          	lui	a4,0xffffe
    80004838:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff068f>
    8000483c:	00e7f7b3          	and	a5,a5,a4
    80004840:	00001737          	lui	a4,0x1
    80004844:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80004848:	00e7e7b3          	or	a5,a5,a4
    8000484c:	30079073          	csrw	mstatus,a5
    80004850:	00000797          	auipc	a5,0x0
    80004854:	16078793          	addi	a5,a5,352 # 800049b0 <system_main>
    80004858:	34179073          	csrw	mepc,a5
    8000485c:	00000793          	li	a5,0
    80004860:	18079073          	csrw	satp,a5
    80004864:	000107b7          	lui	a5,0x10
    80004868:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000486c:	30279073          	csrw	medeleg,a5
    80004870:	30379073          	csrw	mideleg,a5
    80004874:	104027f3          	csrr	a5,sie
    80004878:	2227e793          	ori	a5,a5,546
    8000487c:	10479073          	csrw	sie,a5
    80004880:	fff00793          	li	a5,-1
    80004884:	00a7d793          	srli	a5,a5,0xa
    80004888:	3b079073          	csrw	pmpaddr0,a5
    8000488c:	00f00793          	li	a5,15
    80004890:	3a079073          	csrw	pmpcfg0,a5
    80004894:	f14027f3          	csrr	a5,mhartid
    80004898:	0200c737          	lui	a4,0x200c
    8000489c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800048a0:	0007869b          	sext.w	a3,a5
    800048a4:	00269713          	slli	a4,a3,0x2
    800048a8:	000f4637          	lui	a2,0xf4
    800048ac:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800048b0:	00d70733          	add	a4,a4,a3
    800048b4:	0037979b          	slliw	a5,a5,0x3
    800048b8:	020046b7          	lui	a3,0x2004
    800048bc:	00d787b3          	add	a5,a5,a3
    800048c0:	00c585b3          	add	a1,a1,a2
    800048c4:	00371693          	slli	a3,a4,0x3
    800048c8:	00008717          	auipc	a4,0x8
    800048cc:	64870713          	addi	a4,a4,1608 # 8000cf10 <timer_scratch>
    800048d0:	00b7b023          	sd	a1,0(a5)
    800048d4:	00d70733          	add	a4,a4,a3
    800048d8:	00f73c23          	sd	a5,24(a4)
    800048dc:	02c73023          	sd	a2,32(a4)
    800048e0:	34071073          	csrw	mscratch,a4
    800048e4:	00000797          	auipc	a5,0x0
    800048e8:	6ec78793          	addi	a5,a5,1772 # 80004fd0 <timervec>
    800048ec:	30579073          	csrw	mtvec,a5
    800048f0:	300027f3          	csrr	a5,mstatus
    800048f4:	0087e793          	ori	a5,a5,8
    800048f8:	30079073          	csrw	mstatus,a5
    800048fc:	304027f3          	csrr	a5,mie
    80004900:	0807e793          	ori	a5,a5,128
    80004904:	30479073          	csrw	mie,a5
    80004908:	f14027f3          	csrr	a5,mhartid
    8000490c:	0007879b          	sext.w	a5,a5
    80004910:	00078213          	mv	tp,a5
    80004914:	30200073          	mret
    80004918:	00813403          	ld	s0,8(sp)
    8000491c:	01010113          	addi	sp,sp,16
    80004920:	00008067          	ret

0000000080004924 <timerinit>:
    80004924:	ff010113          	addi	sp,sp,-16
    80004928:	00813423          	sd	s0,8(sp)
    8000492c:	01010413          	addi	s0,sp,16
    80004930:	f14027f3          	csrr	a5,mhartid
    80004934:	0200c737          	lui	a4,0x200c
    80004938:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000493c:	0007869b          	sext.w	a3,a5
    80004940:	00269713          	slli	a4,a3,0x2
    80004944:	000f4637          	lui	a2,0xf4
    80004948:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000494c:	00d70733          	add	a4,a4,a3
    80004950:	0037979b          	slliw	a5,a5,0x3
    80004954:	020046b7          	lui	a3,0x2004
    80004958:	00d787b3          	add	a5,a5,a3
    8000495c:	00c585b3          	add	a1,a1,a2
    80004960:	00371693          	slli	a3,a4,0x3
    80004964:	00008717          	auipc	a4,0x8
    80004968:	5ac70713          	addi	a4,a4,1452 # 8000cf10 <timer_scratch>
    8000496c:	00b7b023          	sd	a1,0(a5)
    80004970:	00d70733          	add	a4,a4,a3
    80004974:	00f73c23          	sd	a5,24(a4)
    80004978:	02c73023          	sd	a2,32(a4)
    8000497c:	34071073          	csrw	mscratch,a4
    80004980:	00000797          	auipc	a5,0x0
    80004984:	65078793          	addi	a5,a5,1616 # 80004fd0 <timervec>
    80004988:	30579073          	csrw	mtvec,a5
    8000498c:	300027f3          	csrr	a5,mstatus
    80004990:	0087e793          	ori	a5,a5,8
    80004994:	30079073          	csrw	mstatus,a5
    80004998:	304027f3          	csrr	a5,mie
    8000499c:	0807e793          	ori	a5,a5,128
    800049a0:	30479073          	csrw	mie,a5
    800049a4:	00813403          	ld	s0,8(sp)
    800049a8:	01010113          	addi	sp,sp,16
    800049ac:	00008067          	ret

00000000800049b0 <system_main>:
    800049b0:	fe010113          	addi	sp,sp,-32
    800049b4:	00813823          	sd	s0,16(sp)
    800049b8:	00913423          	sd	s1,8(sp)
    800049bc:	00113c23          	sd	ra,24(sp)
    800049c0:	02010413          	addi	s0,sp,32
    800049c4:	00000097          	auipc	ra,0x0
    800049c8:	0c4080e7          	jalr	196(ra) # 80004a88 <cpuid>
    800049cc:	00004497          	auipc	s1,0x4
    800049d0:	45448493          	addi	s1,s1,1108 # 80008e20 <started>
    800049d4:	02050263          	beqz	a0,800049f8 <system_main+0x48>
    800049d8:	0004a783          	lw	a5,0(s1)
    800049dc:	0007879b          	sext.w	a5,a5
    800049e0:	fe078ce3          	beqz	a5,800049d8 <system_main+0x28>
    800049e4:	0ff0000f          	fence
    800049e8:	00003517          	auipc	a0,0x3
    800049ec:	8a050513          	addi	a0,a0,-1888 # 80007288 <CONSOLE_STATUS+0x278>
    800049f0:	00001097          	auipc	ra,0x1
    800049f4:	a7c080e7          	jalr	-1412(ra) # 8000546c <panic>
    800049f8:	00001097          	auipc	ra,0x1
    800049fc:	9d0080e7          	jalr	-1584(ra) # 800053c8 <consoleinit>
    80004a00:	00001097          	auipc	ra,0x1
    80004a04:	15c080e7          	jalr	348(ra) # 80005b5c <printfinit>
    80004a08:	00003517          	auipc	a0,0x3
    80004a0c:	96050513          	addi	a0,a0,-1696 # 80007368 <CONSOLE_STATUS+0x358>
    80004a10:	00001097          	auipc	ra,0x1
    80004a14:	ab8080e7          	jalr	-1352(ra) # 800054c8 <__printf>
    80004a18:	00003517          	auipc	a0,0x3
    80004a1c:	84050513          	addi	a0,a0,-1984 # 80007258 <CONSOLE_STATUS+0x248>
    80004a20:	00001097          	auipc	ra,0x1
    80004a24:	aa8080e7          	jalr	-1368(ra) # 800054c8 <__printf>
    80004a28:	00003517          	auipc	a0,0x3
    80004a2c:	94050513          	addi	a0,a0,-1728 # 80007368 <CONSOLE_STATUS+0x358>
    80004a30:	00001097          	auipc	ra,0x1
    80004a34:	a98080e7          	jalr	-1384(ra) # 800054c8 <__printf>
    80004a38:	00001097          	auipc	ra,0x1
    80004a3c:	4b0080e7          	jalr	1200(ra) # 80005ee8 <kinit>
    80004a40:	00000097          	auipc	ra,0x0
    80004a44:	148080e7          	jalr	328(ra) # 80004b88 <trapinit>
    80004a48:	00000097          	auipc	ra,0x0
    80004a4c:	16c080e7          	jalr	364(ra) # 80004bb4 <trapinithart>
    80004a50:	00000097          	auipc	ra,0x0
    80004a54:	5c0080e7          	jalr	1472(ra) # 80005010 <plicinit>
    80004a58:	00000097          	auipc	ra,0x0
    80004a5c:	5e0080e7          	jalr	1504(ra) # 80005038 <plicinithart>
    80004a60:	00000097          	auipc	ra,0x0
    80004a64:	078080e7          	jalr	120(ra) # 80004ad8 <userinit>
    80004a68:	0ff0000f          	fence
    80004a6c:	00100793          	li	a5,1
    80004a70:	00003517          	auipc	a0,0x3
    80004a74:	80050513          	addi	a0,a0,-2048 # 80007270 <CONSOLE_STATUS+0x260>
    80004a78:	00f4a023          	sw	a5,0(s1)
    80004a7c:	00001097          	auipc	ra,0x1
    80004a80:	a4c080e7          	jalr	-1460(ra) # 800054c8 <__printf>
    80004a84:	0000006f          	j	80004a84 <system_main+0xd4>

0000000080004a88 <cpuid>:
    80004a88:	ff010113          	addi	sp,sp,-16
    80004a8c:	00813423          	sd	s0,8(sp)
    80004a90:	01010413          	addi	s0,sp,16
    80004a94:	00020513          	mv	a0,tp
    80004a98:	00813403          	ld	s0,8(sp)
    80004a9c:	0005051b          	sext.w	a0,a0
    80004aa0:	01010113          	addi	sp,sp,16
    80004aa4:	00008067          	ret

0000000080004aa8 <mycpu>:
    80004aa8:	ff010113          	addi	sp,sp,-16
    80004aac:	00813423          	sd	s0,8(sp)
    80004ab0:	01010413          	addi	s0,sp,16
    80004ab4:	00020793          	mv	a5,tp
    80004ab8:	00813403          	ld	s0,8(sp)
    80004abc:	0007879b          	sext.w	a5,a5
    80004ac0:	00779793          	slli	a5,a5,0x7
    80004ac4:	00009517          	auipc	a0,0x9
    80004ac8:	47c50513          	addi	a0,a0,1148 # 8000df40 <cpus>
    80004acc:	00f50533          	add	a0,a0,a5
    80004ad0:	01010113          	addi	sp,sp,16
    80004ad4:	00008067          	ret

0000000080004ad8 <userinit>:
    80004ad8:	ff010113          	addi	sp,sp,-16
    80004adc:	00813423          	sd	s0,8(sp)
    80004ae0:	01010413          	addi	s0,sp,16
    80004ae4:	00813403          	ld	s0,8(sp)
    80004ae8:	01010113          	addi	sp,sp,16
    80004aec:	ffffe317          	auipc	t1,0xffffe
    80004af0:	95030067          	jr	-1712(t1) # 8000243c <main>

0000000080004af4 <either_copyout>:
    80004af4:	ff010113          	addi	sp,sp,-16
    80004af8:	00813023          	sd	s0,0(sp)
    80004afc:	00113423          	sd	ra,8(sp)
    80004b00:	01010413          	addi	s0,sp,16
    80004b04:	02051663          	bnez	a0,80004b30 <either_copyout+0x3c>
    80004b08:	00058513          	mv	a0,a1
    80004b0c:	00060593          	mv	a1,a2
    80004b10:	0006861b          	sext.w	a2,a3
    80004b14:	00002097          	auipc	ra,0x2
    80004b18:	c60080e7          	jalr	-928(ra) # 80006774 <__memmove>
    80004b1c:	00813083          	ld	ra,8(sp)
    80004b20:	00013403          	ld	s0,0(sp)
    80004b24:	00000513          	li	a0,0
    80004b28:	01010113          	addi	sp,sp,16
    80004b2c:	00008067          	ret
    80004b30:	00002517          	auipc	a0,0x2
    80004b34:	78050513          	addi	a0,a0,1920 # 800072b0 <CONSOLE_STATUS+0x2a0>
    80004b38:	00001097          	auipc	ra,0x1
    80004b3c:	934080e7          	jalr	-1740(ra) # 8000546c <panic>

0000000080004b40 <either_copyin>:
    80004b40:	ff010113          	addi	sp,sp,-16
    80004b44:	00813023          	sd	s0,0(sp)
    80004b48:	00113423          	sd	ra,8(sp)
    80004b4c:	01010413          	addi	s0,sp,16
    80004b50:	02059463          	bnez	a1,80004b78 <either_copyin+0x38>
    80004b54:	00060593          	mv	a1,a2
    80004b58:	0006861b          	sext.w	a2,a3
    80004b5c:	00002097          	auipc	ra,0x2
    80004b60:	c18080e7          	jalr	-1000(ra) # 80006774 <__memmove>
    80004b64:	00813083          	ld	ra,8(sp)
    80004b68:	00013403          	ld	s0,0(sp)
    80004b6c:	00000513          	li	a0,0
    80004b70:	01010113          	addi	sp,sp,16
    80004b74:	00008067          	ret
    80004b78:	00002517          	auipc	a0,0x2
    80004b7c:	76050513          	addi	a0,a0,1888 # 800072d8 <CONSOLE_STATUS+0x2c8>
    80004b80:	00001097          	auipc	ra,0x1
    80004b84:	8ec080e7          	jalr	-1812(ra) # 8000546c <panic>

0000000080004b88 <trapinit>:
    80004b88:	ff010113          	addi	sp,sp,-16
    80004b8c:	00813423          	sd	s0,8(sp)
    80004b90:	01010413          	addi	s0,sp,16
    80004b94:	00813403          	ld	s0,8(sp)
    80004b98:	00002597          	auipc	a1,0x2
    80004b9c:	76858593          	addi	a1,a1,1896 # 80007300 <CONSOLE_STATUS+0x2f0>
    80004ba0:	00009517          	auipc	a0,0x9
    80004ba4:	42050513          	addi	a0,a0,1056 # 8000dfc0 <tickslock>
    80004ba8:	01010113          	addi	sp,sp,16
    80004bac:	00001317          	auipc	t1,0x1
    80004bb0:	5cc30067          	jr	1484(t1) # 80006178 <initlock>

0000000080004bb4 <trapinithart>:
    80004bb4:	ff010113          	addi	sp,sp,-16
    80004bb8:	00813423          	sd	s0,8(sp)
    80004bbc:	01010413          	addi	s0,sp,16
    80004bc0:	00000797          	auipc	a5,0x0
    80004bc4:	30078793          	addi	a5,a5,768 # 80004ec0 <kernelvec>
    80004bc8:	10579073          	csrw	stvec,a5
    80004bcc:	00813403          	ld	s0,8(sp)
    80004bd0:	01010113          	addi	sp,sp,16
    80004bd4:	00008067          	ret

0000000080004bd8 <usertrap>:
    80004bd8:	ff010113          	addi	sp,sp,-16
    80004bdc:	00813423          	sd	s0,8(sp)
    80004be0:	01010413          	addi	s0,sp,16
    80004be4:	00813403          	ld	s0,8(sp)
    80004be8:	01010113          	addi	sp,sp,16
    80004bec:	00008067          	ret

0000000080004bf0 <usertrapret>:
    80004bf0:	ff010113          	addi	sp,sp,-16
    80004bf4:	00813423          	sd	s0,8(sp)
    80004bf8:	01010413          	addi	s0,sp,16
    80004bfc:	00813403          	ld	s0,8(sp)
    80004c00:	01010113          	addi	sp,sp,16
    80004c04:	00008067          	ret

0000000080004c08 <kerneltrap>:
    80004c08:	fe010113          	addi	sp,sp,-32
    80004c0c:	00813823          	sd	s0,16(sp)
    80004c10:	00113c23          	sd	ra,24(sp)
    80004c14:	00913423          	sd	s1,8(sp)
    80004c18:	02010413          	addi	s0,sp,32
    80004c1c:	142025f3          	csrr	a1,scause
    80004c20:	100027f3          	csrr	a5,sstatus
    80004c24:	0027f793          	andi	a5,a5,2
    80004c28:	10079c63          	bnez	a5,80004d40 <kerneltrap+0x138>
    80004c2c:	142027f3          	csrr	a5,scause
    80004c30:	0207ce63          	bltz	a5,80004c6c <kerneltrap+0x64>
    80004c34:	00002517          	auipc	a0,0x2
    80004c38:	71450513          	addi	a0,a0,1812 # 80007348 <CONSOLE_STATUS+0x338>
    80004c3c:	00001097          	auipc	ra,0x1
    80004c40:	88c080e7          	jalr	-1908(ra) # 800054c8 <__printf>
    80004c44:	141025f3          	csrr	a1,sepc
    80004c48:	14302673          	csrr	a2,stval
    80004c4c:	00002517          	auipc	a0,0x2
    80004c50:	70c50513          	addi	a0,a0,1804 # 80007358 <CONSOLE_STATUS+0x348>
    80004c54:	00001097          	auipc	ra,0x1
    80004c58:	874080e7          	jalr	-1932(ra) # 800054c8 <__printf>
    80004c5c:	00002517          	auipc	a0,0x2
    80004c60:	71450513          	addi	a0,a0,1812 # 80007370 <CONSOLE_STATUS+0x360>
    80004c64:	00001097          	auipc	ra,0x1
    80004c68:	808080e7          	jalr	-2040(ra) # 8000546c <panic>
    80004c6c:	0ff7f713          	andi	a4,a5,255
    80004c70:	00900693          	li	a3,9
    80004c74:	04d70063          	beq	a4,a3,80004cb4 <kerneltrap+0xac>
    80004c78:	fff00713          	li	a4,-1
    80004c7c:	03f71713          	slli	a4,a4,0x3f
    80004c80:	00170713          	addi	a4,a4,1
    80004c84:	fae798e3          	bne	a5,a4,80004c34 <kerneltrap+0x2c>
    80004c88:	00000097          	auipc	ra,0x0
    80004c8c:	e00080e7          	jalr	-512(ra) # 80004a88 <cpuid>
    80004c90:	06050663          	beqz	a0,80004cfc <kerneltrap+0xf4>
    80004c94:	144027f3          	csrr	a5,sip
    80004c98:	ffd7f793          	andi	a5,a5,-3
    80004c9c:	14479073          	csrw	sip,a5
    80004ca0:	01813083          	ld	ra,24(sp)
    80004ca4:	01013403          	ld	s0,16(sp)
    80004ca8:	00813483          	ld	s1,8(sp)
    80004cac:	02010113          	addi	sp,sp,32
    80004cb0:	00008067          	ret
    80004cb4:	00000097          	auipc	ra,0x0
    80004cb8:	3d0080e7          	jalr	976(ra) # 80005084 <plic_claim>
    80004cbc:	00a00793          	li	a5,10
    80004cc0:	00050493          	mv	s1,a0
    80004cc4:	06f50863          	beq	a0,a5,80004d34 <kerneltrap+0x12c>
    80004cc8:	fc050ce3          	beqz	a0,80004ca0 <kerneltrap+0x98>
    80004ccc:	00050593          	mv	a1,a0
    80004cd0:	00002517          	auipc	a0,0x2
    80004cd4:	65850513          	addi	a0,a0,1624 # 80007328 <CONSOLE_STATUS+0x318>
    80004cd8:	00000097          	auipc	ra,0x0
    80004cdc:	7f0080e7          	jalr	2032(ra) # 800054c8 <__printf>
    80004ce0:	01013403          	ld	s0,16(sp)
    80004ce4:	01813083          	ld	ra,24(sp)
    80004ce8:	00048513          	mv	a0,s1
    80004cec:	00813483          	ld	s1,8(sp)
    80004cf0:	02010113          	addi	sp,sp,32
    80004cf4:	00000317          	auipc	t1,0x0
    80004cf8:	3c830067          	jr	968(t1) # 800050bc <plic_complete>
    80004cfc:	00009517          	auipc	a0,0x9
    80004d00:	2c450513          	addi	a0,a0,708 # 8000dfc0 <tickslock>
    80004d04:	00001097          	auipc	ra,0x1
    80004d08:	498080e7          	jalr	1176(ra) # 8000619c <acquire>
    80004d0c:	00004717          	auipc	a4,0x4
    80004d10:	11870713          	addi	a4,a4,280 # 80008e24 <ticks>
    80004d14:	00072783          	lw	a5,0(a4)
    80004d18:	00009517          	auipc	a0,0x9
    80004d1c:	2a850513          	addi	a0,a0,680 # 8000dfc0 <tickslock>
    80004d20:	0017879b          	addiw	a5,a5,1
    80004d24:	00f72023          	sw	a5,0(a4)
    80004d28:	00001097          	auipc	ra,0x1
    80004d2c:	540080e7          	jalr	1344(ra) # 80006268 <release>
    80004d30:	f65ff06f          	j	80004c94 <kerneltrap+0x8c>
    80004d34:	00001097          	auipc	ra,0x1
    80004d38:	09c080e7          	jalr	156(ra) # 80005dd0 <uartintr>
    80004d3c:	fa5ff06f          	j	80004ce0 <kerneltrap+0xd8>
    80004d40:	00002517          	auipc	a0,0x2
    80004d44:	5c850513          	addi	a0,a0,1480 # 80007308 <CONSOLE_STATUS+0x2f8>
    80004d48:	00000097          	auipc	ra,0x0
    80004d4c:	724080e7          	jalr	1828(ra) # 8000546c <panic>

0000000080004d50 <clockintr>:
    80004d50:	fe010113          	addi	sp,sp,-32
    80004d54:	00813823          	sd	s0,16(sp)
    80004d58:	00913423          	sd	s1,8(sp)
    80004d5c:	00113c23          	sd	ra,24(sp)
    80004d60:	02010413          	addi	s0,sp,32
    80004d64:	00009497          	auipc	s1,0x9
    80004d68:	25c48493          	addi	s1,s1,604 # 8000dfc0 <tickslock>
    80004d6c:	00048513          	mv	a0,s1
    80004d70:	00001097          	auipc	ra,0x1
    80004d74:	42c080e7          	jalr	1068(ra) # 8000619c <acquire>
    80004d78:	00004717          	auipc	a4,0x4
    80004d7c:	0ac70713          	addi	a4,a4,172 # 80008e24 <ticks>
    80004d80:	00072783          	lw	a5,0(a4)
    80004d84:	01013403          	ld	s0,16(sp)
    80004d88:	01813083          	ld	ra,24(sp)
    80004d8c:	00048513          	mv	a0,s1
    80004d90:	0017879b          	addiw	a5,a5,1
    80004d94:	00813483          	ld	s1,8(sp)
    80004d98:	00f72023          	sw	a5,0(a4)
    80004d9c:	02010113          	addi	sp,sp,32
    80004da0:	00001317          	auipc	t1,0x1
    80004da4:	4c830067          	jr	1224(t1) # 80006268 <release>

0000000080004da8 <devintr>:
    80004da8:	142027f3          	csrr	a5,scause
    80004dac:	00000513          	li	a0,0
    80004db0:	0007c463          	bltz	a5,80004db8 <devintr+0x10>
    80004db4:	00008067          	ret
    80004db8:	fe010113          	addi	sp,sp,-32
    80004dbc:	00813823          	sd	s0,16(sp)
    80004dc0:	00113c23          	sd	ra,24(sp)
    80004dc4:	00913423          	sd	s1,8(sp)
    80004dc8:	02010413          	addi	s0,sp,32
    80004dcc:	0ff7f713          	andi	a4,a5,255
    80004dd0:	00900693          	li	a3,9
    80004dd4:	04d70c63          	beq	a4,a3,80004e2c <devintr+0x84>
    80004dd8:	fff00713          	li	a4,-1
    80004ddc:	03f71713          	slli	a4,a4,0x3f
    80004de0:	00170713          	addi	a4,a4,1
    80004de4:	00e78c63          	beq	a5,a4,80004dfc <devintr+0x54>
    80004de8:	01813083          	ld	ra,24(sp)
    80004dec:	01013403          	ld	s0,16(sp)
    80004df0:	00813483          	ld	s1,8(sp)
    80004df4:	02010113          	addi	sp,sp,32
    80004df8:	00008067          	ret
    80004dfc:	00000097          	auipc	ra,0x0
    80004e00:	c8c080e7          	jalr	-884(ra) # 80004a88 <cpuid>
    80004e04:	06050663          	beqz	a0,80004e70 <devintr+0xc8>
    80004e08:	144027f3          	csrr	a5,sip
    80004e0c:	ffd7f793          	andi	a5,a5,-3
    80004e10:	14479073          	csrw	sip,a5
    80004e14:	01813083          	ld	ra,24(sp)
    80004e18:	01013403          	ld	s0,16(sp)
    80004e1c:	00813483          	ld	s1,8(sp)
    80004e20:	00200513          	li	a0,2
    80004e24:	02010113          	addi	sp,sp,32
    80004e28:	00008067          	ret
    80004e2c:	00000097          	auipc	ra,0x0
    80004e30:	258080e7          	jalr	600(ra) # 80005084 <plic_claim>
    80004e34:	00a00793          	li	a5,10
    80004e38:	00050493          	mv	s1,a0
    80004e3c:	06f50663          	beq	a0,a5,80004ea8 <devintr+0x100>
    80004e40:	00100513          	li	a0,1
    80004e44:	fa0482e3          	beqz	s1,80004de8 <devintr+0x40>
    80004e48:	00048593          	mv	a1,s1
    80004e4c:	00002517          	auipc	a0,0x2
    80004e50:	4dc50513          	addi	a0,a0,1244 # 80007328 <CONSOLE_STATUS+0x318>
    80004e54:	00000097          	auipc	ra,0x0
    80004e58:	674080e7          	jalr	1652(ra) # 800054c8 <__printf>
    80004e5c:	00048513          	mv	a0,s1
    80004e60:	00000097          	auipc	ra,0x0
    80004e64:	25c080e7          	jalr	604(ra) # 800050bc <plic_complete>
    80004e68:	00100513          	li	a0,1
    80004e6c:	f7dff06f          	j	80004de8 <devintr+0x40>
    80004e70:	00009517          	auipc	a0,0x9
    80004e74:	15050513          	addi	a0,a0,336 # 8000dfc0 <tickslock>
    80004e78:	00001097          	auipc	ra,0x1
    80004e7c:	324080e7          	jalr	804(ra) # 8000619c <acquire>
    80004e80:	00004717          	auipc	a4,0x4
    80004e84:	fa470713          	addi	a4,a4,-92 # 80008e24 <ticks>
    80004e88:	00072783          	lw	a5,0(a4)
    80004e8c:	00009517          	auipc	a0,0x9
    80004e90:	13450513          	addi	a0,a0,308 # 8000dfc0 <tickslock>
    80004e94:	0017879b          	addiw	a5,a5,1
    80004e98:	00f72023          	sw	a5,0(a4)
    80004e9c:	00001097          	auipc	ra,0x1
    80004ea0:	3cc080e7          	jalr	972(ra) # 80006268 <release>
    80004ea4:	f65ff06f          	j	80004e08 <devintr+0x60>
    80004ea8:	00001097          	auipc	ra,0x1
    80004eac:	f28080e7          	jalr	-216(ra) # 80005dd0 <uartintr>
    80004eb0:	fadff06f          	j	80004e5c <devintr+0xb4>
	...

0000000080004ec0 <kernelvec>:
    80004ec0:	f0010113          	addi	sp,sp,-256
    80004ec4:	00113023          	sd	ra,0(sp)
    80004ec8:	00213423          	sd	sp,8(sp)
    80004ecc:	00313823          	sd	gp,16(sp)
    80004ed0:	00413c23          	sd	tp,24(sp)
    80004ed4:	02513023          	sd	t0,32(sp)
    80004ed8:	02613423          	sd	t1,40(sp)
    80004edc:	02713823          	sd	t2,48(sp)
    80004ee0:	02813c23          	sd	s0,56(sp)
    80004ee4:	04913023          	sd	s1,64(sp)
    80004ee8:	04a13423          	sd	a0,72(sp)
    80004eec:	04b13823          	sd	a1,80(sp)
    80004ef0:	04c13c23          	sd	a2,88(sp)
    80004ef4:	06d13023          	sd	a3,96(sp)
    80004ef8:	06e13423          	sd	a4,104(sp)
    80004efc:	06f13823          	sd	a5,112(sp)
    80004f00:	07013c23          	sd	a6,120(sp)
    80004f04:	09113023          	sd	a7,128(sp)
    80004f08:	09213423          	sd	s2,136(sp)
    80004f0c:	09313823          	sd	s3,144(sp)
    80004f10:	09413c23          	sd	s4,152(sp)
    80004f14:	0b513023          	sd	s5,160(sp)
    80004f18:	0b613423          	sd	s6,168(sp)
    80004f1c:	0b713823          	sd	s7,176(sp)
    80004f20:	0b813c23          	sd	s8,184(sp)
    80004f24:	0d913023          	sd	s9,192(sp)
    80004f28:	0da13423          	sd	s10,200(sp)
    80004f2c:	0db13823          	sd	s11,208(sp)
    80004f30:	0dc13c23          	sd	t3,216(sp)
    80004f34:	0fd13023          	sd	t4,224(sp)
    80004f38:	0fe13423          	sd	t5,232(sp)
    80004f3c:	0ff13823          	sd	t6,240(sp)
    80004f40:	cc9ff0ef          	jal	ra,80004c08 <kerneltrap>
    80004f44:	00013083          	ld	ra,0(sp)
    80004f48:	00813103          	ld	sp,8(sp)
    80004f4c:	01013183          	ld	gp,16(sp)
    80004f50:	02013283          	ld	t0,32(sp)
    80004f54:	02813303          	ld	t1,40(sp)
    80004f58:	03013383          	ld	t2,48(sp)
    80004f5c:	03813403          	ld	s0,56(sp)
    80004f60:	04013483          	ld	s1,64(sp)
    80004f64:	04813503          	ld	a0,72(sp)
    80004f68:	05013583          	ld	a1,80(sp)
    80004f6c:	05813603          	ld	a2,88(sp)
    80004f70:	06013683          	ld	a3,96(sp)
    80004f74:	06813703          	ld	a4,104(sp)
    80004f78:	07013783          	ld	a5,112(sp)
    80004f7c:	07813803          	ld	a6,120(sp)
    80004f80:	08013883          	ld	a7,128(sp)
    80004f84:	08813903          	ld	s2,136(sp)
    80004f88:	09013983          	ld	s3,144(sp)
    80004f8c:	09813a03          	ld	s4,152(sp)
    80004f90:	0a013a83          	ld	s5,160(sp)
    80004f94:	0a813b03          	ld	s6,168(sp)
    80004f98:	0b013b83          	ld	s7,176(sp)
    80004f9c:	0b813c03          	ld	s8,184(sp)
    80004fa0:	0c013c83          	ld	s9,192(sp)
    80004fa4:	0c813d03          	ld	s10,200(sp)
    80004fa8:	0d013d83          	ld	s11,208(sp)
    80004fac:	0d813e03          	ld	t3,216(sp)
    80004fb0:	0e013e83          	ld	t4,224(sp)
    80004fb4:	0e813f03          	ld	t5,232(sp)
    80004fb8:	0f013f83          	ld	t6,240(sp)
    80004fbc:	10010113          	addi	sp,sp,256
    80004fc0:	10200073          	sret
    80004fc4:	00000013          	nop
    80004fc8:	00000013          	nop
    80004fcc:	00000013          	nop

0000000080004fd0 <timervec>:
    80004fd0:	34051573          	csrrw	a0,mscratch,a0
    80004fd4:	00b53023          	sd	a1,0(a0)
    80004fd8:	00c53423          	sd	a2,8(a0)
    80004fdc:	00d53823          	sd	a3,16(a0)
    80004fe0:	01853583          	ld	a1,24(a0)
    80004fe4:	02053603          	ld	a2,32(a0)
    80004fe8:	0005b683          	ld	a3,0(a1)
    80004fec:	00c686b3          	add	a3,a3,a2
    80004ff0:	00d5b023          	sd	a3,0(a1)
    80004ff4:	00200593          	li	a1,2
    80004ff8:	14459073          	csrw	sip,a1
    80004ffc:	01053683          	ld	a3,16(a0)
    80005000:	00853603          	ld	a2,8(a0)
    80005004:	00053583          	ld	a1,0(a0)
    80005008:	34051573          	csrrw	a0,mscratch,a0
    8000500c:	30200073          	mret

0000000080005010 <plicinit>:
    80005010:	ff010113          	addi	sp,sp,-16
    80005014:	00813423          	sd	s0,8(sp)
    80005018:	01010413          	addi	s0,sp,16
    8000501c:	00813403          	ld	s0,8(sp)
    80005020:	0c0007b7          	lui	a5,0xc000
    80005024:	00100713          	li	a4,1
    80005028:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000502c:	00e7a223          	sw	a4,4(a5)
    80005030:	01010113          	addi	sp,sp,16
    80005034:	00008067          	ret

0000000080005038 <plicinithart>:
    80005038:	ff010113          	addi	sp,sp,-16
    8000503c:	00813023          	sd	s0,0(sp)
    80005040:	00113423          	sd	ra,8(sp)
    80005044:	01010413          	addi	s0,sp,16
    80005048:	00000097          	auipc	ra,0x0
    8000504c:	a40080e7          	jalr	-1472(ra) # 80004a88 <cpuid>
    80005050:	0085171b          	slliw	a4,a0,0x8
    80005054:	0c0027b7          	lui	a5,0xc002
    80005058:	00e787b3          	add	a5,a5,a4
    8000505c:	40200713          	li	a4,1026
    80005060:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80005064:	00813083          	ld	ra,8(sp)
    80005068:	00013403          	ld	s0,0(sp)
    8000506c:	00d5151b          	slliw	a0,a0,0xd
    80005070:	0c2017b7          	lui	a5,0xc201
    80005074:	00a78533          	add	a0,a5,a0
    80005078:	00052023          	sw	zero,0(a0)
    8000507c:	01010113          	addi	sp,sp,16
    80005080:	00008067          	ret

0000000080005084 <plic_claim>:
    80005084:	ff010113          	addi	sp,sp,-16
    80005088:	00813023          	sd	s0,0(sp)
    8000508c:	00113423          	sd	ra,8(sp)
    80005090:	01010413          	addi	s0,sp,16
    80005094:	00000097          	auipc	ra,0x0
    80005098:	9f4080e7          	jalr	-1548(ra) # 80004a88 <cpuid>
    8000509c:	00813083          	ld	ra,8(sp)
    800050a0:	00013403          	ld	s0,0(sp)
    800050a4:	00d5151b          	slliw	a0,a0,0xd
    800050a8:	0c2017b7          	lui	a5,0xc201
    800050ac:	00a78533          	add	a0,a5,a0
    800050b0:	00452503          	lw	a0,4(a0)
    800050b4:	01010113          	addi	sp,sp,16
    800050b8:	00008067          	ret

00000000800050bc <plic_complete>:
    800050bc:	fe010113          	addi	sp,sp,-32
    800050c0:	00813823          	sd	s0,16(sp)
    800050c4:	00913423          	sd	s1,8(sp)
    800050c8:	00113c23          	sd	ra,24(sp)
    800050cc:	02010413          	addi	s0,sp,32
    800050d0:	00050493          	mv	s1,a0
    800050d4:	00000097          	auipc	ra,0x0
    800050d8:	9b4080e7          	jalr	-1612(ra) # 80004a88 <cpuid>
    800050dc:	01813083          	ld	ra,24(sp)
    800050e0:	01013403          	ld	s0,16(sp)
    800050e4:	00d5179b          	slliw	a5,a0,0xd
    800050e8:	0c201737          	lui	a4,0xc201
    800050ec:	00f707b3          	add	a5,a4,a5
    800050f0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800050f4:	00813483          	ld	s1,8(sp)
    800050f8:	02010113          	addi	sp,sp,32
    800050fc:	00008067          	ret

0000000080005100 <consolewrite>:
    80005100:	fb010113          	addi	sp,sp,-80
    80005104:	04813023          	sd	s0,64(sp)
    80005108:	04113423          	sd	ra,72(sp)
    8000510c:	02913c23          	sd	s1,56(sp)
    80005110:	03213823          	sd	s2,48(sp)
    80005114:	03313423          	sd	s3,40(sp)
    80005118:	03413023          	sd	s4,32(sp)
    8000511c:	01513c23          	sd	s5,24(sp)
    80005120:	05010413          	addi	s0,sp,80
    80005124:	06c05c63          	blez	a2,8000519c <consolewrite+0x9c>
    80005128:	00060993          	mv	s3,a2
    8000512c:	00050a13          	mv	s4,a0
    80005130:	00058493          	mv	s1,a1
    80005134:	00000913          	li	s2,0
    80005138:	fff00a93          	li	s5,-1
    8000513c:	01c0006f          	j	80005158 <consolewrite+0x58>
    80005140:	fbf44503          	lbu	a0,-65(s0)
    80005144:	0019091b          	addiw	s2,s2,1
    80005148:	00148493          	addi	s1,s1,1
    8000514c:	00001097          	auipc	ra,0x1
    80005150:	a9c080e7          	jalr	-1380(ra) # 80005be8 <uartputc>
    80005154:	03298063          	beq	s3,s2,80005174 <consolewrite+0x74>
    80005158:	00048613          	mv	a2,s1
    8000515c:	00100693          	li	a3,1
    80005160:	000a0593          	mv	a1,s4
    80005164:	fbf40513          	addi	a0,s0,-65
    80005168:	00000097          	auipc	ra,0x0
    8000516c:	9d8080e7          	jalr	-1576(ra) # 80004b40 <either_copyin>
    80005170:	fd5518e3          	bne	a0,s5,80005140 <consolewrite+0x40>
    80005174:	04813083          	ld	ra,72(sp)
    80005178:	04013403          	ld	s0,64(sp)
    8000517c:	03813483          	ld	s1,56(sp)
    80005180:	02813983          	ld	s3,40(sp)
    80005184:	02013a03          	ld	s4,32(sp)
    80005188:	01813a83          	ld	s5,24(sp)
    8000518c:	00090513          	mv	a0,s2
    80005190:	03013903          	ld	s2,48(sp)
    80005194:	05010113          	addi	sp,sp,80
    80005198:	00008067          	ret
    8000519c:	00000913          	li	s2,0
    800051a0:	fd5ff06f          	j	80005174 <consolewrite+0x74>

00000000800051a4 <consoleread>:
    800051a4:	f9010113          	addi	sp,sp,-112
    800051a8:	06813023          	sd	s0,96(sp)
    800051ac:	04913c23          	sd	s1,88(sp)
    800051b0:	05213823          	sd	s2,80(sp)
    800051b4:	05313423          	sd	s3,72(sp)
    800051b8:	05413023          	sd	s4,64(sp)
    800051bc:	03513c23          	sd	s5,56(sp)
    800051c0:	03613823          	sd	s6,48(sp)
    800051c4:	03713423          	sd	s7,40(sp)
    800051c8:	03813023          	sd	s8,32(sp)
    800051cc:	06113423          	sd	ra,104(sp)
    800051d0:	01913c23          	sd	s9,24(sp)
    800051d4:	07010413          	addi	s0,sp,112
    800051d8:	00060b93          	mv	s7,a2
    800051dc:	00050913          	mv	s2,a0
    800051e0:	00058c13          	mv	s8,a1
    800051e4:	00060b1b          	sext.w	s6,a2
    800051e8:	00009497          	auipc	s1,0x9
    800051ec:	e0048493          	addi	s1,s1,-512 # 8000dfe8 <cons>
    800051f0:	00400993          	li	s3,4
    800051f4:	fff00a13          	li	s4,-1
    800051f8:	00a00a93          	li	s5,10
    800051fc:	05705e63          	blez	s7,80005258 <consoleread+0xb4>
    80005200:	09c4a703          	lw	a4,156(s1)
    80005204:	0984a783          	lw	a5,152(s1)
    80005208:	0007071b          	sext.w	a4,a4
    8000520c:	08e78463          	beq	a5,a4,80005294 <consoleread+0xf0>
    80005210:	07f7f713          	andi	a4,a5,127
    80005214:	00e48733          	add	a4,s1,a4
    80005218:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000521c:	0017869b          	addiw	a3,a5,1
    80005220:	08d4ac23          	sw	a3,152(s1)
    80005224:	00070c9b          	sext.w	s9,a4
    80005228:	0b370663          	beq	a4,s3,800052d4 <consoleread+0x130>
    8000522c:	00100693          	li	a3,1
    80005230:	f9f40613          	addi	a2,s0,-97
    80005234:	000c0593          	mv	a1,s8
    80005238:	00090513          	mv	a0,s2
    8000523c:	f8e40fa3          	sb	a4,-97(s0)
    80005240:	00000097          	auipc	ra,0x0
    80005244:	8b4080e7          	jalr	-1868(ra) # 80004af4 <either_copyout>
    80005248:	01450863          	beq	a0,s4,80005258 <consoleread+0xb4>
    8000524c:	001c0c13          	addi	s8,s8,1
    80005250:	fffb8b9b          	addiw	s7,s7,-1
    80005254:	fb5c94e3          	bne	s9,s5,800051fc <consoleread+0x58>
    80005258:	000b851b          	sext.w	a0,s7
    8000525c:	06813083          	ld	ra,104(sp)
    80005260:	06013403          	ld	s0,96(sp)
    80005264:	05813483          	ld	s1,88(sp)
    80005268:	05013903          	ld	s2,80(sp)
    8000526c:	04813983          	ld	s3,72(sp)
    80005270:	04013a03          	ld	s4,64(sp)
    80005274:	03813a83          	ld	s5,56(sp)
    80005278:	02813b83          	ld	s7,40(sp)
    8000527c:	02013c03          	ld	s8,32(sp)
    80005280:	01813c83          	ld	s9,24(sp)
    80005284:	40ab053b          	subw	a0,s6,a0
    80005288:	03013b03          	ld	s6,48(sp)
    8000528c:	07010113          	addi	sp,sp,112
    80005290:	00008067          	ret
    80005294:	00001097          	auipc	ra,0x1
    80005298:	1d8080e7          	jalr	472(ra) # 8000646c <push_on>
    8000529c:	0984a703          	lw	a4,152(s1)
    800052a0:	09c4a783          	lw	a5,156(s1)
    800052a4:	0007879b          	sext.w	a5,a5
    800052a8:	fef70ce3          	beq	a4,a5,800052a0 <consoleread+0xfc>
    800052ac:	00001097          	auipc	ra,0x1
    800052b0:	234080e7          	jalr	564(ra) # 800064e0 <pop_on>
    800052b4:	0984a783          	lw	a5,152(s1)
    800052b8:	07f7f713          	andi	a4,a5,127
    800052bc:	00e48733          	add	a4,s1,a4
    800052c0:	01874703          	lbu	a4,24(a4)
    800052c4:	0017869b          	addiw	a3,a5,1
    800052c8:	08d4ac23          	sw	a3,152(s1)
    800052cc:	00070c9b          	sext.w	s9,a4
    800052d0:	f5371ee3          	bne	a4,s3,8000522c <consoleread+0x88>
    800052d4:	000b851b          	sext.w	a0,s7
    800052d8:	f96bf2e3          	bgeu	s7,s6,8000525c <consoleread+0xb8>
    800052dc:	08f4ac23          	sw	a5,152(s1)
    800052e0:	f7dff06f          	j	8000525c <consoleread+0xb8>

00000000800052e4 <consputc>:
    800052e4:	10000793          	li	a5,256
    800052e8:	00f50663          	beq	a0,a5,800052f4 <consputc+0x10>
    800052ec:	00001317          	auipc	t1,0x1
    800052f0:	9f430067          	jr	-1548(t1) # 80005ce0 <uartputc_sync>
    800052f4:	ff010113          	addi	sp,sp,-16
    800052f8:	00113423          	sd	ra,8(sp)
    800052fc:	00813023          	sd	s0,0(sp)
    80005300:	01010413          	addi	s0,sp,16
    80005304:	00800513          	li	a0,8
    80005308:	00001097          	auipc	ra,0x1
    8000530c:	9d8080e7          	jalr	-1576(ra) # 80005ce0 <uartputc_sync>
    80005310:	02000513          	li	a0,32
    80005314:	00001097          	auipc	ra,0x1
    80005318:	9cc080e7          	jalr	-1588(ra) # 80005ce0 <uartputc_sync>
    8000531c:	00013403          	ld	s0,0(sp)
    80005320:	00813083          	ld	ra,8(sp)
    80005324:	00800513          	li	a0,8
    80005328:	01010113          	addi	sp,sp,16
    8000532c:	00001317          	auipc	t1,0x1
    80005330:	9b430067          	jr	-1612(t1) # 80005ce0 <uartputc_sync>

0000000080005334 <consoleintr>:
    80005334:	fe010113          	addi	sp,sp,-32
    80005338:	00813823          	sd	s0,16(sp)
    8000533c:	00913423          	sd	s1,8(sp)
    80005340:	01213023          	sd	s2,0(sp)
    80005344:	00113c23          	sd	ra,24(sp)
    80005348:	02010413          	addi	s0,sp,32
    8000534c:	00009917          	auipc	s2,0x9
    80005350:	c9c90913          	addi	s2,s2,-868 # 8000dfe8 <cons>
    80005354:	00050493          	mv	s1,a0
    80005358:	00090513          	mv	a0,s2
    8000535c:	00001097          	auipc	ra,0x1
    80005360:	e40080e7          	jalr	-448(ra) # 8000619c <acquire>
    80005364:	02048c63          	beqz	s1,8000539c <consoleintr+0x68>
    80005368:	0a092783          	lw	a5,160(s2)
    8000536c:	09892703          	lw	a4,152(s2)
    80005370:	07f00693          	li	a3,127
    80005374:	40e7873b          	subw	a4,a5,a4
    80005378:	02e6e263          	bltu	a3,a4,8000539c <consoleintr+0x68>
    8000537c:	00d00713          	li	a4,13
    80005380:	04e48063          	beq	s1,a4,800053c0 <consoleintr+0x8c>
    80005384:	07f7f713          	andi	a4,a5,127
    80005388:	00e90733          	add	a4,s2,a4
    8000538c:	0017879b          	addiw	a5,a5,1
    80005390:	0af92023          	sw	a5,160(s2)
    80005394:	00970c23          	sb	s1,24(a4)
    80005398:	08f92e23          	sw	a5,156(s2)
    8000539c:	01013403          	ld	s0,16(sp)
    800053a0:	01813083          	ld	ra,24(sp)
    800053a4:	00813483          	ld	s1,8(sp)
    800053a8:	00013903          	ld	s2,0(sp)
    800053ac:	00009517          	auipc	a0,0x9
    800053b0:	c3c50513          	addi	a0,a0,-964 # 8000dfe8 <cons>
    800053b4:	02010113          	addi	sp,sp,32
    800053b8:	00001317          	auipc	t1,0x1
    800053bc:	eb030067          	jr	-336(t1) # 80006268 <release>
    800053c0:	00a00493          	li	s1,10
    800053c4:	fc1ff06f          	j	80005384 <consoleintr+0x50>

00000000800053c8 <consoleinit>:
    800053c8:	fe010113          	addi	sp,sp,-32
    800053cc:	00113c23          	sd	ra,24(sp)
    800053d0:	00813823          	sd	s0,16(sp)
    800053d4:	00913423          	sd	s1,8(sp)
    800053d8:	02010413          	addi	s0,sp,32
    800053dc:	00009497          	auipc	s1,0x9
    800053e0:	c0c48493          	addi	s1,s1,-1012 # 8000dfe8 <cons>
    800053e4:	00048513          	mv	a0,s1
    800053e8:	00002597          	auipc	a1,0x2
    800053ec:	f9858593          	addi	a1,a1,-104 # 80007380 <CONSOLE_STATUS+0x370>
    800053f0:	00001097          	auipc	ra,0x1
    800053f4:	d88080e7          	jalr	-632(ra) # 80006178 <initlock>
    800053f8:	00000097          	auipc	ra,0x0
    800053fc:	7ac080e7          	jalr	1964(ra) # 80005ba4 <uartinit>
    80005400:	01813083          	ld	ra,24(sp)
    80005404:	01013403          	ld	s0,16(sp)
    80005408:	00000797          	auipc	a5,0x0
    8000540c:	d9c78793          	addi	a5,a5,-612 # 800051a4 <consoleread>
    80005410:	0af4bc23          	sd	a5,184(s1)
    80005414:	00000797          	auipc	a5,0x0
    80005418:	cec78793          	addi	a5,a5,-788 # 80005100 <consolewrite>
    8000541c:	0cf4b023          	sd	a5,192(s1)
    80005420:	00813483          	ld	s1,8(sp)
    80005424:	02010113          	addi	sp,sp,32
    80005428:	00008067          	ret

000000008000542c <console_read>:
    8000542c:	ff010113          	addi	sp,sp,-16
    80005430:	00813423          	sd	s0,8(sp)
    80005434:	01010413          	addi	s0,sp,16
    80005438:	00813403          	ld	s0,8(sp)
    8000543c:	00009317          	auipc	t1,0x9
    80005440:	c6433303          	ld	t1,-924(t1) # 8000e0a0 <devsw+0x10>
    80005444:	01010113          	addi	sp,sp,16
    80005448:	00030067          	jr	t1

000000008000544c <console_write>:
    8000544c:	ff010113          	addi	sp,sp,-16
    80005450:	00813423          	sd	s0,8(sp)
    80005454:	01010413          	addi	s0,sp,16
    80005458:	00813403          	ld	s0,8(sp)
    8000545c:	00009317          	auipc	t1,0x9
    80005460:	c4c33303          	ld	t1,-948(t1) # 8000e0a8 <devsw+0x18>
    80005464:	01010113          	addi	sp,sp,16
    80005468:	00030067          	jr	t1

000000008000546c <panic>:
    8000546c:	fe010113          	addi	sp,sp,-32
    80005470:	00113c23          	sd	ra,24(sp)
    80005474:	00813823          	sd	s0,16(sp)
    80005478:	00913423          	sd	s1,8(sp)
    8000547c:	02010413          	addi	s0,sp,32
    80005480:	00050493          	mv	s1,a0
    80005484:	00002517          	auipc	a0,0x2
    80005488:	f0450513          	addi	a0,a0,-252 # 80007388 <CONSOLE_STATUS+0x378>
    8000548c:	00009797          	auipc	a5,0x9
    80005490:	ca07ae23          	sw	zero,-836(a5) # 8000e148 <pr+0x18>
    80005494:	00000097          	auipc	ra,0x0
    80005498:	034080e7          	jalr	52(ra) # 800054c8 <__printf>
    8000549c:	00048513          	mv	a0,s1
    800054a0:	00000097          	auipc	ra,0x0
    800054a4:	028080e7          	jalr	40(ra) # 800054c8 <__printf>
    800054a8:	00002517          	auipc	a0,0x2
    800054ac:	ec050513          	addi	a0,a0,-320 # 80007368 <CONSOLE_STATUS+0x358>
    800054b0:	00000097          	auipc	ra,0x0
    800054b4:	018080e7          	jalr	24(ra) # 800054c8 <__printf>
    800054b8:	00100793          	li	a5,1
    800054bc:	00004717          	auipc	a4,0x4
    800054c0:	96f72623          	sw	a5,-1684(a4) # 80008e28 <panicked>
    800054c4:	0000006f          	j	800054c4 <panic+0x58>

00000000800054c8 <__printf>:
    800054c8:	f3010113          	addi	sp,sp,-208
    800054cc:	08813023          	sd	s0,128(sp)
    800054d0:	07313423          	sd	s3,104(sp)
    800054d4:	09010413          	addi	s0,sp,144
    800054d8:	05813023          	sd	s8,64(sp)
    800054dc:	08113423          	sd	ra,136(sp)
    800054e0:	06913c23          	sd	s1,120(sp)
    800054e4:	07213823          	sd	s2,112(sp)
    800054e8:	07413023          	sd	s4,96(sp)
    800054ec:	05513c23          	sd	s5,88(sp)
    800054f0:	05613823          	sd	s6,80(sp)
    800054f4:	05713423          	sd	s7,72(sp)
    800054f8:	03913c23          	sd	s9,56(sp)
    800054fc:	03a13823          	sd	s10,48(sp)
    80005500:	03b13423          	sd	s11,40(sp)
    80005504:	00009317          	auipc	t1,0x9
    80005508:	c2c30313          	addi	t1,t1,-980 # 8000e130 <pr>
    8000550c:	01832c03          	lw	s8,24(t1)
    80005510:	00b43423          	sd	a1,8(s0)
    80005514:	00c43823          	sd	a2,16(s0)
    80005518:	00d43c23          	sd	a3,24(s0)
    8000551c:	02e43023          	sd	a4,32(s0)
    80005520:	02f43423          	sd	a5,40(s0)
    80005524:	03043823          	sd	a6,48(s0)
    80005528:	03143c23          	sd	a7,56(s0)
    8000552c:	00050993          	mv	s3,a0
    80005530:	4a0c1663          	bnez	s8,800059dc <__printf+0x514>
    80005534:	60098c63          	beqz	s3,80005b4c <__printf+0x684>
    80005538:	0009c503          	lbu	a0,0(s3)
    8000553c:	00840793          	addi	a5,s0,8
    80005540:	f6f43c23          	sd	a5,-136(s0)
    80005544:	00000493          	li	s1,0
    80005548:	22050063          	beqz	a0,80005768 <__printf+0x2a0>
    8000554c:	00002a37          	lui	s4,0x2
    80005550:	00018ab7          	lui	s5,0x18
    80005554:	000f4b37          	lui	s6,0xf4
    80005558:	00989bb7          	lui	s7,0x989
    8000555c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80005560:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80005564:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80005568:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000556c:	00148c9b          	addiw	s9,s1,1
    80005570:	02500793          	li	a5,37
    80005574:	01998933          	add	s2,s3,s9
    80005578:	38f51263          	bne	a0,a5,800058fc <__printf+0x434>
    8000557c:	00094783          	lbu	a5,0(s2)
    80005580:	00078c9b          	sext.w	s9,a5
    80005584:	1e078263          	beqz	a5,80005768 <__printf+0x2a0>
    80005588:	0024849b          	addiw	s1,s1,2
    8000558c:	07000713          	li	a4,112
    80005590:	00998933          	add	s2,s3,s1
    80005594:	38e78a63          	beq	a5,a4,80005928 <__printf+0x460>
    80005598:	20f76863          	bltu	a4,a5,800057a8 <__printf+0x2e0>
    8000559c:	42a78863          	beq	a5,a0,800059cc <__printf+0x504>
    800055a0:	06400713          	li	a4,100
    800055a4:	40e79663          	bne	a5,a4,800059b0 <__printf+0x4e8>
    800055a8:	f7843783          	ld	a5,-136(s0)
    800055ac:	0007a603          	lw	a2,0(a5)
    800055b0:	00878793          	addi	a5,a5,8
    800055b4:	f6f43c23          	sd	a5,-136(s0)
    800055b8:	42064a63          	bltz	a2,800059ec <__printf+0x524>
    800055bc:	00a00713          	li	a4,10
    800055c0:	02e677bb          	remuw	a5,a2,a4
    800055c4:	00002d97          	auipc	s11,0x2
    800055c8:	decd8d93          	addi	s11,s11,-532 # 800073b0 <digits>
    800055cc:	00900593          	li	a1,9
    800055d0:	0006051b          	sext.w	a0,a2
    800055d4:	00000c93          	li	s9,0
    800055d8:	02079793          	slli	a5,a5,0x20
    800055dc:	0207d793          	srli	a5,a5,0x20
    800055e0:	00fd87b3          	add	a5,s11,a5
    800055e4:	0007c783          	lbu	a5,0(a5)
    800055e8:	02e656bb          	divuw	a3,a2,a4
    800055ec:	f8f40023          	sb	a5,-128(s0)
    800055f0:	14c5d863          	bge	a1,a2,80005740 <__printf+0x278>
    800055f4:	06300593          	li	a1,99
    800055f8:	00100c93          	li	s9,1
    800055fc:	02e6f7bb          	remuw	a5,a3,a4
    80005600:	02079793          	slli	a5,a5,0x20
    80005604:	0207d793          	srli	a5,a5,0x20
    80005608:	00fd87b3          	add	a5,s11,a5
    8000560c:	0007c783          	lbu	a5,0(a5)
    80005610:	02e6d73b          	divuw	a4,a3,a4
    80005614:	f8f400a3          	sb	a5,-127(s0)
    80005618:	12a5f463          	bgeu	a1,a0,80005740 <__printf+0x278>
    8000561c:	00a00693          	li	a3,10
    80005620:	00900593          	li	a1,9
    80005624:	02d777bb          	remuw	a5,a4,a3
    80005628:	02079793          	slli	a5,a5,0x20
    8000562c:	0207d793          	srli	a5,a5,0x20
    80005630:	00fd87b3          	add	a5,s11,a5
    80005634:	0007c503          	lbu	a0,0(a5)
    80005638:	02d757bb          	divuw	a5,a4,a3
    8000563c:	f8a40123          	sb	a0,-126(s0)
    80005640:	48e5f263          	bgeu	a1,a4,80005ac4 <__printf+0x5fc>
    80005644:	06300513          	li	a0,99
    80005648:	02d7f5bb          	remuw	a1,a5,a3
    8000564c:	02059593          	slli	a1,a1,0x20
    80005650:	0205d593          	srli	a1,a1,0x20
    80005654:	00bd85b3          	add	a1,s11,a1
    80005658:	0005c583          	lbu	a1,0(a1)
    8000565c:	02d7d7bb          	divuw	a5,a5,a3
    80005660:	f8b401a3          	sb	a1,-125(s0)
    80005664:	48e57263          	bgeu	a0,a4,80005ae8 <__printf+0x620>
    80005668:	3e700513          	li	a0,999
    8000566c:	02d7f5bb          	remuw	a1,a5,a3
    80005670:	02059593          	slli	a1,a1,0x20
    80005674:	0205d593          	srli	a1,a1,0x20
    80005678:	00bd85b3          	add	a1,s11,a1
    8000567c:	0005c583          	lbu	a1,0(a1)
    80005680:	02d7d7bb          	divuw	a5,a5,a3
    80005684:	f8b40223          	sb	a1,-124(s0)
    80005688:	46e57663          	bgeu	a0,a4,80005af4 <__printf+0x62c>
    8000568c:	02d7f5bb          	remuw	a1,a5,a3
    80005690:	02059593          	slli	a1,a1,0x20
    80005694:	0205d593          	srli	a1,a1,0x20
    80005698:	00bd85b3          	add	a1,s11,a1
    8000569c:	0005c583          	lbu	a1,0(a1)
    800056a0:	02d7d7bb          	divuw	a5,a5,a3
    800056a4:	f8b402a3          	sb	a1,-123(s0)
    800056a8:	46ea7863          	bgeu	s4,a4,80005b18 <__printf+0x650>
    800056ac:	02d7f5bb          	remuw	a1,a5,a3
    800056b0:	02059593          	slli	a1,a1,0x20
    800056b4:	0205d593          	srli	a1,a1,0x20
    800056b8:	00bd85b3          	add	a1,s11,a1
    800056bc:	0005c583          	lbu	a1,0(a1)
    800056c0:	02d7d7bb          	divuw	a5,a5,a3
    800056c4:	f8b40323          	sb	a1,-122(s0)
    800056c8:	3eeaf863          	bgeu	s5,a4,80005ab8 <__printf+0x5f0>
    800056cc:	02d7f5bb          	remuw	a1,a5,a3
    800056d0:	02059593          	slli	a1,a1,0x20
    800056d4:	0205d593          	srli	a1,a1,0x20
    800056d8:	00bd85b3          	add	a1,s11,a1
    800056dc:	0005c583          	lbu	a1,0(a1)
    800056e0:	02d7d7bb          	divuw	a5,a5,a3
    800056e4:	f8b403a3          	sb	a1,-121(s0)
    800056e8:	42eb7e63          	bgeu	s6,a4,80005b24 <__printf+0x65c>
    800056ec:	02d7f5bb          	remuw	a1,a5,a3
    800056f0:	02059593          	slli	a1,a1,0x20
    800056f4:	0205d593          	srli	a1,a1,0x20
    800056f8:	00bd85b3          	add	a1,s11,a1
    800056fc:	0005c583          	lbu	a1,0(a1)
    80005700:	02d7d7bb          	divuw	a5,a5,a3
    80005704:	f8b40423          	sb	a1,-120(s0)
    80005708:	42ebfc63          	bgeu	s7,a4,80005b40 <__printf+0x678>
    8000570c:	02079793          	slli	a5,a5,0x20
    80005710:	0207d793          	srli	a5,a5,0x20
    80005714:	00fd8db3          	add	s11,s11,a5
    80005718:	000dc703          	lbu	a4,0(s11)
    8000571c:	00a00793          	li	a5,10
    80005720:	00900c93          	li	s9,9
    80005724:	f8e404a3          	sb	a4,-119(s0)
    80005728:	00065c63          	bgez	a2,80005740 <__printf+0x278>
    8000572c:	f9040713          	addi	a4,s0,-112
    80005730:	00f70733          	add	a4,a4,a5
    80005734:	02d00693          	li	a3,45
    80005738:	fed70823          	sb	a3,-16(a4)
    8000573c:	00078c93          	mv	s9,a5
    80005740:	f8040793          	addi	a5,s0,-128
    80005744:	01978cb3          	add	s9,a5,s9
    80005748:	f7f40d13          	addi	s10,s0,-129
    8000574c:	000cc503          	lbu	a0,0(s9)
    80005750:	fffc8c93          	addi	s9,s9,-1
    80005754:	00000097          	auipc	ra,0x0
    80005758:	b90080e7          	jalr	-1136(ra) # 800052e4 <consputc>
    8000575c:	ffac98e3          	bne	s9,s10,8000574c <__printf+0x284>
    80005760:	00094503          	lbu	a0,0(s2)
    80005764:	e00514e3          	bnez	a0,8000556c <__printf+0xa4>
    80005768:	1a0c1663          	bnez	s8,80005914 <__printf+0x44c>
    8000576c:	08813083          	ld	ra,136(sp)
    80005770:	08013403          	ld	s0,128(sp)
    80005774:	07813483          	ld	s1,120(sp)
    80005778:	07013903          	ld	s2,112(sp)
    8000577c:	06813983          	ld	s3,104(sp)
    80005780:	06013a03          	ld	s4,96(sp)
    80005784:	05813a83          	ld	s5,88(sp)
    80005788:	05013b03          	ld	s6,80(sp)
    8000578c:	04813b83          	ld	s7,72(sp)
    80005790:	04013c03          	ld	s8,64(sp)
    80005794:	03813c83          	ld	s9,56(sp)
    80005798:	03013d03          	ld	s10,48(sp)
    8000579c:	02813d83          	ld	s11,40(sp)
    800057a0:	0d010113          	addi	sp,sp,208
    800057a4:	00008067          	ret
    800057a8:	07300713          	li	a4,115
    800057ac:	1ce78a63          	beq	a5,a4,80005980 <__printf+0x4b8>
    800057b0:	07800713          	li	a4,120
    800057b4:	1ee79e63          	bne	a5,a4,800059b0 <__printf+0x4e8>
    800057b8:	f7843783          	ld	a5,-136(s0)
    800057bc:	0007a703          	lw	a4,0(a5)
    800057c0:	00878793          	addi	a5,a5,8
    800057c4:	f6f43c23          	sd	a5,-136(s0)
    800057c8:	28074263          	bltz	a4,80005a4c <__printf+0x584>
    800057cc:	00002d97          	auipc	s11,0x2
    800057d0:	be4d8d93          	addi	s11,s11,-1052 # 800073b0 <digits>
    800057d4:	00f77793          	andi	a5,a4,15
    800057d8:	00fd87b3          	add	a5,s11,a5
    800057dc:	0007c683          	lbu	a3,0(a5)
    800057e0:	00f00613          	li	a2,15
    800057e4:	0007079b          	sext.w	a5,a4
    800057e8:	f8d40023          	sb	a3,-128(s0)
    800057ec:	0047559b          	srliw	a1,a4,0x4
    800057f0:	0047569b          	srliw	a3,a4,0x4
    800057f4:	00000c93          	li	s9,0
    800057f8:	0ee65063          	bge	a2,a4,800058d8 <__printf+0x410>
    800057fc:	00f6f693          	andi	a3,a3,15
    80005800:	00dd86b3          	add	a3,s11,a3
    80005804:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80005808:	0087d79b          	srliw	a5,a5,0x8
    8000580c:	00100c93          	li	s9,1
    80005810:	f8d400a3          	sb	a3,-127(s0)
    80005814:	0cb67263          	bgeu	a2,a1,800058d8 <__printf+0x410>
    80005818:	00f7f693          	andi	a3,a5,15
    8000581c:	00dd86b3          	add	a3,s11,a3
    80005820:	0006c583          	lbu	a1,0(a3)
    80005824:	00f00613          	li	a2,15
    80005828:	0047d69b          	srliw	a3,a5,0x4
    8000582c:	f8b40123          	sb	a1,-126(s0)
    80005830:	0047d593          	srli	a1,a5,0x4
    80005834:	28f67e63          	bgeu	a2,a5,80005ad0 <__printf+0x608>
    80005838:	00f6f693          	andi	a3,a3,15
    8000583c:	00dd86b3          	add	a3,s11,a3
    80005840:	0006c503          	lbu	a0,0(a3)
    80005844:	0087d813          	srli	a6,a5,0x8
    80005848:	0087d69b          	srliw	a3,a5,0x8
    8000584c:	f8a401a3          	sb	a0,-125(s0)
    80005850:	28b67663          	bgeu	a2,a1,80005adc <__printf+0x614>
    80005854:	00f6f693          	andi	a3,a3,15
    80005858:	00dd86b3          	add	a3,s11,a3
    8000585c:	0006c583          	lbu	a1,0(a3)
    80005860:	00c7d513          	srli	a0,a5,0xc
    80005864:	00c7d69b          	srliw	a3,a5,0xc
    80005868:	f8b40223          	sb	a1,-124(s0)
    8000586c:	29067a63          	bgeu	a2,a6,80005b00 <__printf+0x638>
    80005870:	00f6f693          	andi	a3,a3,15
    80005874:	00dd86b3          	add	a3,s11,a3
    80005878:	0006c583          	lbu	a1,0(a3)
    8000587c:	0107d813          	srli	a6,a5,0x10
    80005880:	0107d69b          	srliw	a3,a5,0x10
    80005884:	f8b402a3          	sb	a1,-123(s0)
    80005888:	28a67263          	bgeu	a2,a0,80005b0c <__printf+0x644>
    8000588c:	00f6f693          	andi	a3,a3,15
    80005890:	00dd86b3          	add	a3,s11,a3
    80005894:	0006c683          	lbu	a3,0(a3)
    80005898:	0147d79b          	srliw	a5,a5,0x14
    8000589c:	f8d40323          	sb	a3,-122(s0)
    800058a0:	21067663          	bgeu	a2,a6,80005aac <__printf+0x5e4>
    800058a4:	02079793          	slli	a5,a5,0x20
    800058a8:	0207d793          	srli	a5,a5,0x20
    800058ac:	00fd8db3          	add	s11,s11,a5
    800058b0:	000dc683          	lbu	a3,0(s11)
    800058b4:	00800793          	li	a5,8
    800058b8:	00700c93          	li	s9,7
    800058bc:	f8d403a3          	sb	a3,-121(s0)
    800058c0:	00075c63          	bgez	a4,800058d8 <__printf+0x410>
    800058c4:	f9040713          	addi	a4,s0,-112
    800058c8:	00f70733          	add	a4,a4,a5
    800058cc:	02d00693          	li	a3,45
    800058d0:	fed70823          	sb	a3,-16(a4)
    800058d4:	00078c93          	mv	s9,a5
    800058d8:	f8040793          	addi	a5,s0,-128
    800058dc:	01978cb3          	add	s9,a5,s9
    800058e0:	f7f40d13          	addi	s10,s0,-129
    800058e4:	000cc503          	lbu	a0,0(s9)
    800058e8:	fffc8c93          	addi	s9,s9,-1
    800058ec:	00000097          	auipc	ra,0x0
    800058f0:	9f8080e7          	jalr	-1544(ra) # 800052e4 <consputc>
    800058f4:	ff9d18e3          	bne	s10,s9,800058e4 <__printf+0x41c>
    800058f8:	0100006f          	j	80005908 <__printf+0x440>
    800058fc:	00000097          	auipc	ra,0x0
    80005900:	9e8080e7          	jalr	-1560(ra) # 800052e4 <consputc>
    80005904:	000c8493          	mv	s1,s9
    80005908:	00094503          	lbu	a0,0(s2)
    8000590c:	c60510e3          	bnez	a0,8000556c <__printf+0xa4>
    80005910:	e40c0ee3          	beqz	s8,8000576c <__printf+0x2a4>
    80005914:	00009517          	auipc	a0,0x9
    80005918:	81c50513          	addi	a0,a0,-2020 # 8000e130 <pr>
    8000591c:	00001097          	auipc	ra,0x1
    80005920:	94c080e7          	jalr	-1716(ra) # 80006268 <release>
    80005924:	e49ff06f          	j	8000576c <__printf+0x2a4>
    80005928:	f7843783          	ld	a5,-136(s0)
    8000592c:	03000513          	li	a0,48
    80005930:	01000d13          	li	s10,16
    80005934:	00878713          	addi	a4,a5,8
    80005938:	0007bc83          	ld	s9,0(a5)
    8000593c:	f6e43c23          	sd	a4,-136(s0)
    80005940:	00000097          	auipc	ra,0x0
    80005944:	9a4080e7          	jalr	-1628(ra) # 800052e4 <consputc>
    80005948:	07800513          	li	a0,120
    8000594c:	00000097          	auipc	ra,0x0
    80005950:	998080e7          	jalr	-1640(ra) # 800052e4 <consputc>
    80005954:	00002d97          	auipc	s11,0x2
    80005958:	a5cd8d93          	addi	s11,s11,-1444 # 800073b0 <digits>
    8000595c:	03ccd793          	srli	a5,s9,0x3c
    80005960:	00fd87b3          	add	a5,s11,a5
    80005964:	0007c503          	lbu	a0,0(a5)
    80005968:	fffd0d1b          	addiw	s10,s10,-1
    8000596c:	004c9c93          	slli	s9,s9,0x4
    80005970:	00000097          	auipc	ra,0x0
    80005974:	974080e7          	jalr	-1676(ra) # 800052e4 <consputc>
    80005978:	fe0d12e3          	bnez	s10,8000595c <__printf+0x494>
    8000597c:	f8dff06f          	j	80005908 <__printf+0x440>
    80005980:	f7843783          	ld	a5,-136(s0)
    80005984:	0007bc83          	ld	s9,0(a5)
    80005988:	00878793          	addi	a5,a5,8
    8000598c:	f6f43c23          	sd	a5,-136(s0)
    80005990:	000c9a63          	bnez	s9,800059a4 <__printf+0x4dc>
    80005994:	1080006f          	j	80005a9c <__printf+0x5d4>
    80005998:	001c8c93          	addi	s9,s9,1
    8000599c:	00000097          	auipc	ra,0x0
    800059a0:	948080e7          	jalr	-1720(ra) # 800052e4 <consputc>
    800059a4:	000cc503          	lbu	a0,0(s9)
    800059a8:	fe0518e3          	bnez	a0,80005998 <__printf+0x4d0>
    800059ac:	f5dff06f          	j	80005908 <__printf+0x440>
    800059b0:	02500513          	li	a0,37
    800059b4:	00000097          	auipc	ra,0x0
    800059b8:	930080e7          	jalr	-1744(ra) # 800052e4 <consputc>
    800059bc:	000c8513          	mv	a0,s9
    800059c0:	00000097          	auipc	ra,0x0
    800059c4:	924080e7          	jalr	-1756(ra) # 800052e4 <consputc>
    800059c8:	f41ff06f          	j	80005908 <__printf+0x440>
    800059cc:	02500513          	li	a0,37
    800059d0:	00000097          	auipc	ra,0x0
    800059d4:	914080e7          	jalr	-1772(ra) # 800052e4 <consputc>
    800059d8:	f31ff06f          	j	80005908 <__printf+0x440>
    800059dc:	00030513          	mv	a0,t1
    800059e0:	00000097          	auipc	ra,0x0
    800059e4:	7bc080e7          	jalr	1980(ra) # 8000619c <acquire>
    800059e8:	b4dff06f          	j	80005534 <__printf+0x6c>
    800059ec:	40c0053b          	negw	a0,a2
    800059f0:	00a00713          	li	a4,10
    800059f4:	02e576bb          	remuw	a3,a0,a4
    800059f8:	00002d97          	auipc	s11,0x2
    800059fc:	9b8d8d93          	addi	s11,s11,-1608 # 800073b0 <digits>
    80005a00:	ff700593          	li	a1,-9
    80005a04:	02069693          	slli	a3,a3,0x20
    80005a08:	0206d693          	srli	a3,a3,0x20
    80005a0c:	00dd86b3          	add	a3,s11,a3
    80005a10:	0006c683          	lbu	a3,0(a3)
    80005a14:	02e557bb          	divuw	a5,a0,a4
    80005a18:	f8d40023          	sb	a3,-128(s0)
    80005a1c:	10b65e63          	bge	a2,a1,80005b38 <__printf+0x670>
    80005a20:	06300593          	li	a1,99
    80005a24:	02e7f6bb          	remuw	a3,a5,a4
    80005a28:	02069693          	slli	a3,a3,0x20
    80005a2c:	0206d693          	srli	a3,a3,0x20
    80005a30:	00dd86b3          	add	a3,s11,a3
    80005a34:	0006c683          	lbu	a3,0(a3)
    80005a38:	02e7d73b          	divuw	a4,a5,a4
    80005a3c:	00200793          	li	a5,2
    80005a40:	f8d400a3          	sb	a3,-127(s0)
    80005a44:	bca5ece3          	bltu	a1,a0,8000561c <__printf+0x154>
    80005a48:	ce5ff06f          	j	8000572c <__printf+0x264>
    80005a4c:	40e007bb          	negw	a5,a4
    80005a50:	00002d97          	auipc	s11,0x2
    80005a54:	960d8d93          	addi	s11,s11,-1696 # 800073b0 <digits>
    80005a58:	00f7f693          	andi	a3,a5,15
    80005a5c:	00dd86b3          	add	a3,s11,a3
    80005a60:	0006c583          	lbu	a1,0(a3)
    80005a64:	ff100613          	li	a2,-15
    80005a68:	0047d69b          	srliw	a3,a5,0x4
    80005a6c:	f8b40023          	sb	a1,-128(s0)
    80005a70:	0047d59b          	srliw	a1,a5,0x4
    80005a74:	0ac75e63          	bge	a4,a2,80005b30 <__printf+0x668>
    80005a78:	00f6f693          	andi	a3,a3,15
    80005a7c:	00dd86b3          	add	a3,s11,a3
    80005a80:	0006c603          	lbu	a2,0(a3)
    80005a84:	00f00693          	li	a3,15
    80005a88:	0087d79b          	srliw	a5,a5,0x8
    80005a8c:	f8c400a3          	sb	a2,-127(s0)
    80005a90:	d8b6e4e3          	bltu	a3,a1,80005818 <__printf+0x350>
    80005a94:	00200793          	li	a5,2
    80005a98:	e2dff06f          	j	800058c4 <__printf+0x3fc>
    80005a9c:	00002c97          	auipc	s9,0x2
    80005aa0:	8f4c8c93          	addi	s9,s9,-1804 # 80007390 <CONSOLE_STATUS+0x380>
    80005aa4:	02800513          	li	a0,40
    80005aa8:	ef1ff06f          	j	80005998 <__printf+0x4d0>
    80005aac:	00700793          	li	a5,7
    80005ab0:	00600c93          	li	s9,6
    80005ab4:	e0dff06f          	j	800058c0 <__printf+0x3f8>
    80005ab8:	00700793          	li	a5,7
    80005abc:	00600c93          	li	s9,6
    80005ac0:	c69ff06f          	j	80005728 <__printf+0x260>
    80005ac4:	00300793          	li	a5,3
    80005ac8:	00200c93          	li	s9,2
    80005acc:	c5dff06f          	j	80005728 <__printf+0x260>
    80005ad0:	00300793          	li	a5,3
    80005ad4:	00200c93          	li	s9,2
    80005ad8:	de9ff06f          	j	800058c0 <__printf+0x3f8>
    80005adc:	00400793          	li	a5,4
    80005ae0:	00300c93          	li	s9,3
    80005ae4:	dddff06f          	j	800058c0 <__printf+0x3f8>
    80005ae8:	00400793          	li	a5,4
    80005aec:	00300c93          	li	s9,3
    80005af0:	c39ff06f          	j	80005728 <__printf+0x260>
    80005af4:	00500793          	li	a5,5
    80005af8:	00400c93          	li	s9,4
    80005afc:	c2dff06f          	j	80005728 <__printf+0x260>
    80005b00:	00500793          	li	a5,5
    80005b04:	00400c93          	li	s9,4
    80005b08:	db9ff06f          	j	800058c0 <__printf+0x3f8>
    80005b0c:	00600793          	li	a5,6
    80005b10:	00500c93          	li	s9,5
    80005b14:	dadff06f          	j	800058c0 <__printf+0x3f8>
    80005b18:	00600793          	li	a5,6
    80005b1c:	00500c93          	li	s9,5
    80005b20:	c09ff06f          	j	80005728 <__printf+0x260>
    80005b24:	00800793          	li	a5,8
    80005b28:	00700c93          	li	s9,7
    80005b2c:	bfdff06f          	j	80005728 <__printf+0x260>
    80005b30:	00100793          	li	a5,1
    80005b34:	d91ff06f          	j	800058c4 <__printf+0x3fc>
    80005b38:	00100793          	li	a5,1
    80005b3c:	bf1ff06f          	j	8000572c <__printf+0x264>
    80005b40:	00900793          	li	a5,9
    80005b44:	00800c93          	li	s9,8
    80005b48:	be1ff06f          	j	80005728 <__printf+0x260>
    80005b4c:	00002517          	auipc	a0,0x2
    80005b50:	84c50513          	addi	a0,a0,-1972 # 80007398 <CONSOLE_STATUS+0x388>
    80005b54:	00000097          	auipc	ra,0x0
    80005b58:	918080e7          	jalr	-1768(ra) # 8000546c <panic>

0000000080005b5c <printfinit>:
    80005b5c:	fe010113          	addi	sp,sp,-32
    80005b60:	00813823          	sd	s0,16(sp)
    80005b64:	00913423          	sd	s1,8(sp)
    80005b68:	00113c23          	sd	ra,24(sp)
    80005b6c:	02010413          	addi	s0,sp,32
    80005b70:	00008497          	auipc	s1,0x8
    80005b74:	5c048493          	addi	s1,s1,1472 # 8000e130 <pr>
    80005b78:	00048513          	mv	a0,s1
    80005b7c:	00002597          	auipc	a1,0x2
    80005b80:	82c58593          	addi	a1,a1,-2004 # 800073a8 <CONSOLE_STATUS+0x398>
    80005b84:	00000097          	auipc	ra,0x0
    80005b88:	5f4080e7          	jalr	1524(ra) # 80006178 <initlock>
    80005b8c:	01813083          	ld	ra,24(sp)
    80005b90:	01013403          	ld	s0,16(sp)
    80005b94:	0004ac23          	sw	zero,24(s1)
    80005b98:	00813483          	ld	s1,8(sp)
    80005b9c:	02010113          	addi	sp,sp,32
    80005ba0:	00008067          	ret

0000000080005ba4 <uartinit>:
    80005ba4:	ff010113          	addi	sp,sp,-16
    80005ba8:	00813423          	sd	s0,8(sp)
    80005bac:	01010413          	addi	s0,sp,16
    80005bb0:	100007b7          	lui	a5,0x10000
    80005bb4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80005bb8:	f8000713          	li	a4,-128
    80005bbc:	00e781a3          	sb	a4,3(a5)
    80005bc0:	00300713          	li	a4,3
    80005bc4:	00e78023          	sb	a4,0(a5)
    80005bc8:	000780a3          	sb	zero,1(a5)
    80005bcc:	00e781a3          	sb	a4,3(a5)
    80005bd0:	00700693          	li	a3,7
    80005bd4:	00d78123          	sb	a3,2(a5)
    80005bd8:	00e780a3          	sb	a4,1(a5)
    80005bdc:	00813403          	ld	s0,8(sp)
    80005be0:	01010113          	addi	sp,sp,16
    80005be4:	00008067          	ret

0000000080005be8 <uartputc>:
    80005be8:	00003797          	auipc	a5,0x3
    80005bec:	2407a783          	lw	a5,576(a5) # 80008e28 <panicked>
    80005bf0:	00078463          	beqz	a5,80005bf8 <uartputc+0x10>
    80005bf4:	0000006f          	j	80005bf4 <uartputc+0xc>
    80005bf8:	fd010113          	addi	sp,sp,-48
    80005bfc:	02813023          	sd	s0,32(sp)
    80005c00:	00913c23          	sd	s1,24(sp)
    80005c04:	01213823          	sd	s2,16(sp)
    80005c08:	01313423          	sd	s3,8(sp)
    80005c0c:	02113423          	sd	ra,40(sp)
    80005c10:	03010413          	addi	s0,sp,48
    80005c14:	00003917          	auipc	s2,0x3
    80005c18:	21c90913          	addi	s2,s2,540 # 80008e30 <uart_tx_r>
    80005c1c:	00093783          	ld	a5,0(s2)
    80005c20:	00003497          	auipc	s1,0x3
    80005c24:	21848493          	addi	s1,s1,536 # 80008e38 <uart_tx_w>
    80005c28:	0004b703          	ld	a4,0(s1)
    80005c2c:	02078693          	addi	a3,a5,32
    80005c30:	00050993          	mv	s3,a0
    80005c34:	02e69c63          	bne	a3,a4,80005c6c <uartputc+0x84>
    80005c38:	00001097          	auipc	ra,0x1
    80005c3c:	834080e7          	jalr	-1996(ra) # 8000646c <push_on>
    80005c40:	00093783          	ld	a5,0(s2)
    80005c44:	0004b703          	ld	a4,0(s1)
    80005c48:	02078793          	addi	a5,a5,32
    80005c4c:	00e79463          	bne	a5,a4,80005c54 <uartputc+0x6c>
    80005c50:	0000006f          	j	80005c50 <uartputc+0x68>
    80005c54:	00001097          	auipc	ra,0x1
    80005c58:	88c080e7          	jalr	-1908(ra) # 800064e0 <pop_on>
    80005c5c:	00093783          	ld	a5,0(s2)
    80005c60:	0004b703          	ld	a4,0(s1)
    80005c64:	02078693          	addi	a3,a5,32
    80005c68:	fce688e3          	beq	a3,a4,80005c38 <uartputc+0x50>
    80005c6c:	01f77693          	andi	a3,a4,31
    80005c70:	00008597          	auipc	a1,0x8
    80005c74:	4e058593          	addi	a1,a1,1248 # 8000e150 <uart_tx_buf>
    80005c78:	00d586b3          	add	a3,a1,a3
    80005c7c:	00170713          	addi	a4,a4,1
    80005c80:	01368023          	sb	s3,0(a3)
    80005c84:	00e4b023          	sd	a4,0(s1)
    80005c88:	10000637          	lui	a2,0x10000
    80005c8c:	02f71063          	bne	a4,a5,80005cac <uartputc+0xc4>
    80005c90:	0340006f          	j	80005cc4 <uartputc+0xdc>
    80005c94:	00074703          	lbu	a4,0(a4)
    80005c98:	00f93023          	sd	a5,0(s2)
    80005c9c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80005ca0:	00093783          	ld	a5,0(s2)
    80005ca4:	0004b703          	ld	a4,0(s1)
    80005ca8:	00f70e63          	beq	a4,a5,80005cc4 <uartputc+0xdc>
    80005cac:	00564683          	lbu	a3,5(a2)
    80005cb0:	01f7f713          	andi	a4,a5,31
    80005cb4:	00e58733          	add	a4,a1,a4
    80005cb8:	0206f693          	andi	a3,a3,32
    80005cbc:	00178793          	addi	a5,a5,1
    80005cc0:	fc069ae3          	bnez	a3,80005c94 <uartputc+0xac>
    80005cc4:	02813083          	ld	ra,40(sp)
    80005cc8:	02013403          	ld	s0,32(sp)
    80005ccc:	01813483          	ld	s1,24(sp)
    80005cd0:	01013903          	ld	s2,16(sp)
    80005cd4:	00813983          	ld	s3,8(sp)
    80005cd8:	03010113          	addi	sp,sp,48
    80005cdc:	00008067          	ret

0000000080005ce0 <uartputc_sync>:
    80005ce0:	ff010113          	addi	sp,sp,-16
    80005ce4:	00813423          	sd	s0,8(sp)
    80005ce8:	01010413          	addi	s0,sp,16
    80005cec:	00003717          	auipc	a4,0x3
    80005cf0:	13c72703          	lw	a4,316(a4) # 80008e28 <panicked>
    80005cf4:	02071663          	bnez	a4,80005d20 <uartputc_sync+0x40>
    80005cf8:	00050793          	mv	a5,a0
    80005cfc:	100006b7          	lui	a3,0x10000
    80005d00:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80005d04:	02077713          	andi	a4,a4,32
    80005d08:	fe070ce3          	beqz	a4,80005d00 <uartputc_sync+0x20>
    80005d0c:	0ff7f793          	andi	a5,a5,255
    80005d10:	00f68023          	sb	a5,0(a3)
    80005d14:	00813403          	ld	s0,8(sp)
    80005d18:	01010113          	addi	sp,sp,16
    80005d1c:	00008067          	ret
    80005d20:	0000006f          	j	80005d20 <uartputc_sync+0x40>

0000000080005d24 <uartstart>:
    80005d24:	ff010113          	addi	sp,sp,-16
    80005d28:	00813423          	sd	s0,8(sp)
    80005d2c:	01010413          	addi	s0,sp,16
    80005d30:	00003617          	auipc	a2,0x3
    80005d34:	10060613          	addi	a2,a2,256 # 80008e30 <uart_tx_r>
    80005d38:	00003517          	auipc	a0,0x3
    80005d3c:	10050513          	addi	a0,a0,256 # 80008e38 <uart_tx_w>
    80005d40:	00063783          	ld	a5,0(a2)
    80005d44:	00053703          	ld	a4,0(a0)
    80005d48:	04f70263          	beq	a4,a5,80005d8c <uartstart+0x68>
    80005d4c:	100005b7          	lui	a1,0x10000
    80005d50:	00008817          	auipc	a6,0x8
    80005d54:	40080813          	addi	a6,a6,1024 # 8000e150 <uart_tx_buf>
    80005d58:	01c0006f          	j	80005d74 <uartstart+0x50>
    80005d5c:	0006c703          	lbu	a4,0(a3)
    80005d60:	00f63023          	sd	a5,0(a2)
    80005d64:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80005d68:	00063783          	ld	a5,0(a2)
    80005d6c:	00053703          	ld	a4,0(a0)
    80005d70:	00f70e63          	beq	a4,a5,80005d8c <uartstart+0x68>
    80005d74:	01f7f713          	andi	a4,a5,31
    80005d78:	00e806b3          	add	a3,a6,a4
    80005d7c:	0055c703          	lbu	a4,5(a1)
    80005d80:	00178793          	addi	a5,a5,1
    80005d84:	02077713          	andi	a4,a4,32
    80005d88:	fc071ae3          	bnez	a4,80005d5c <uartstart+0x38>
    80005d8c:	00813403          	ld	s0,8(sp)
    80005d90:	01010113          	addi	sp,sp,16
    80005d94:	00008067          	ret

0000000080005d98 <uartgetc>:
    80005d98:	ff010113          	addi	sp,sp,-16
    80005d9c:	00813423          	sd	s0,8(sp)
    80005da0:	01010413          	addi	s0,sp,16
    80005da4:	10000737          	lui	a4,0x10000
    80005da8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80005dac:	0017f793          	andi	a5,a5,1
    80005db0:	00078c63          	beqz	a5,80005dc8 <uartgetc+0x30>
    80005db4:	00074503          	lbu	a0,0(a4)
    80005db8:	0ff57513          	andi	a0,a0,255
    80005dbc:	00813403          	ld	s0,8(sp)
    80005dc0:	01010113          	addi	sp,sp,16
    80005dc4:	00008067          	ret
    80005dc8:	fff00513          	li	a0,-1
    80005dcc:	ff1ff06f          	j	80005dbc <uartgetc+0x24>

0000000080005dd0 <uartintr>:
    80005dd0:	100007b7          	lui	a5,0x10000
    80005dd4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80005dd8:	0017f793          	andi	a5,a5,1
    80005ddc:	0a078463          	beqz	a5,80005e84 <uartintr+0xb4>
    80005de0:	fe010113          	addi	sp,sp,-32
    80005de4:	00813823          	sd	s0,16(sp)
    80005de8:	00913423          	sd	s1,8(sp)
    80005dec:	00113c23          	sd	ra,24(sp)
    80005df0:	02010413          	addi	s0,sp,32
    80005df4:	100004b7          	lui	s1,0x10000
    80005df8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80005dfc:	0ff57513          	andi	a0,a0,255
    80005e00:	fffff097          	auipc	ra,0xfffff
    80005e04:	534080e7          	jalr	1332(ra) # 80005334 <consoleintr>
    80005e08:	0054c783          	lbu	a5,5(s1)
    80005e0c:	0017f793          	andi	a5,a5,1
    80005e10:	fe0794e3          	bnez	a5,80005df8 <uartintr+0x28>
    80005e14:	00003617          	auipc	a2,0x3
    80005e18:	01c60613          	addi	a2,a2,28 # 80008e30 <uart_tx_r>
    80005e1c:	00003517          	auipc	a0,0x3
    80005e20:	01c50513          	addi	a0,a0,28 # 80008e38 <uart_tx_w>
    80005e24:	00063783          	ld	a5,0(a2)
    80005e28:	00053703          	ld	a4,0(a0)
    80005e2c:	04f70263          	beq	a4,a5,80005e70 <uartintr+0xa0>
    80005e30:	100005b7          	lui	a1,0x10000
    80005e34:	00008817          	auipc	a6,0x8
    80005e38:	31c80813          	addi	a6,a6,796 # 8000e150 <uart_tx_buf>
    80005e3c:	01c0006f          	j	80005e58 <uartintr+0x88>
    80005e40:	0006c703          	lbu	a4,0(a3)
    80005e44:	00f63023          	sd	a5,0(a2)
    80005e48:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80005e4c:	00063783          	ld	a5,0(a2)
    80005e50:	00053703          	ld	a4,0(a0)
    80005e54:	00f70e63          	beq	a4,a5,80005e70 <uartintr+0xa0>
    80005e58:	01f7f713          	andi	a4,a5,31
    80005e5c:	00e806b3          	add	a3,a6,a4
    80005e60:	0055c703          	lbu	a4,5(a1)
    80005e64:	00178793          	addi	a5,a5,1
    80005e68:	02077713          	andi	a4,a4,32
    80005e6c:	fc071ae3          	bnez	a4,80005e40 <uartintr+0x70>
    80005e70:	01813083          	ld	ra,24(sp)
    80005e74:	01013403          	ld	s0,16(sp)
    80005e78:	00813483          	ld	s1,8(sp)
    80005e7c:	02010113          	addi	sp,sp,32
    80005e80:	00008067          	ret
    80005e84:	00003617          	auipc	a2,0x3
    80005e88:	fac60613          	addi	a2,a2,-84 # 80008e30 <uart_tx_r>
    80005e8c:	00003517          	auipc	a0,0x3
    80005e90:	fac50513          	addi	a0,a0,-84 # 80008e38 <uart_tx_w>
    80005e94:	00063783          	ld	a5,0(a2)
    80005e98:	00053703          	ld	a4,0(a0)
    80005e9c:	04f70263          	beq	a4,a5,80005ee0 <uartintr+0x110>
    80005ea0:	100005b7          	lui	a1,0x10000
    80005ea4:	00008817          	auipc	a6,0x8
    80005ea8:	2ac80813          	addi	a6,a6,684 # 8000e150 <uart_tx_buf>
    80005eac:	01c0006f          	j	80005ec8 <uartintr+0xf8>
    80005eb0:	0006c703          	lbu	a4,0(a3)
    80005eb4:	00f63023          	sd	a5,0(a2)
    80005eb8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80005ebc:	00063783          	ld	a5,0(a2)
    80005ec0:	00053703          	ld	a4,0(a0)
    80005ec4:	02f70063          	beq	a4,a5,80005ee4 <uartintr+0x114>
    80005ec8:	01f7f713          	andi	a4,a5,31
    80005ecc:	00e806b3          	add	a3,a6,a4
    80005ed0:	0055c703          	lbu	a4,5(a1)
    80005ed4:	00178793          	addi	a5,a5,1
    80005ed8:	02077713          	andi	a4,a4,32
    80005edc:	fc071ae3          	bnez	a4,80005eb0 <uartintr+0xe0>
    80005ee0:	00008067          	ret
    80005ee4:	00008067          	ret

0000000080005ee8 <kinit>:
    80005ee8:	fc010113          	addi	sp,sp,-64
    80005eec:	02913423          	sd	s1,40(sp)
    80005ef0:	fffff7b7          	lui	a5,0xfffff
    80005ef4:	00009497          	auipc	s1,0x9
    80005ef8:	27b48493          	addi	s1,s1,635 # 8000f16f <end+0xfff>
    80005efc:	02813823          	sd	s0,48(sp)
    80005f00:	01313c23          	sd	s3,24(sp)
    80005f04:	00f4f4b3          	and	s1,s1,a5
    80005f08:	02113c23          	sd	ra,56(sp)
    80005f0c:	03213023          	sd	s2,32(sp)
    80005f10:	01413823          	sd	s4,16(sp)
    80005f14:	01513423          	sd	s5,8(sp)
    80005f18:	04010413          	addi	s0,sp,64
    80005f1c:	000017b7          	lui	a5,0x1
    80005f20:	01100993          	li	s3,17
    80005f24:	00f487b3          	add	a5,s1,a5
    80005f28:	01b99993          	slli	s3,s3,0x1b
    80005f2c:	06f9e063          	bltu	s3,a5,80005f8c <kinit+0xa4>
    80005f30:	00008a97          	auipc	s5,0x8
    80005f34:	240a8a93          	addi	s5,s5,576 # 8000e170 <end>
    80005f38:	0754ec63          	bltu	s1,s5,80005fb0 <kinit+0xc8>
    80005f3c:	0734fa63          	bgeu	s1,s3,80005fb0 <kinit+0xc8>
    80005f40:	00088a37          	lui	s4,0x88
    80005f44:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80005f48:	00003917          	auipc	s2,0x3
    80005f4c:	ef890913          	addi	s2,s2,-264 # 80008e40 <kmem>
    80005f50:	00ca1a13          	slli	s4,s4,0xc
    80005f54:	0140006f          	j	80005f68 <kinit+0x80>
    80005f58:	000017b7          	lui	a5,0x1
    80005f5c:	00f484b3          	add	s1,s1,a5
    80005f60:	0554e863          	bltu	s1,s5,80005fb0 <kinit+0xc8>
    80005f64:	0534f663          	bgeu	s1,s3,80005fb0 <kinit+0xc8>
    80005f68:	00001637          	lui	a2,0x1
    80005f6c:	00100593          	li	a1,1
    80005f70:	00048513          	mv	a0,s1
    80005f74:	00000097          	auipc	ra,0x0
    80005f78:	5e4080e7          	jalr	1508(ra) # 80006558 <__memset>
    80005f7c:	00093783          	ld	a5,0(s2)
    80005f80:	00f4b023          	sd	a5,0(s1)
    80005f84:	00993023          	sd	s1,0(s2)
    80005f88:	fd4498e3          	bne	s1,s4,80005f58 <kinit+0x70>
    80005f8c:	03813083          	ld	ra,56(sp)
    80005f90:	03013403          	ld	s0,48(sp)
    80005f94:	02813483          	ld	s1,40(sp)
    80005f98:	02013903          	ld	s2,32(sp)
    80005f9c:	01813983          	ld	s3,24(sp)
    80005fa0:	01013a03          	ld	s4,16(sp)
    80005fa4:	00813a83          	ld	s5,8(sp)
    80005fa8:	04010113          	addi	sp,sp,64
    80005fac:	00008067          	ret
    80005fb0:	00001517          	auipc	a0,0x1
    80005fb4:	41850513          	addi	a0,a0,1048 # 800073c8 <digits+0x18>
    80005fb8:	fffff097          	auipc	ra,0xfffff
    80005fbc:	4b4080e7          	jalr	1204(ra) # 8000546c <panic>

0000000080005fc0 <freerange>:
    80005fc0:	fc010113          	addi	sp,sp,-64
    80005fc4:	000017b7          	lui	a5,0x1
    80005fc8:	02913423          	sd	s1,40(sp)
    80005fcc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80005fd0:	009504b3          	add	s1,a0,s1
    80005fd4:	fffff537          	lui	a0,0xfffff
    80005fd8:	02813823          	sd	s0,48(sp)
    80005fdc:	02113c23          	sd	ra,56(sp)
    80005fe0:	03213023          	sd	s2,32(sp)
    80005fe4:	01313c23          	sd	s3,24(sp)
    80005fe8:	01413823          	sd	s4,16(sp)
    80005fec:	01513423          	sd	s5,8(sp)
    80005ff0:	01613023          	sd	s6,0(sp)
    80005ff4:	04010413          	addi	s0,sp,64
    80005ff8:	00a4f4b3          	and	s1,s1,a0
    80005ffc:	00f487b3          	add	a5,s1,a5
    80006000:	06f5e463          	bltu	a1,a5,80006068 <freerange+0xa8>
    80006004:	00008a97          	auipc	s5,0x8
    80006008:	16ca8a93          	addi	s5,s5,364 # 8000e170 <end>
    8000600c:	0954e263          	bltu	s1,s5,80006090 <freerange+0xd0>
    80006010:	01100993          	li	s3,17
    80006014:	01b99993          	slli	s3,s3,0x1b
    80006018:	0734fc63          	bgeu	s1,s3,80006090 <freerange+0xd0>
    8000601c:	00058a13          	mv	s4,a1
    80006020:	00003917          	auipc	s2,0x3
    80006024:	e2090913          	addi	s2,s2,-480 # 80008e40 <kmem>
    80006028:	00002b37          	lui	s6,0x2
    8000602c:	0140006f          	j	80006040 <freerange+0x80>
    80006030:	000017b7          	lui	a5,0x1
    80006034:	00f484b3          	add	s1,s1,a5
    80006038:	0554ec63          	bltu	s1,s5,80006090 <freerange+0xd0>
    8000603c:	0534fa63          	bgeu	s1,s3,80006090 <freerange+0xd0>
    80006040:	00001637          	lui	a2,0x1
    80006044:	00100593          	li	a1,1
    80006048:	00048513          	mv	a0,s1
    8000604c:	00000097          	auipc	ra,0x0
    80006050:	50c080e7          	jalr	1292(ra) # 80006558 <__memset>
    80006054:	00093703          	ld	a4,0(s2)
    80006058:	016487b3          	add	a5,s1,s6
    8000605c:	00e4b023          	sd	a4,0(s1)
    80006060:	00993023          	sd	s1,0(s2)
    80006064:	fcfa76e3          	bgeu	s4,a5,80006030 <freerange+0x70>
    80006068:	03813083          	ld	ra,56(sp)
    8000606c:	03013403          	ld	s0,48(sp)
    80006070:	02813483          	ld	s1,40(sp)
    80006074:	02013903          	ld	s2,32(sp)
    80006078:	01813983          	ld	s3,24(sp)
    8000607c:	01013a03          	ld	s4,16(sp)
    80006080:	00813a83          	ld	s5,8(sp)
    80006084:	00013b03          	ld	s6,0(sp)
    80006088:	04010113          	addi	sp,sp,64
    8000608c:	00008067          	ret
    80006090:	00001517          	auipc	a0,0x1
    80006094:	33850513          	addi	a0,a0,824 # 800073c8 <digits+0x18>
    80006098:	fffff097          	auipc	ra,0xfffff
    8000609c:	3d4080e7          	jalr	980(ra) # 8000546c <panic>

00000000800060a0 <kfree>:
    800060a0:	fe010113          	addi	sp,sp,-32
    800060a4:	00813823          	sd	s0,16(sp)
    800060a8:	00113c23          	sd	ra,24(sp)
    800060ac:	00913423          	sd	s1,8(sp)
    800060b0:	02010413          	addi	s0,sp,32
    800060b4:	03451793          	slli	a5,a0,0x34
    800060b8:	04079c63          	bnez	a5,80006110 <kfree+0x70>
    800060bc:	00008797          	auipc	a5,0x8
    800060c0:	0b478793          	addi	a5,a5,180 # 8000e170 <end>
    800060c4:	00050493          	mv	s1,a0
    800060c8:	04f56463          	bltu	a0,a5,80006110 <kfree+0x70>
    800060cc:	01100793          	li	a5,17
    800060d0:	01b79793          	slli	a5,a5,0x1b
    800060d4:	02f57e63          	bgeu	a0,a5,80006110 <kfree+0x70>
    800060d8:	00001637          	lui	a2,0x1
    800060dc:	00100593          	li	a1,1
    800060e0:	00000097          	auipc	ra,0x0
    800060e4:	478080e7          	jalr	1144(ra) # 80006558 <__memset>
    800060e8:	00003797          	auipc	a5,0x3
    800060ec:	d5878793          	addi	a5,a5,-680 # 80008e40 <kmem>
    800060f0:	0007b703          	ld	a4,0(a5)
    800060f4:	01813083          	ld	ra,24(sp)
    800060f8:	01013403          	ld	s0,16(sp)
    800060fc:	00e4b023          	sd	a4,0(s1)
    80006100:	0097b023          	sd	s1,0(a5)
    80006104:	00813483          	ld	s1,8(sp)
    80006108:	02010113          	addi	sp,sp,32
    8000610c:	00008067          	ret
    80006110:	00001517          	auipc	a0,0x1
    80006114:	2b850513          	addi	a0,a0,696 # 800073c8 <digits+0x18>
    80006118:	fffff097          	auipc	ra,0xfffff
    8000611c:	354080e7          	jalr	852(ra) # 8000546c <panic>

0000000080006120 <kalloc>:
    80006120:	fe010113          	addi	sp,sp,-32
    80006124:	00813823          	sd	s0,16(sp)
    80006128:	00913423          	sd	s1,8(sp)
    8000612c:	00113c23          	sd	ra,24(sp)
    80006130:	02010413          	addi	s0,sp,32
    80006134:	00003797          	auipc	a5,0x3
    80006138:	d0c78793          	addi	a5,a5,-756 # 80008e40 <kmem>
    8000613c:	0007b483          	ld	s1,0(a5)
    80006140:	02048063          	beqz	s1,80006160 <kalloc+0x40>
    80006144:	0004b703          	ld	a4,0(s1)
    80006148:	00001637          	lui	a2,0x1
    8000614c:	00500593          	li	a1,5
    80006150:	00048513          	mv	a0,s1
    80006154:	00e7b023          	sd	a4,0(a5)
    80006158:	00000097          	auipc	ra,0x0
    8000615c:	400080e7          	jalr	1024(ra) # 80006558 <__memset>
    80006160:	01813083          	ld	ra,24(sp)
    80006164:	01013403          	ld	s0,16(sp)
    80006168:	00048513          	mv	a0,s1
    8000616c:	00813483          	ld	s1,8(sp)
    80006170:	02010113          	addi	sp,sp,32
    80006174:	00008067          	ret

0000000080006178 <initlock>:
    80006178:	ff010113          	addi	sp,sp,-16
    8000617c:	00813423          	sd	s0,8(sp)
    80006180:	01010413          	addi	s0,sp,16
    80006184:	00813403          	ld	s0,8(sp)
    80006188:	00b53423          	sd	a1,8(a0)
    8000618c:	00052023          	sw	zero,0(a0)
    80006190:	00053823          	sd	zero,16(a0)
    80006194:	01010113          	addi	sp,sp,16
    80006198:	00008067          	ret

000000008000619c <acquire>:
    8000619c:	fe010113          	addi	sp,sp,-32
    800061a0:	00813823          	sd	s0,16(sp)
    800061a4:	00913423          	sd	s1,8(sp)
    800061a8:	00113c23          	sd	ra,24(sp)
    800061ac:	01213023          	sd	s2,0(sp)
    800061b0:	02010413          	addi	s0,sp,32
    800061b4:	00050493          	mv	s1,a0
    800061b8:	10002973          	csrr	s2,sstatus
    800061bc:	100027f3          	csrr	a5,sstatus
    800061c0:	ffd7f793          	andi	a5,a5,-3
    800061c4:	10079073          	csrw	sstatus,a5
    800061c8:	fffff097          	auipc	ra,0xfffff
    800061cc:	8e0080e7          	jalr	-1824(ra) # 80004aa8 <mycpu>
    800061d0:	07852783          	lw	a5,120(a0)
    800061d4:	06078e63          	beqz	a5,80006250 <acquire+0xb4>
    800061d8:	fffff097          	auipc	ra,0xfffff
    800061dc:	8d0080e7          	jalr	-1840(ra) # 80004aa8 <mycpu>
    800061e0:	07852783          	lw	a5,120(a0)
    800061e4:	0004a703          	lw	a4,0(s1)
    800061e8:	0017879b          	addiw	a5,a5,1
    800061ec:	06f52c23          	sw	a5,120(a0)
    800061f0:	04071063          	bnez	a4,80006230 <acquire+0x94>
    800061f4:	00100713          	li	a4,1
    800061f8:	00070793          	mv	a5,a4
    800061fc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80006200:	0007879b          	sext.w	a5,a5
    80006204:	fe079ae3          	bnez	a5,800061f8 <acquire+0x5c>
    80006208:	0ff0000f          	fence
    8000620c:	fffff097          	auipc	ra,0xfffff
    80006210:	89c080e7          	jalr	-1892(ra) # 80004aa8 <mycpu>
    80006214:	01813083          	ld	ra,24(sp)
    80006218:	01013403          	ld	s0,16(sp)
    8000621c:	00a4b823          	sd	a0,16(s1)
    80006220:	00013903          	ld	s2,0(sp)
    80006224:	00813483          	ld	s1,8(sp)
    80006228:	02010113          	addi	sp,sp,32
    8000622c:	00008067          	ret
    80006230:	0104b903          	ld	s2,16(s1)
    80006234:	fffff097          	auipc	ra,0xfffff
    80006238:	874080e7          	jalr	-1932(ra) # 80004aa8 <mycpu>
    8000623c:	faa91ce3          	bne	s2,a0,800061f4 <acquire+0x58>
    80006240:	00001517          	auipc	a0,0x1
    80006244:	19050513          	addi	a0,a0,400 # 800073d0 <digits+0x20>
    80006248:	fffff097          	auipc	ra,0xfffff
    8000624c:	224080e7          	jalr	548(ra) # 8000546c <panic>
    80006250:	00195913          	srli	s2,s2,0x1
    80006254:	fffff097          	auipc	ra,0xfffff
    80006258:	854080e7          	jalr	-1964(ra) # 80004aa8 <mycpu>
    8000625c:	00197913          	andi	s2,s2,1
    80006260:	07252e23          	sw	s2,124(a0)
    80006264:	f75ff06f          	j	800061d8 <acquire+0x3c>

0000000080006268 <release>:
    80006268:	fe010113          	addi	sp,sp,-32
    8000626c:	00813823          	sd	s0,16(sp)
    80006270:	00113c23          	sd	ra,24(sp)
    80006274:	00913423          	sd	s1,8(sp)
    80006278:	01213023          	sd	s2,0(sp)
    8000627c:	02010413          	addi	s0,sp,32
    80006280:	00052783          	lw	a5,0(a0)
    80006284:	00079a63          	bnez	a5,80006298 <release+0x30>
    80006288:	00001517          	auipc	a0,0x1
    8000628c:	15050513          	addi	a0,a0,336 # 800073d8 <digits+0x28>
    80006290:	fffff097          	auipc	ra,0xfffff
    80006294:	1dc080e7          	jalr	476(ra) # 8000546c <panic>
    80006298:	01053903          	ld	s2,16(a0)
    8000629c:	00050493          	mv	s1,a0
    800062a0:	fffff097          	auipc	ra,0xfffff
    800062a4:	808080e7          	jalr	-2040(ra) # 80004aa8 <mycpu>
    800062a8:	fea910e3          	bne	s2,a0,80006288 <release+0x20>
    800062ac:	0004b823          	sd	zero,16(s1)
    800062b0:	0ff0000f          	fence
    800062b4:	0f50000f          	fence	iorw,ow
    800062b8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800062bc:	ffffe097          	auipc	ra,0xffffe
    800062c0:	7ec080e7          	jalr	2028(ra) # 80004aa8 <mycpu>
    800062c4:	100027f3          	csrr	a5,sstatus
    800062c8:	0027f793          	andi	a5,a5,2
    800062cc:	04079a63          	bnez	a5,80006320 <release+0xb8>
    800062d0:	07852783          	lw	a5,120(a0)
    800062d4:	02f05e63          	blez	a5,80006310 <release+0xa8>
    800062d8:	fff7871b          	addiw	a4,a5,-1
    800062dc:	06e52c23          	sw	a4,120(a0)
    800062e0:	00071c63          	bnez	a4,800062f8 <release+0x90>
    800062e4:	07c52783          	lw	a5,124(a0)
    800062e8:	00078863          	beqz	a5,800062f8 <release+0x90>
    800062ec:	100027f3          	csrr	a5,sstatus
    800062f0:	0027e793          	ori	a5,a5,2
    800062f4:	10079073          	csrw	sstatus,a5
    800062f8:	01813083          	ld	ra,24(sp)
    800062fc:	01013403          	ld	s0,16(sp)
    80006300:	00813483          	ld	s1,8(sp)
    80006304:	00013903          	ld	s2,0(sp)
    80006308:	02010113          	addi	sp,sp,32
    8000630c:	00008067          	ret
    80006310:	00001517          	auipc	a0,0x1
    80006314:	0e850513          	addi	a0,a0,232 # 800073f8 <digits+0x48>
    80006318:	fffff097          	auipc	ra,0xfffff
    8000631c:	154080e7          	jalr	340(ra) # 8000546c <panic>
    80006320:	00001517          	auipc	a0,0x1
    80006324:	0c050513          	addi	a0,a0,192 # 800073e0 <digits+0x30>
    80006328:	fffff097          	auipc	ra,0xfffff
    8000632c:	144080e7          	jalr	324(ra) # 8000546c <panic>

0000000080006330 <holding>:
    80006330:	00052783          	lw	a5,0(a0)
    80006334:	00079663          	bnez	a5,80006340 <holding+0x10>
    80006338:	00000513          	li	a0,0
    8000633c:	00008067          	ret
    80006340:	fe010113          	addi	sp,sp,-32
    80006344:	00813823          	sd	s0,16(sp)
    80006348:	00913423          	sd	s1,8(sp)
    8000634c:	00113c23          	sd	ra,24(sp)
    80006350:	02010413          	addi	s0,sp,32
    80006354:	01053483          	ld	s1,16(a0)
    80006358:	ffffe097          	auipc	ra,0xffffe
    8000635c:	750080e7          	jalr	1872(ra) # 80004aa8 <mycpu>
    80006360:	01813083          	ld	ra,24(sp)
    80006364:	01013403          	ld	s0,16(sp)
    80006368:	40a48533          	sub	a0,s1,a0
    8000636c:	00153513          	seqz	a0,a0
    80006370:	00813483          	ld	s1,8(sp)
    80006374:	02010113          	addi	sp,sp,32
    80006378:	00008067          	ret

000000008000637c <push_off>:
    8000637c:	fe010113          	addi	sp,sp,-32
    80006380:	00813823          	sd	s0,16(sp)
    80006384:	00113c23          	sd	ra,24(sp)
    80006388:	00913423          	sd	s1,8(sp)
    8000638c:	02010413          	addi	s0,sp,32
    80006390:	100024f3          	csrr	s1,sstatus
    80006394:	100027f3          	csrr	a5,sstatus
    80006398:	ffd7f793          	andi	a5,a5,-3
    8000639c:	10079073          	csrw	sstatus,a5
    800063a0:	ffffe097          	auipc	ra,0xffffe
    800063a4:	708080e7          	jalr	1800(ra) # 80004aa8 <mycpu>
    800063a8:	07852783          	lw	a5,120(a0)
    800063ac:	02078663          	beqz	a5,800063d8 <push_off+0x5c>
    800063b0:	ffffe097          	auipc	ra,0xffffe
    800063b4:	6f8080e7          	jalr	1784(ra) # 80004aa8 <mycpu>
    800063b8:	07852783          	lw	a5,120(a0)
    800063bc:	01813083          	ld	ra,24(sp)
    800063c0:	01013403          	ld	s0,16(sp)
    800063c4:	0017879b          	addiw	a5,a5,1
    800063c8:	06f52c23          	sw	a5,120(a0)
    800063cc:	00813483          	ld	s1,8(sp)
    800063d0:	02010113          	addi	sp,sp,32
    800063d4:	00008067          	ret
    800063d8:	0014d493          	srli	s1,s1,0x1
    800063dc:	ffffe097          	auipc	ra,0xffffe
    800063e0:	6cc080e7          	jalr	1740(ra) # 80004aa8 <mycpu>
    800063e4:	0014f493          	andi	s1,s1,1
    800063e8:	06952e23          	sw	s1,124(a0)
    800063ec:	fc5ff06f          	j	800063b0 <push_off+0x34>

00000000800063f0 <pop_off>:
    800063f0:	ff010113          	addi	sp,sp,-16
    800063f4:	00813023          	sd	s0,0(sp)
    800063f8:	00113423          	sd	ra,8(sp)
    800063fc:	01010413          	addi	s0,sp,16
    80006400:	ffffe097          	auipc	ra,0xffffe
    80006404:	6a8080e7          	jalr	1704(ra) # 80004aa8 <mycpu>
    80006408:	100027f3          	csrr	a5,sstatus
    8000640c:	0027f793          	andi	a5,a5,2
    80006410:	04079663          	bnez	a5,8000645c <pop_off+0x6c>
    80006414:	07852783          	lw	a5,120(a0)
    80006418:	02f05a63          	blez	a5,8000644c <pop_off+0x5c>
    8000641c:	fff7871b          	addiw	a4,a5,-1
    80006420:	06e52c23          	sw	a4,120(a0)
    80006424:	00071c63          	bnez	a4,8000643c <pop_off+0x4c>
    80006428:	07c52783          	lw	a5,124(a0)
    8000642c:	00078863          	beqz	a5,8000643c <pop_off+0x4c>
    80006430:	100027f3          	csrr	a5,sstatus
    80006434:	0027e793          	ori	a5,a5,2
    80006438:	10079073          	csrw	sstatus,a5
    8000643c:	00813083          	ld	ra,8(sp)
    80006440:	00013403          	ld	s0,0(sp)
    80006444:	01010113          	addi	sp,sp,16
    80006448:	00008067          	ret
    8000644c:	00001517          	auipc	a0,0x1
    80006450:	fac50513          	addi	a0,a0,-84 # 800073f8 <digits+0x48>
    80006454:	fffff097          	auipc	ra,0xfffff
    80006458:	018080e7          	jalr	24(ra) # 8000546c <panic>
    8000645c:	00001517          	auipc	a0,0x1
    80006460:	f8450513          	addi	a0,a0,-124 # 800073e0 <digits+0x30>
    80006464:	fffff097          	auipc	ra,0xfffff
    80006468:	008080e7          	jalr	8(ra) # 8000546c <panic>

000000008000646c <push_on>:
    8000646c:	fe010113          	addi	sp,sp,-32
    80006470:	00813823          	sd	s0,16(sp)
    80006474:	00113c23          	sd	ra,24(sp)
    80006478:	00913423          	sd	s1,8(sp)
    8000647c:	02010413          	addi	s0,sp,32
    80006480:	100024f3          	csrr	s1,sstatus
    80006484:	100027f3          	csrr	a5,sstatus
    80006488:	0027e793          	ori	a5,a5,2
    8000648c:	10079073          	csrw	sstatus,a5
    80006490:	ffffe097          	auipc	ra,0xffffe
    80006494:	618080e7          	jalr	1560(ra) # 80004aa8 <mycpu>
    80006498:	07852783          	lw	a5,120(a0)
    8000649c:	02078663          	beqz	a5,800064c8 <push_on+0x5c>
    800064a0:	ffffe097          	auipc	ra,0xffffe
    800064a4:	608080e7          	jalr	1544(ra) # 80004aa8 <mycpu>
    800064a8:	07852783          	lw	a5,120(a0)
    800064ac:	01813083          	ld	ra,24(sp)
    800064b0:	01013403          	ld	s0,16(sp)
    800064b4:	0017879b          	addiw	a5,a5,1
    800064b8:	06f52c23          	sw	a5,120(a0)
    800064bc:	00813483          	ld	s1,8(sp)
    800064c0:	02010113          	addi	sp,sp,32
    800064c4:	00008067          	ret
    800064c8:	0014d493          	srli	s1,s1,0x1
    800064cc:	ffffe097          	auipc	ra,0xffffe
    800064d0:	5dc080e7          	jalr	1500(ra) # 80004aa8 <mycpu>
    800064d4:	0014f493          	andi	s1,s1,1
    800064d8:	06952e23          	sw	s1,124(a0)
    800064dc:	fc5ff06f          	j	800064a0 <push_on+0x34>

00000000800064e0 <pop_on>:
    800064e0:	ff010113          	addi	sp,sp,-16
    800064e4:	00813023          	sd	s0,0(sp)
    800064e8:	00113423          	sd	ra,8(sp)
    800064ec:	01010413          	addi	s0,sp,16
    800064f0:	ffffe097          	auipc	ra,0xffffe
    800064f4:	5b8080e7          	jalr	1464(ra) # 80004aa8 <mycpu>
    800064f8:	100027f3          	csrr	a5,sstatus
    800064fc:	0027f793          	andi	a5,a5,2
    80006500:	04078463          	beqz	a5,80006548 <pop_on+0x68>
    80006504:	07852783          	lw	a5,120(a0)
    80006508:	02f05863          	blez	a5,80006538 <pop_on+0x58>
    8000650c:	fff7879b          	addiw	a5,a5,-1
    80006510:	06f52c23          	sw	a5,120(a0)
    80006514:	07853783          	ld	a5,120(a0)
    80006518:	00079863          	bnez	a5,80006528 <pop_on+0x48>
    8000651c:	100027f3          	csrr	a5,sstatus
    80006520:	ffd7f793          	andi	a5,a5,-3
    80006524:	10079073          	csrw	sstatus,a5
    80006528:	00813083          	ld	ra,8(sp)
    8000652c:	00013403          	ld	s0,0(sp)
    80006530:	01010113          	addi	sp,sp,16
    80006534:	00008067          	ret
    80006538:	00001517          	auipc	a0,0x1
    8000653c:	ee850513          	addi	a0,a0,-280 # 80007420 <digits+0x70>
    80006540:	fffff097          	auipc	ra,0xfffff
    80006544:	f2c080e7          	jalr	-212(ra) # 8000546c <panic>
    80006548:	00001517          	auipc	a0,0x1
    8000654c:	eb850513          	addi	a0,a0,-328 # 80007400 <digits+0x50>
    80006550:	fffff097          	auipc	ra,0xfffff
    80006554:	f1c080e7          	jalr	-228(ra) # 8000546c <panic>

0000000080006558 <__memset>:
    80006558:	ff010113          	addi	sp,sp,-16
    8000655c:	00813423          	sd	s0,8(sp)
    80006560:	01010413          	addi	s0,sp,16
    80006564:	1a060e63          	beqz	a2,80006720 <__memset+0x1c8>
    80006568:	40a007b3          	neg	a5,a0
    8000656c:	0077f793          	andi	a5,a5,7
    80006570:	00778693          	addi	a3,a5,7
    80006574:	00b00813          	li	a6,11
    80006578:	0ff5f593          	andi	a1,a1,255
    8000657c:	fff6071b          	addiw	a4,a2,-1
    80006580:	1b06e663          	bltu	a3,a6,8000672c <__memset+0x1d4>
    80006584:	1cd76463          	bltu	a4,a3,8000674c <__memset+0x1f4>
    80006588:	1a078e63          	beqz	a5,80006744 <__memset+0x1ec>
    8000658c:	00b50023          	sb	a1,0(a0)
    80006590:	00100713          	li	a4,1
    80006594:	1ae78463          	beq	a5,a4,8000673c <__memset+0x1e4>
    80006598:	00b500a3          	sb	a1,1(a0)
    8000659c:	00200713          	li	a4,2
    800065a0:	1ae78a63          	beq	a5,a4,80006754 <__memset+0x1fc>
    800065a4:	00b50123          	sb	a1,2(a0)
    800065a8:	00300713          	li	a4,3
    800065ac:	18e78463          	beq	a5,a4,80006734 <__memset+0x1dc>
    800065b0:	00b501a3          	sb	a1,3(a0)
    800065b4:	00400713          	li	a4,4
    800065b8:	1ae78263          	beq	a5,a4,8000675c <__memset+0x204>
    800065bc:	00b50223          	sb	a1,4(a0)
    800065c0:	00500713          	li	a4,5
    800065c4:	1ae78063          	beq	a5,a4,80006764 <__memset+0x20c>
    800065c8:	00b502a3          	sb	a1,5(a0)
    800065cc:	00700713          	li	a4,7
    800065d0:	18e79e63          	bne	a5,a4,8000676c <__memset+0x214>
    800065d4:	00b50323          	sb	a1,6(a0)
    800065d8:	00700e93          	li	t4,7
    800065dc:	00859713          	slli	a4,a1,0x8
    800065e0:	00e5e733          	or	a4,a1,a4
    800065e4:	01059e13          	slli	t3,a1,0x10
    800065e8:	01c76e33          	or	t3,a4,t3
    800065ec:	01859313          	slli	t1,a1,0x18
    800065f0:	006e6333          	or	t1,t3,t1
    800065f4:	02059893          	slli	a7,a1,0x20
    800065f8:	40f60e3b          	subw	t3,a2,a5
    800065fc:	011368b3          	or	a7,t1,a7
    80006600:	02859813          	slli	a6,a1,0x28
    80006604:	0108e833          	or	a6,a7,a6
    80006608:	03059693          	slli	a3,a1,0x30
    8000660c:	003e589b          	srliw	a7,t3,0x3
    80006610:	00d866b3          	or	a3,a6,a3
    80006614:	03859713          	slli	a4,a1,0x38
    80006618:	00389813          	slli	a6,a7,0x3
    8000661c:	00f507b3          	add	a5,a0,a5
    80006620:	00e6e733          	or	a4,a3,a4
    80006624:	000e089b          	sext.w	a7,t3
    80006628:	00f806b3          	add	a3,a6,a5
    8000662c:	00e7b023          	sd	a4,0(a5)
    80006630:	00878793          	addi	a5,a5,8
    80006634:	fed79ce3          	bne	a5,a3,8000662c <__memset+0xd4>
    80006638:	ff8e7793          	andi	a5,t3,-8
    8000663c:	0007871b          	sext.w	a4,a5
    80006640:	01d787bb          	addw	a5,a5,t4
    80006644:	0ce88e63          	beq	a7,a4,80006720 <__memset+0x1c8>
    80006648:	00f50733          	add	a4,a0,a5
    8000664c:	00b70023          	sb	a1,0(a4)
    80006650:	0017871b          	addiw	a4,a5,1
    80006654:	0cc77663          	bgeu	a4,a2,80006720 <__memset+0x1c8>
    80006658:	00e50733          	add	a4,a0,a4
    8000665c:	00b70023          	sb	a1,0(a4)
    80006660:	0027871b          	addiw	a4,a5,2
    80006664:	0ac77e63          	bgeu	a4,a2,80006720 <__memset+0x1c8>
    80006668:	00e50733          	add	a4,a0,a4
    8000666c:	00b70023          	sb	a1,0(a4)
    80006670:	0037871b          	addiw	a4,a5,3
    80006674:	0ac77663          	bgeu	a4,a2,80006720 <__memset+0x1c8>
    80006678:	00e50733          	add	a4,a0,a4
    8000667c:	00b70023          	sb	a1,0(a4)
    80006680:	0047871b          	addiw	a4,a5,4
    80006684:	08c77e63          	bgeu	a4,a2,80006720 <__memset+0x1c8>
    80006688:	00e50733          	add	a4,a0,a4
    8000668c:	00b70023          	sb	a1,0(a4)
    80006690:	0057871b          	addiw	a4,a5,5
    80006694:	08c77663          	bgeu	a4,a2,80006720 <__memset+0x1c8>
    80006698:	00e50733          	add	a4,a0,a4
    8000669c:	00b70023          	sb	a1,0(a4)
    800066a0:	0067871b          	addiw	a4,a5,6
    800066a4:	06c77e63          	bgeu	a4,a2,80006720 <__memset+0x1c8>
    800066a8:	00e50733          	add	a4,a0,a4
    800066ac:	00b70023          	sb	a1,0(a4)
    800066b0:	0077871b          	addiw	a4,a5,7
    800066b4:	06c77663          	bgeu	a4,a2,80006720 <__memset+0x1c8>
    800066b8:	00e50733          	add	a4,a0,a4
    800066bc:	00b70023          	sb	a1,0(a4)
    800066c0:	0087871b          	addiw	a4,a5,8
    800066c4:	04c77e63          	bgeu	a4,a2,80006720 <__memset+0x1c8>
    800066c8:	00e50733          	add	a4,a0,a4
    800066cc:	00b70023          	sb	a1,0(a4)
    800066d0:	0097871b          	addiw	a4,a5,9
    800066d4:	04c77663          	bgeu	a4,a2,80006720 <__memset+0x1c8>
    800066d8:	00e50733          	add	a4,a0,a4
    800066dc:	00b70023          	sb	a1,0(a4)
    800066e0:	00a7871b          	addiw	a4,a5,10
    800066e4:	02c77e63          	bgeu	a4,a2,80006720 <__memset+0x1c8>
    800066e8:	00e50733          	add	a4,a0,a4
    800066ec:	00b70023          	sb	a1,0(a4)
    800066f0:	00b7871b          	addiw	a4,a5,11
    800066f4:	02c77663          	bgeu	a4,a2,80006720 <__memset+0x1c8>
    800066f8:	00e50733          	add	a4,a0,a4
    800066fc:	00b70023          	sb	a1,0(a4)
    80006700:	00c7871b          	addiw	a4,a5,12
    80006704:	00c77e63          	bgeu	a4,a2,80006720 <__memset+0x1c8>
    80006708:	00e50733          	add	a4,a0,a4
    8000670c:	00b70023          	sb	a1,0(a4)
    80006710:	00d7879b          	addiw	a5,a5,13
    80006714:	00c7f663          	bgeu	a5,a2,80006720 <__memset+0x1c8>
    80006718:	00f507b3          	add	a5,a0,a5
    8000671c:	00b78023          	sb	a1,0(a5)
    80006720:	00813403          	ld	s0,8(sp)
    80006724:	01010113          	addi	sp,sp,16
    80006728:	00008067          	ret
    8000672c:	00b00693          	li	a3,11
    80006730:	e55ff06f          	j	80006584 <__memset+0x2c>
    80006734:	00300e93          	li	t4,3
    80006738:	ea5ff06f          	j	800065dc <__memset+0x84>
    8000673c:	00100e93          	li	t4,1
    80006740:	e9dff06f          	j	800065dc <__memset+0x84>
    80006744:	00000e93          	li	t4,0
    80006748:	e95ff06f          	j	800065dc <__memset+0x84>
    8000674c:	00000793          	li	a5,0
    80006750:	ef9ff06f          	j	80006648 <__memset+0xf0>
    80006754:	00200e93          	li	t4,2
    80006758:	e85ff06f          	j	800065dc <__memset+0x84>
    8000675c:	00400e93          	li	t4,4
    80006760:	e7dff06f          	j	800065dc <__memset+0x84>
    80006764:	00500e93          	li	t4,5
    80006768:	e75ff06f          	j	800065dc <__memset+0x84>
    8000676c:	00600e93          	li	t4,6
    80006770:	e6dff06f          	j	800065dc <__memset+0x84>

0000000080006774 <__memmove>:
    80006774:	ff010113          	addi	sp,sp,-16
    80006778:	00813423          	sd	s0,8(sp)
    8000677c:	01010413          	addi	s0,sp,16
    80006780:	0e060863          	beqz	a2,80006870 <__memmove+0xfc>
    80006784:	fff6069b          	addiw	a3,a2,-1
    80006788:	0006881b          	sext.w	a6,a3
    8000678c:	0ea5e863          	bltu	a1,a0,8000687c <__memmove+0x108>
    80006790:	00758713          	addi	a4,a1,7
    80006794:	00a5e7b3          	or	a5,a1,a0
    80006798:	40a70733          	sub	a4,a4,a0
    8000679c:	0077f793          	andi	a5,a5,7
    800067a0:	00f73713          	sltiu	a4,a4,15
    800067a4:	00174713          	xori	a4,a4,1
    800067a8:	0017b793          	seqz	a5,a5
    800067ac:	00e7f7b3          	and	a5,a5,a4
    800067b0:	10078863          	beqz	a5,800068c0 <__memmove+0x14c>
    800067b4:	00900793          	li	a5,9
    800067b8:	1107f463          	bgeu	a5,a6,800068c0 <__memmove+0x14c>
    800067bc:	0036581b          	srliw	a6,a2,0x3
    800067c0:	fff8081b          	addiw	a6,a6,-1
    800067c4:	02081813          	slli	a6,a6,0x20
    800067c8:	01d85893          	srli	a7,a6,0x1d
    800067cc:	00858813          	addi	a6,a1,8
    800067d0:	00058793          	mv	a5,a1
    800067d4:	00050713          	mv	a4,a0
    800067d8:	01088833          	add	a6,a7,a6
    800067dc:	0007b883          	ld	a7,0(a5)
    800067e0:	00878793          	addi	a5,a5,8
    800067e4:	00870713          	addi	a4,a4,8
    800067e8:	ff173c23          	sd	a7,-8(a4)
    800067ec:	ff0798e3          	bne	a5,a6,800067dc <__memmove+0x68>
    800067f0:	ff867713          	andi	a4,a2,-8
    800067f4:	02071793          	slli	a5,a4,0x20
    800067f8:	0207d793          	srli	a5,a5,0x20
    800067fc:	00f585b3          	add	a1,a1,a5
    80006800:	40e686bb          	subw	a3,a3,a4
    80006804:	00f507b3          	add	a5,a0,a5
    80006808:	06e60463          	beq	a2,a4,80006870 <__memmove+0xfc>
    8000680c:	0005c703          	lbu	a4,0(a1)
    80006810:	00e78023          	sb	a4,0(a5)
    80006814:	04068e63          	beqz	a3,80006870 <__memmove+0xfc>
    80006818:	0015c603          	lbu	a2,1(a1)
    8000681c:	00100713          	li	a4,1
    80006820:	00c780a3          	sb	a2,1(a5)
    80006824:	04e68663          	beq	a3,a4,80006870 <__memmove+0xfc>
    80006828:	0025c603          	lbu	a2,2(a1)
    8000682c:	00200713          	li	a4,2
    80006830:	00c78123          	sb	a2,2(a5)
    80006834:	02e68e63          	beq	a3,a4,80006870 <__memmove+0xfc>
    80006838:	0035c603          	lbu	a2,3(a1)
    8000683c:	00300713          	li	a4,3
    80006840:	00c781a3          	sb	a2,3(a5)
    80006844:	02e68663          	beq	a3,a4,80006870 <__memmove+0xfc>
    80006848:	0045c603          	lbu	a2,4(a1)
    8000684c:	00400713          	li	a4,4
    80006850:	00c78223          	sb	a2,4(a5)
    80006854:	00e68e63          	beq	a3,a4,80006870 <__memmove+0xfc>
    80006858:	0055c603          	lbu	a2,5(a1)
    8000685c:	00500713          	li	a4,5
    80006860:	00c782a3          	sb	a2,5(a5)
    80006864:	00e68663          	beq	a3,a4,80006870 <__memmove+0xfc>
    80006868:	0065c703          	lbu	a4,6(a1)
    8000686c:	00e78323          	sb	a4,6(a5)
    80006870:	00813403          	ld	s0,8(sp)
    80006874:	01010113          	addi	sp,sp,16
    80006878:	00008067          	ret
    8000687c:	02061713          	slli	a4,a2,0x20
    80006880:	02075713          	srli	a4,a4,0x20
    80006884:	00e587b3          	add	a5,a1,a4
    80006888:	f0f574e3          	bgeu	a0,a5,80006790 <__memmove+0x1c>
    8000688c:	02069613          	slli	a2,a3,0x20
    80006890:	02065613          	srli	a2,a2,0x20
    80006894:	fff64613          	not	a2,a2
    80006898:	00e50733          	add	a4,a0,a4
    8000689c:	00c78633          	add	a2,a5,a2
    800068a0:	fff7c683          	lbu	a3,-1(a5)
    800068a4:	fff78793          	addi	a5,a5,-1
    800068a8:	fff70713          	addi	a4,a4,-1
    800068ac:	00d70023          	sb	a3,0(a4)
    800068b0:	fec798e3          	bne	a5,a2,800068a0 <__memmove+0x12c>
    800068b4:	00813403          	ld	s0,8(sp)
    800068b8:	01010113          	addi	sp,sp,16
    800068bc:	00008067          	ret
    800068c0:	02069713          	slli	a4,a3,0x20
    800068c4:	02075713          	srli	a4,a4,0x20
    800068c8:	00170713          	addi	a4,a4,1
    800068cc:	00e50733          	add	a4,a0,a4
    800068d0:	00050793          	mv	a5,a0
    800068d4:	0005c683          	lbu	a3,0(a1)
    800068d8:	00178793          	addi	a5,a5,1
    800068dc:	00158593          	addi	a1,a1,1
    800068e0:	fed78fa3          	sb	a3,-1(a5)
    800068e4:	fee798e3          	bne	a5,a4,800068d4 <__memmove+0x160>
    800068e8:	f89ff06f          	j	80006870 <__memmove+0xfc>
	...
